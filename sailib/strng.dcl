COMMENT new: BYTDIF, ENDCHR, ENDLOP;

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

COMMENT in language:  integer procedure CMPSTR( string first, second );

 