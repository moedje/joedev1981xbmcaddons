########################################################
#                Xhamster VideoCatcher                 #
########################################################
url=%s
########################################################
target=srv': '([^']+)',\s+'file': '([^']+flv)',
actions=join(/key=, match, group2)
quality=standard
########################################################
target=file': '([^']+.flv[^']+)'
actions=unquote(match)
quality=standard
########################################################
target=file="([^"]+mp4)"
extension=mp4
quality=standard
########################################################
# Redirects from other sites
########################################################
target=srv=([^&]+)&file=([^&]+flv)
actions=join(/key=, match, group2)|unquote(match)
quality=standard
########################################################
