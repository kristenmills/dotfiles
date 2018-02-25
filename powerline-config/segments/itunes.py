from powerline.segments.common.players import PlayerSegment, _common_args, _convert_state, _convert_seconds
from powerline.lib.shell import asrun
from powerline.segments import with_docstring


class iTunesPlayerSegment(PlayerSegment):
    def get_player_status(self, pl):
        status_delimiter = '-~`/='
        ascript = '''
            tell application "System Events"
                set process_list to (name of every process)
            end tell

            if process_list contains "iTunes" then
                tell application "iTunes"
                    if player state is playing then
                        set t_title to name of current track
                        set t_artist to artist of current track
                        set t_album to album of current track
                        set t_duration to duration of current track
                        set t_elapsed to player position
                        set t_state to player state
                        return t_title & "{0}" & t_artist & "{0}" & t_album & "{0}" & t_elapsed & "{0}" & t_duration & "{0}" & t_state
                    end if
                end tell
            end if
        '''.format(status_delimiter)
        now_playing = asrun(pl, ascript)
        if not now_playing:
            return
        now_playing = now_playing.split(status_delimiter)
        if len(now_playing) != 6:
            return
        title, artist, album = now_playing[0], now_playing[1], now_playing[2]
        state = _convert_state(now_playing[5])
        total = _convert_seconds(now_playing[4])
        elapsed = _convert_seconds(float(now_playing[4]) - float(now_playing[4]))
        return {
            'title': title,
            'artist': artist,
            'album': album,
            'total': total,
            'elapsed': elapsed,
            'state': state
        }

itunes = with_docstring(iTunesPlayerSegment(),
    ('''Return iTunes now playing information.

        Requires ``osascript``.

        {0}
    ''').format(_common_args.format('itunes')))
