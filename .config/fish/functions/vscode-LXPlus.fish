function vscode-LXPlus --wraps='ssh -fNMXY lxplus' --wraps='ssh -fNMXY LXPlus' --wraps='ssh -fNMXY LXPlus;code;exit' --description 'alias vscode-LXPlus ssh -fNMXY LXPlus;code;exit'
    ssh -fNMXY LXPlus;code;exit $argv
end
