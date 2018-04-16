#!/bin/bash

(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683232245 -RTTTelnetport 19021') &
(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683358487 -RTTTelnetport 19022') &

(terminator -e 'JLinkRTTClient -RTTTelnetport 19021') &
(terminator -e 'JLinkRTTClient -RTTTelnetport 19022') &




