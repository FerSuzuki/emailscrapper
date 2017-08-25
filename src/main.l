%{
#include <stdio.h>
#include <string.h>
%}

User[A-Za-z0-9_.-]+
Dom[A-Za-z0-9_.-]*[A-Za-z0-9] 

%%

{User}[^_. -][@]{Dom}[-][ ] ; 

{User}[^_. -][@]{Dom} {
	printf("%s\n", yytext);
}

. ;
[[:space:]] ;

%%

int main() {
  yylex();
  return 0;
}
