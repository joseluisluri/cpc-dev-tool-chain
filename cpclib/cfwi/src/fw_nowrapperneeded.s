	;; This file gathers calls for which no actual wrapper (no additional code) is needed.
	;; This is because the firmware behavior already matches what SDCC expects. Just defining a symbol is enough.

	;; void function(void)

	_fw_gra_initialise == 0xBBBA
	_fw_gra_reset == 0xBBBD
	_fw_gra_clear_window == 0xBBDB

	_fw_cas_initialise == 0xBC65
	_fw_cas_in_abandon == 0xBC7D
	_fw_cas_return == 0xBC86
	_fw_cas_out_abandon == 0xBC92

	_fw_kl_scan_needed == 0xB92A

	_fw_km_initialise == 0xBB00
	_fw_km_reset == 0xBB03
	_fw_km_disarm_break == 0xBB48
	_fw_km_break_event == 0xBB4B

	_fw_txt_initialise == 0xBB4E
	_fw_txt_reset == 0xBB51
	_fw_txt_vdu_enable == 0xBB54
	_fw_txt_vdu_disable == 0xBB57
	_fw_txt_cur_enable == 0xBB7B
	_fw_txt_cur_disable == 0xBB7E
	_fw_txt_cur_on == 0xBB81
	_fw_txt_cur_off == 0xBB84
	_fw_txt_place_cursor == 0xBB8A
	_fw_txt_remove_cursor == 0xBB8D

	_fw_mc_wait_flyback == 0xBD19
	_fw_mc_reset_printer == 0xBD28

	_fw_jre_jump_restore == 0xBD37

	_fw_scr_initialise == 0xBBFF
	_fw_scr_reset == 0xBC02
	_fw_scr_clear == 0xBC14

	;; 664 and 6128 only
	_fw_km_flush == 0xBD3D
	_fw_gra_default == 0xBD43

	;; The firmware indirections
	_fw_txt_draw_cursor == 0xBDCD
	_fw_txt_undraw_cursor == 0xBDD0
	_fw_scr_mode_clear == 0xBDEB

	_fw_kl_sync_reset == 0xBCF5
	_fw_kl_event_disable == 0xBD04
	_fw_kl_event_enable == 0xBD07
	_fw_sound_reset == 0xBCA7
	_fw_sound_continue == 0xBCB9
	
	;; void function(void) low kernel jumpblock

	_fw_lkjb_reset_entry == 0x0000
	_fw_lkjb_low_jump == 0x0008
	_fw_lkjb_side_call == 0x0010
	_fw_lkjb_far_call == 0x0018
	_fw_lkjb_firm_jump == 0x0028
	_fw_lkjb_interrupt_entry == 0x0038
	_fw_lkjb_exit_interrupt == 0x003B

	;; long int function (void);

	_fw_kl_time_please == 0xBD0D
