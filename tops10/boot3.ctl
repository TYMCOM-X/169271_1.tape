;[BOOT.CTL]
;
; This control file will assemble BOOT for a KL10 and KS10, and
; optionally load various microcodes.
;
; Source files:
;	BOOT.MAC
;
; Input files:
;	DXMCA.A8	Optional DX10/TX01 microcode
;	DXMCA.ADX	Optional DX20/TX02 microcode
;	DXMCD.ADX	Optional DX20/RP20 microcode
;	KLPCOD.ULD	Optional KLIPA/CI microcode
;	KNICOD.ULD	Optional KLNI/NI microcode
;
; Output files:
;	BOOT.REL	May be deleted
;	BTONCE.EXE	Once-only program to initialize BOOT
;	BOOT.EXE	Bootstrap for loading with SMFILE
;	BOOT.EXB	Bootstrap converted for RSX-20F
;	BTDDT.EXE	FILDDT for examining bootstrap in the monitor
.COMPILE BOOT.MAC
.R LINK
*BTONCE/SAVE = BOOT/LOCALS/SYMSEG:LOW, REL:EDDT /GO
.RUN BTONCE
*N	;WRITE BINARY FILES
*N	;EDDT
*N	;DX10/TX01
*Y	;DX20/TX02
*Y	;DX20/RP20
*Y	;KLIPA/CI
*Y	;KLNI/NI
.RUN BTONCE
*Y	;WRITE BINARY FILES
*N	;DX10/TX01
*N	;DX20/TX02
*N	;DX20/RP20
*Y	;KLIPA/CI
*Y	;KLNI/NI
.R FILDDT
*BTONCE/S
*/M
=111U
=1U
=-BTSVEC8U
=^Z
.SAVE BTDDT
   