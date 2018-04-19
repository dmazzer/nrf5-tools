#!/bin/bash

(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683232245 -RTTTelnetport 19021') &
(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683358487 -RTTTelnetport 19022') &
(terminator -e 'JLinkExe -device NRF52840_XXAA -if SWD -speed 12000 -autoconnect 1 -SelectEmuBySN 683111702 -RTTTelnetport 19023') &

(terminator -T 'Client' -e 'JLinkRTTClient -RTTTelnetport 19021') &
(terminator -T 'Server 1' -e 'JLinkRTTClient -RTTTelnetport 19022') &
(terminator -T 'Server 2' -e 'JLinkRTTClient -RTTTelnetport 19023') &




