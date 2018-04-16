flash_light_switch_client: 
	@echo Flashing: light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/light_switch/client/light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52
	
flash_light_switch_server: 
	@echo Flashing: light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/light_switch/server/light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52

flash_inatel_light_switch_client: 
	@echo Flashing: inatel_light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/inatel_light_switch/client/inatel_light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52
	
flash_inatel_light_switch_server: 
	@echo Flashing: inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/inatel_light_switch/server/inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52

flash_pb_serial_server: 
	@echo Flashing: pb_remote_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/pb_remote/server/pb_remote_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52

flash_pb_serial_client: 
	@echo Flashing: pb_remote_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/pb_remote/client/pb_remote_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52

flash_serial: 
	@echo Flashing: serial_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase --program ./examples/serial/serial_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52
	
flash_softdevice: 
	@echo Flashing: s140_nrf52840_5.0.0-3.alpha_softdevice.hex
	nrfjprog -f nrf52 --chiperase --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v1.0.1_src/external/softdevice/s140_5.0.0-3.alpha/s140_nrf52840_5.0.0-3.alpha_softdevice.hex
	nrfjprog --reset -f nrf52
	
flash_inatel_env: all
	@echo Flashing Client: s140_nrf52840_5.0.0-3.alpha_softdevice.hex
	nrfjprog -f nrf52 --chiperase -s 683232245 --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v1.0.1_src/external/softdevice/s140_5.0.0-3.alpha/s140_nrf52840_5.0.0-3.alpha_softdevice.hex
	nrfjprog --reset -f nrf52 -s 683232245

	@echo Flashing Client: inatel_light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase -s 683232245 --program ./examples/inatel_light_switch/client/inatel_light_switch_client_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52 -s 683232245

	@echo Flashing Server 1: s140_nrf52840_5.0.0-3.alpha_softdevice.hex
	nrfjprog -f nrf52 --chiperase -s 683358487 --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v1.0.1_src/external/softdevice/s140_5.0.0-3.alpha/s140_nrf52840_5.0.0-3.alpha_softdevice.hex
	nrfjprog --reset -f nrf52 -s 683358487

	@echo Flashing Server 1: inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase -s 683358487 --program ./examples/inatel_light_switch/server/inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52 -s 683358487

	@echo Flashing Server 2: s140_nrf52840_5.0.0-3.alpha_softdevice.hex
	nrfjprog -f nrf52 --chiperase -s 683111702 --program /home/mazzer/work/nordic/sdk/nrf5_SDK_for_Mesh_v1.0.1_src/external/softdevice/s140_5.0.0-3.alpha/s140_nrf52840_5.0.0-3.alpha_softdevice.hex
	nrfjprog --reset -f nrf52 -s 683111702

	@echo Flashing Server 2: inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog -f nrf52 --sectorerase -s 683111702 --program ./examples/inatel_light_switch/server/inatel_light_switch_server_nrf52840_xxAA_s140_5.0.0-3.alpha.hex
	nrfjprog --reset -f nrf52 -s 683111702

