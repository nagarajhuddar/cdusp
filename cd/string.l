%{
#include<stdio.h>
int c=0;
%}
%%
\n { c++; }
["][a-zA-Z0-9]*["] {ECHO; printf(" Valid String in line number %d\n ",c+1);}
["][a-zA-Z0-9]* { ECHO; printf(" InValid String in line number %d\n ",c+1);}
. ;
%%
main()
{
yyin=fopen("source.txt","r");
yylex();
fclose(yyin);
}