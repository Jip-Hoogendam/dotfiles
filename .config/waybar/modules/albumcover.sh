#!/bin/bash

url="/tmp/cover.png"
CSS="/tmp/cover.css"

write_css() {
  local ts=$(date +%s) #timestamp
  cat >$CSS <<EOF
@keyframes coverSpin{
  to {background-position: 0% 100%;}
}

#custom-cover-art{
  min-width: 48px;
  min-height: 48px;
  background: url("file://$url?ts=$ts");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 0px 0px;
  animation: coverSpin 3.5s steps(119) infinite;

}
EOF
}

write_css

echo -e "{\"text\":\"\", \"class\":\"update\"}"
