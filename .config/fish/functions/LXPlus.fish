function LXPlus --wraps='ssh lxplus.cern.ch' --wraps='ssh jhoogend@lxplus.cern.ch' --wraps='ssh -X jhoogend@lxplus.cern.ch' --wraps='ssh -XY jhoogend@lxplus.cern.ch' --description 'alias LXPlus ssh -XY jhoogend@lxplus.cern.ch'
  ssh -XY jhoogend@lxplus.cern.ch $argv
        
end
