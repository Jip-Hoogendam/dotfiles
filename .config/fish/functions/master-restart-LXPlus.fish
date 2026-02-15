function master-restart-LXPlus --wraps='ssh -S lxplus.cern.ch -O exit lxplus.cern.ch;ssh -fNM jhoogend@lxplus.cern.ch' --wraps='ssh -S /run/user/1000/jhoogend@lxplus.cern.ch:22 -O exit lxplus.cern.ch;ssh -fNM jhoogend@lxplus.cern.ch' --wraps='ssh -S /run/user/1000/jhoogend@lxplus.cern.ch:22 -O exit lxplus.cern.ch;master-LXPlus' --description 'alias master-restart-LXPlus ssh -S /run/user/1000/jhoogend@lxplus.cern.ch:22 -O exit lxplus.cern.ch;master-LXPlus'
  ssh -S /run/user/1000/jhoogend@lxplus.cern.ch:22 -O exit lxplus.cern.ch;master-LXPlus $argv
        
end
