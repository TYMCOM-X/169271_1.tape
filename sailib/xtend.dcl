
forward external integer procedure CNVDATE( integer date, !from, !to );

forward external procedure CNVDTIM( reference integer date,time
;	integer !from,!to );

forward external record!pointer(any!class) procedure INIUFR( string name
,		exten; integer channel,bits( 0 ),size( 102 ) );

forward external boolean procedure NXTUFR( integer array data
;	record!pointer(any!class) record );

forward external procedure GENARY( Integer array args; integer loc );

forward external string procedure LOKDUL( integer ppn );

forward external boolean procedure RDDATE( reference integer date
,	ovscan; integer fstscn; reference string str );

forward external string procedure STDATE( integer date,flag );

forward external boolean procedure RDTIME( reference integer time
,	ovscan; integer fstscn; reference string str );

forward external integer procedure SCANU( reference string arg );

forward external boolean procedure SCANSS( boolean b );

forward external boolean procedure SCANSN( boolean b );

forward external record!pointer(any!class) procedure RPGINI( string name );

forward external boolean procedure RPGNXT( reference string s
;	record!pointer(any!class) r );

forward external integer procedure STRSRC( string array names
;	string look; reference boolean exact );

forward external integer recursive procedure redUfd(
				boolean procedure callIt;
				string fileSpec, Flags );
define !ufd!trouble!=-3, !bad!file!name!=-2, !illegal!option!=-1,
	!no!more!=0, !requested!stop!=1;

COMMENT
	Return value is among (more may be added later):
	    !ufd!trouble!, !bad!file!name!, !illegal!option!,
	    !no!more!, !requested!stop!
	Callit is: boolean procedure callit(integer array passedArray)
			begin ... return( wantToStopNow ) end
	FileSpec may include device name.
	Flags is a sequence of the following characters:
"#"  pad out the names which end in "*" with "#"
"'"  octal specification of (other) CHUFD bits follows 
	[warning: make this one LAST]
"*"  substitute "*" for unspecified name and/or extension
"+"  substitute "*" for unspecified name 
"X"  exact match only
"B"  size in blocks
"L"  license word
"C"  creation time (TYMCOM-X format, GMT)
"D"  creation time (DEC format, system local)
"S"  status bits
	passedArray[-4]_ cvsix(userName)
	passedArray[-3]_ cvsix(userName[7 to inf])
	passedArray[-2]_ cvsix(device)
	passedArray[-1]_ PPN
	passedArray[0]_  cvsix(file Name)
	passedArray[1]_  cvsix(file Extension)
	passedArray[2?]_  first(blocksize, License, Creation, Status)
	passedArray[3?]_  second(blocksize, License, Creation, Status)
	passedArray[4?]_  third(blocksize, License, Creation, Status)
	passedArray[5?]_  fourth(blocksize, License, Creation, Status)
;
COMMENT Sample use: ;
IFCR FALSE THENC
boolean procedure myproc(integer array fileData); Comment [-4:3];
begin
print( cv6str(fileData[0]), ".", cv6str(fileData[1]), " L:", 
	cvos(fileData[2]), ", Prot:", cvos(fileData[3] land '777), 
	'15&'12 );
return(false);
end;

string s;
print("Files to check: ");
while length(s_inchwl)
   do begin redUfd( myproc, s, "#*LS" ); print("More: "); end;
end;
ENDC

    