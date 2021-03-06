program puzzle(input,output)

DEFINE UPTO="STEP 1 UNTIL", DOWNTO="STEP -1 UNTIL", CRLF="('15&'12)";

LET	ANDTHEN=AND;

DEFINE !="COMMENT";

IFCR TRUE THENC
let	vector=array, matrix=array, 
	function=procedure, !procedure=procedure; 
ELSEC
define	VECTOR="safe ARRAY", MATRIX="safe ARRAY",
	FUNCTION="simple PROCEDURE", !PROCEDURE="simple PROCEDURE";
ENDC

simple integer procedure readtime; call(0,"MSTIME");

integer savedTime;

procedure settime; 
	savedTime_ readtime;

procedure timeReport(string name);
	print(crlf, name, ": ", readtime-savedTime );

define size=511,classMax=3, typeMax=12, d=8;

let pieceClass=integer;	define pieceClass!range="0:classMax";
let pieceType=integer;	define pieceType!range="0:typeMax";
let position=integer;	define position!range="0:size";

integer vector pieceCount[pieceClass!range];	! of 0 .. 13;
pieceClass vector class[pieceType!range];
position vector pieceMax[pieceType!range];
boolean vector puzzle[position!range];
boolean matrix p[pieceType!range,position!range];
position m,n;
integer i,j,k;	! 0 .. 13;
integer kount;	! literally "integer";
boolean function fit( pieceType i; position j );
begin
	position k;
!	position plim;
! plim_ pieceMax[i];
! for k_ 0 upto plim 
; for k_ pieceMax[i] downto 0
   do if p[i,k] andThen puzzle[j+k]
	then return(false);
return(true);
end;
position function place( pieceType i; position j );
begin
	position k;
!	position plim;
! plim_ pieceMax[i];
! for k_ 0 upto plim 
; for k_ pieceMax[i] downto 0
   do if p[i,k] then puzzle[j+k]_ true;
pieceCount[class[i]]_ pieceCount[class[i]] - 1;
for k_ j upto size
   do if not puzzle[k] then return(k);
print(crlf& "Puzzle filled");
return(0);
end;
!procedure remove( pieceType i; position j );
begin
	position k;
!	position plim;
! plim_ pieceMax[i];
! for k_ 0 upto plim 
; for k_ pieceMax[i] downto 0
   do if p[i,k] then puzzle[j+k]_ false;
pieceCount[class[i]]_ pieceCount[class[i]] + 1;
end;
boolean recursive procedure trial( position j );
begin
	pieceType i;
	position k;
kount_ kount+1;	! code motion ** (was just before exit);
for i_ 0 upto typeMax
   do if pieceCount[class[i]] ! neq 0;
	andThen fit(i,j)
	 then begin
		k_ place(i,j);
		if ! trial(k) or k=0; k=0 or trial(k)
		 then begin
			print(crlf& "Piece", i+1, " at", k+1 );
			return(true);
		      end
		 else remove(i,j);
	      end;
return(false);
end;
setprint(null,"B");
settime;
arrclr(puzzle,true);
for i_ 1 upto 5 do for j_ 1 upto 5 do for k_ 1 upto 5
   do puzzle[i+d*(j+d*k)]_ false;
arrclr(p,false);

  
define !block(#N, #C, #LI,#LJ,#LK)=" 
	for i_ 0 upto #LI do for j_ 0 upto #LJ do for k_ 0 upto #LK
	  do p[#N,i+d*(j+d*k)]_ true;
	class[#N]_ #C;
	pieceMax[#N]_ #LI+ d*#LJ + d*d*#LK;
";

!block(0, 0, 3,1,0);
!block(1, 0, 1,0,3);
!block(2, 0, 0,3,1);
!block(3, 0, 1,3,0);
!block(4, 0, 3,0,1);
!block(5, 0, 0,1,3);

!block(6, 1, 2,0,0);
!block(7, 1, 0,2,0);
!block(8, 1, 0,0,2);

!block(9, 2, 1,1,0);
!block(10,2, 1,0,1);
!block(11,2, 0,1,1);

!block(12,3, 1,1,1);
pieceCount[0]_ 13;
pieceCount[1]_ 3;
pieceCount[2]_ 1;
pieceCount[3]_ 1;
m_ 1+d*(1+d*1);
kount_0;
timeReport("Initialization");
if fit(0,m) then n_ place(0,m) else print(crlf& "Error 1");
if trial(n) then print(crlf& "Success in ", kount, " trials")
 else print(crlf, "Failure");
timeReport("Completion");
end;
   