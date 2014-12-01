
#
# Run ssh-agent.
#

SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
eval `$SSHAGENT $SSHAGENTARGS`
trap "kill $SSH_AGENT_PID" 0
fi

#
# Run tmux, but only if session is remote.
#

if [ -n "$SSH_CLIENT" ];
then
  if which tmux >/dev/null 2>&1; then
    # If not inside a tmux session, and if no session is started, start a new session.
    test -z "$TMUX" && (tmux attach || tmux new-session)
  fi
fi
