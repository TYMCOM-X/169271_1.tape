.TITLE		KERMIT-32 Messages
.FACILITY	KERMIT,1/PREFIX=KER_
.IDENT		'Version 1.0.0'

!
! General messages and errors
!

NORMAL		<Normal return>/INFORMATION
INTERNALERR	<Internal KERMIT error>/ERROR

!
! Command scanner error messages and warnings.
!

CMDERR		<Command error at or near '!AS'>/FAO=1/ERROR
ILLEOL		<Illegal end of line character>/ERROR
ILLPKTLEN	<Illegal packet length>/ERROR
ILLPADCHR	<Illegal padding character>/ERROR
ILLNPAD		<Illegal number of padding characters>/ERROR
LINTOOLNG	<Command line too long>/ERROR

!
! File processing error messages and warnings.
!

EOF		<End of file reached>/INFORMATION
RMS32		<!AS for !AS>/FAO=2/ERROR
NOMORFILES	<No more files>/INFORMATION
ILLFILTYP	<Illegal file type>/ERROR
REC_TOO_BIG	<Record to big for KERMIT's internal buffers>/ERROR

!
! Message level processing error messages and warnings.
!

ERRMSG		<Received an E (error) packet>/ERROR
CHKSUMERR	<Checksum error>/ERROR
SNDERR		<Send failure>/ERROR
RETRIES		<Too many retries>/ERROR
EXIT		<Server requested exit>/INFORMATION
UNIMPLGEN	<Unimplemented generic command>/ERROR
UNISRV		<Unimplemented server command>/ERROR
PROTOERR	<Protocol error>/ERROR
ZEROLENMSG	<Zero length message>/ERROR

!
! Terminal level processing messages
!

LINTERM		<Line specified is not a terminal>/ERROR
TIMEOUT		<Timed out waiting to receive/send packet>/WARNING
ABORTED		<Transfer aborted by user interrupt>/ERROR
RECERR		<Receive error - !AS>/ERROR/FAO=1
CON_SAME	<Cannot CONNECT 'TT:'  to  'TT:'>/ERROR

.END
  