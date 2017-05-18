#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
    export CATALINA_HOME="~/Applications/tomcat"
    export ANDROID_HOME="/usr/local/Cellar/android-sdk/24.1.2/"
    export PATH=$ANDROID_HOME/platform-tools:$PATH
    export PATH=$ANDROID_HOME/tools:$PATH
    export GRADLE_USER_HOME='/Users/john.anderson/.gradle'
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_73)

#   Set Default Editor currently using vim
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/vi
#   ---------------------------
#    Aliases

alias git-fucked-docker='docker stop $(docker ps -a) && docker rm $(docker ps -a -q)'
alias fuk-off-java='killall -9 java'                                              # fuk-off-java  Tells java to fuck right off
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"                     # myip:         Public facing IP Address
alias netCons='lsof -i'                                                           # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'                                          # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'                                           # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'                                 # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'                                 # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'                                            # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'                                            # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'                                      # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                                                # showBlocked:  All ipfw rules inc/ blocked IPs
alias reloadDNS="sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist && sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist"
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/Users/john.anderson/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/john.anderson/.sdkman/bin/sdkman-init.sh"
