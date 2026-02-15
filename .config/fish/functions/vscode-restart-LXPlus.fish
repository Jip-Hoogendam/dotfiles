function vscode-restart-LXPlus --wraps='ssh -S /run/user/1000/jhoogend@LXPlus:22 -O exit LXPlus;vscode-LXPlus' --wraps='ssh -S /run/user/1000/jhoogend@lxplus:22 -O exit LXPlus;vscode-LXPlus' --description 'alias vscode-restart-LXPlus ssh -S /run/user/1000/jhoogend@lxplus:22 -O exit LXPlus;vscode-LXPlus'
  ssh -S /run/user/1000/jhoogend@lxplus:22 -O exit LXPlus;vscode-LXPlus $argv
        
end
