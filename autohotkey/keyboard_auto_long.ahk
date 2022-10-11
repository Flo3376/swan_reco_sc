;sleep 10000 ; wait for 10 seconds before start pressing the keys
for n, param in A_Args 
{
   Send, %param%
   sleep, 500
}
Return