File 1)	DSKB:KERUNV.MAC[14,10,KERMIT,TOPS10]    	created: 1218 25-May-84
File 2)	DSKB:KERUNV.MAC[14,10,KERMIT,TOPS10,CSM]	created: 1721 05-Jun-84

1)1		KERVER==2			; Major version number
1)		KERMIN==0			; Minor version number
****
2)1	;[CSM] According to KERV3.MEM, this is KERMIT version 3(123)
2)		KERVER==3		;[CSM]	; Major version number
2)		KERMIN==0			; Minor version number
**************
1)2		SUBTTL	Table of Contents
****
2)1	;[CSM] Changed some defaults
2)		D$ESCAP==.CHCBS	;[CSM] Control-Backslash to match documentation
2)		D$FTP==$FBS7	;[CSM] Default byte size=7 (because of SED)
2)	;[CSM] Made all symbols suppressed to DDT
2)2		SUBTTL	Table of Contents
**************
1)4	ND	D$ESCAP,.CHCNY			; Use control back slash for escape character
****
2)4	;[CSM] This definition does not match documentation (or its own comment)
2)	ND	D$ESCAP,.CHCNY			; Use control back slash for escape character
**************
1)5	; The following are the terminal information blocks.  These blocks are used
****
2)5	;[CSM] Fix the diagram below
2)	;
2)	; The following are the terminal information blocks.  These blocks are used
**************
1)5	;; !=========================================================================!
1)	TOPS10<
****
2)5	;; !-------------------------------------------------------------------------!
2)	;; !                          Status of TTY PAGE bit                         !
2)	;; !=========================================================================!
2)	;
2)	;[CSM] Put $TTPAG in comments above
2)	TOPS10<
**************
1)16	DEFINE	KER(TYPE,VALUE,TEXT)<TYPE=VALUE>
1)		KERRORS
****
2)16	DEFINE	KER(TYPE,VALUE,TEXT)<TYPE==VALUE> ;[CSM] Make suppressed to DDT
2)		KERRORS
**************
    