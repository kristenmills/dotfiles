from powerline.segments.common.players import PlayerSegment, _common_args, _convert_state, _convert_seconds, STATE_SYMBOLS
from powerline.lib.shell import asrun
from powerline.segments import with_docstring


class SpotifyAppleScriptPlayerSegment(PlayerSegment):
    def __call__(self, format='{state_symbol} {artist} - {title} ({elapsed}/{total})', state_symbols=STATE_SYMBOLS, **kwargs):
            stats = {
                'state': 'fallback',
                'album': None,
                'artist': None,
                'title': None,
                'elapsed': None,
                'total': None,
            }
            func_stats = self.get_player_status(**kwargs)
            if not func_stats:
                return None
            stats.update(func_stats)
            stats['state_symbol'] = state_symbols.get(stats['state'])
            return [{
                'contents': format.format(**stats),
                'highlight_groups': ['player_' + (stats['state'] or 'fallback'), 'player'],
            }]
    def get_player_status(self, pl):
        status_delimiter = '-~`/='
        ascript = '''
                tell application "System Events"
                        set process_list to (name of every process)
                end tell
                if process_list contains "Spotify" then
                        tell application "Spotify"
                                if player state is playing or player state is paused then
                                        set track_name to name of current track
                                        set artist_name to artist of current track
                                        set album_name to album of current track
                                        set track_length to duration of current track
                                        set now_playing to "" & player state & "{0}" & album_name & "{0}" & artist_name & "{0}" & track_name & "{0}" & track_length & "{0}" & player position
                                        return now_playing
                                else
                                        return player state
                                end if
                        end tell
                else
                        return "stopped"
                end if
        '''.format(status_delimiter)

        spotify = asrun(pl, ascript)
        if not asrun:
            return None

        spotify_status = spotify.split(status_delimiter)
        state = _convert_state(spotify_status[0])
        if state == 'stop':
            return None
        return {
                'state': state,
                'album': spotify_status[1],
                'artist': spotify_status[2],
                'title': spotify_status[3],
                'total': _convert_seconds(float(spotify_status[4])/1000),
                'elapsed': _convert_seconds(float(spotify_status[5])),
                }


spotify = with_docstring(SpotifyAppleScriptPlayerSegment(),
    ('''Return spotify player information

        Requires ``osascript`` available in $PATH.

        {0}
    ''').format(_common_args.format('spotify_apple_script')))
