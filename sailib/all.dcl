
forward external 	 procedure !WTEND( integer chan );
forward external integer procedure APPEND( integer chan; string file;
					reference integer Flag );
forward external integer procedure SOUNDX( string s );
forward external integer procedure SAVLOW( string outfile );
forward external string  procedure ASZSTR( integer bytPtr );
forward external integer procedure BYPOK(  integer byte!spec );
forward external integer procedure BYTDIF( integer bytPtr, updatedPtr );
forward external string  procedure CONSTR( integer bytPtr, count );
forward external string  procedure DYNSTR( integer bytPtr, count );
forward external integer procedure ENDCHR( string s );
forward external integer procedure ENDLOP( reference string s );
forward external	 procedure STRACH( integer concat, charApp );
forward external	 procedure STRADD( integer concat; string app );
forward external string  procedure STRCLS( reference integer concat );
forward external integer procedure STRLEN( integer concat );
forward external integer procedure STROPN( integer buffer!size );
forward external string  procedure STRPEK( integer concat );
forward external integer procedure STRSTF( integer bytPtr; string str;
						boolean nonull(false) );
forward external integer procedure SUBEQU( string target, source );
forward external string  procedure UPDSTR( integer bytPtr, updatedPtr );
forward external boolean procedure !PORTX( boolean enablePorts );
forward external integer procedure READBR( integer table;
				reference string breaks, omits, modes );
forward external string  procedure RVSCAN( reference string source;
				integer table; reference integer break);
forward external integer procedure RCHPTR( integer chan );
forward external	 procedure SCHPTR( integer chan, index );
forward external integer procedure CNVDATE( integer date, !from, !to );
forward external	 procedure CNVDTIM( reference integer date,time
;						integer !from,!to );
forward external	 procedure GENARY( Integer array args; integer loc );
forward external string	 procedure LOKDUL( integer ppn );
forward external boolean procedure RDDATE( reference integer date
,			ovscan; integer fstscn; reference string str );
forward external string  procedure STDATE( integer date,flag );
forward external boolean procedure RDTIME( reference integer time
,			ovscan; integer fstscn; reference string str );
forward external integer procedure SCANU( reference string arg );
forward external boolean procedure SCANSS( boolean b );
forward external boolean procedure SCANSN( boolean b );
forward external integer procedure STRSRC( string array names
;				string look; reference boolean exact );
forward external integer procedure FRMOPV( integer frame, arg, opcode );
forward external integer procedure FRMOPR( integer frame; 
				reference integer arg; integer opcode );
forward external integer procedure REDUFD( boolean procedure callIt;
					string fileSpec, Flags );
forward external integer procedure ALLOW( integer low, high );
forward external integer procedure OPFILE( string FullName, Options;
					integer channel );
forward external real	   procedure SETXP( real x; integer exp );
forward external real	   procedure EPSLN( real x );
forward external integer   procedure INTXP( real x );
forward external long real procedure DSETXP( long real x; integer exp );
forward external long real procedure DEPSLN( long real x );
forward external integer   procedure DINTXP( long real x );
forward external Real	   procedure FINT( Real val );
forward external Real	   procedure FRACT( Real val );
forward external Real	   procedure FLOOR( Real val );
forward external Real	   procedure CEIL( Real val );
forward external long Real procedure DFINT( long Real val );
forward external long Real procedure DFRACT( long Real val );
forward external long Real procedure DFLOOR( long Real val );
forward external long Real procedure DCEIL( long Real val );
forward external integer   procedure DFIX( long Real val );
forward external long Real procedure DFLOAT( integer val );
forward external long Real procedure BFLOAT( integer highVal, lowVal );
forward external long real procedure DSIN( long real x );
forward external long real procedure DCOS( long real x );
forward external long real procedure DTAN( long real x );
forward external long Real procedure DRAN;

COMMENT now the record classes needed for the declarations;

forward external record!class MAP1( integer array a; integer ui; 
					record!pointer(any!class) up );
forward external record!class MAP2( integer array a; integer ui; 
					record!pointer(any!class) up );
forward external record!class FSM( integer state0, state );

COMMENT then the actual declarations;

forward external record!pointer(any!class) procedure RPGINI( string name );
forward external boolean procedure RPGNXT( reference string s
;					record!pointer(any!class) r );
forward external record!pointer(map1) procedure MAP1CR
	( integer lower!bound, upper!bound, arr!offset(0) );
forward external record!pointer(map2) procedure MAP2CR
	( integer low!bd1, upp!bd1, low!bd2, upp!bd2, arr!offset(0) );
forward external integer procedure GETMAP( 
				record!pointer(map1,map2) holder;
				integer option, channel, pageinfile );
forward external record!pointer(fsm) procedure MAKFSM( 
			integer array equivs;
			reference record!pointer(any!class) find );
forward external record!pointer(any!class) procedure USEFSM(
			record!pointer(fsm) state;
			reference integer count, bytepointer );
forward external record!pointer(any!class) procedure SOSFSM(
			record!pointer(fsm) state;
			reference integer count, bytepointer );
forward external record!pointer(any!class) procedure USEFST(
			record!pointer(fsm) state;
			reference string datastr );
forward external record!pointer(fsm) procedure MKSFSM( 
			integer array equivs;
			reference set targetSet; boolean usePnames );
forward external set procedure USSFSM( record!pointer(fsm) state;
			reference integer count, bytepointer );
forward external set procedure USSFST( record!pointer(fsm) state;
			reference string datastr );
forward external record!pointer(any!class) procedure INIUFR( string name
,		exten; integer channel, bits(0), size(102) );
forward external boolean procedure NXTUFR( integer array data
;	record!pointer(any!class) record );
COMMENT now a few macros are defined in order to allow special values;

require "{}()" delimiters;

 COMMENT frmop opcodes: defines such as !FOJMP=0; redefine $op!#=0; 
  FORLC $opc=( jmp,cfm,rva,wva,saa,hlt,rpc,rep,vrm,vcl,cfh,dfh,clr,rsi,
    rar,rer,smf,chr,sva,hst,gft,con,gin,vch,car,cer,get,run,sav,ssa)
   DOC { define !FO}&{$OPC=$op!#; redefine $op!#=$op!#+1; } ENDC

 COMMENT frmop error codes: defines such as FENOH!=0; redefine $op!#=1; 
  FORLC $opc=( noh,bdi,nrt,bdf,nlc,und,nch,clp,bar,npr,bfd,bdh,bfn,adb,
    ioe,alr,alh,csj,fhe,fhu,nfh,bcn,btn,bht,cch,bsv,cii,ccf,cfj,rem)
   DOC { define FE}&{$OPC}&{!=$op!#; redefine $op!#=$op!#+1; } ENDC

 COMMENT redufd return values: ;
  DEFINE !ufd!trouble!=-3, !bad!file!name!=-2, !illegal!option!=-1,
	 !no!more!=0, !requested!stop!=1;

require unstack!delimiters;
   