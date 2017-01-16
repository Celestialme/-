; Example: Download text to a variable:
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/Celestialme/-/master/README.md", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse()
version := whr.ResponseText
MsgBox % version

currentversion = 3.2
if (version > currentversion)
{
UrlDownloadToFile, https://raw.githubusercontent.com/Celestialme/-/master/README.md, ტესტები.ahk


}
Menu, Tray, NoStandard
Menu,Tray, Add , E&xit, GuiClose
Gui 2: Add, DropDownList, x66 y80 w270 vlist  ,ჰისტოლოგია|ბიოქიმია|ფიზიოლოგია|ანატომია
Gui 2: Font, S14 CDefault, Verdana
Gui 2: Add, Text, x121 y19 w140 h50 , აირჩიეთ საგანი
Gui 2: Add, Button, x142 y119 w100 h30 gok , OK!
Gui 2: Show, w406 h171, არჩევა
srch = 0
save = 2
sizeq = 8
sizea = 8
sizeqt = 8
sizeat = 8
return
start:
if (list = "ჰისტოლოგია")  
{
FileRead, quz,histo.txt
test = ტესტი ჰისტოლოგიაში
}
else
	if (list  = "ბიოქიმია")
	{
	FileRead, quz,%A_WorkingDir%\quizy32.txt
	test = ტესტი ბიოქიმიაში
	}
	else
	if (list  = "ფიზიოლოგია")
	{
	FileRead, quz,%A_WorkingDir%\fiziologia.txt
	test = ტესტი ბიოქიმიაში
	}
	 if (list  = "ანატომია")
	{
	FileRead, quz,%A_WorkingDir%\ანატომია2.txt
	test = ტესტი ანატომიაში
	}
correct        = %A_WorkingDir%\imagecorr.png
incorrect        = %A_WorkingDir%\imageincorrect.png
Menu, M1, Add,◀, V3
Menu, M1, Add, ძებნა, V1 
Menu, M1, Add, ▶, V2 
Menu, M1, Add, ტესტი, test 
Menu, M1, Add, ➕, fontp
Menu, M1, Add, ➖, fontm
Gui, Menu, M1
Gui, Add, Radio,altsubmit x7 y84 w10 h30 gA vA, Radio
Gui, Add, Radio,altsubmit x7 y164 w10 h20 gB vB, Radio
Gui, Add, Radio,altsubmit x7 y244 w10 h20 gC vC, Radio
Gui, Add, Radio,altsubmit x7 y324 w10 h20 gD vD, Radio
Gui, Add, Text, x33 y84 w830 h70 vtext2 gA, Text2
Gui, Add, Text,  x33 y164 w830 h70 vtext3 gB, Text3
Gui, Add, Text, x33 y244 w830 h70 vtext4 gC, Text4
Gui, Add, Text, x33 y324 w830 h70 vtext5 gD, Text5

Gui, Add, Button, x101 y404 w160 h30  gprev, წინა
Gui, Add, Button,  x613 y404 w160 h30 gNext, შემდეგი
Gui, Font, S8 CDefault Bold, Verdana
Gui, Add, Text, x33 y14 w830 h80 +Center vtext1, Text1
Gui, Add, Text, x680 y449 w70 h20 vnumber gtext, 1/1000
Gui, Add, Edit, x680 y449 w70 h20 vedit 
Gui, Add, Button, x772 y404 w40 h87 gok2 vok2, OK!
guicontrol,hide,edit
guicontrol,hide,ok2
Gui, Add, Picture, x386 y409 w110 h60 vanswer,
Gui, Add, CheckBox, x102 y439 w160 h20 AltSubmit vcheck  gcheck, პასუხის ჩვენება
GuiControlGet, checked,, check
Gui, Add, CheckBox, x102 y459 w160 h20 AltSubmit vvoice  gvoice, ხმა
Gui, Show, w869 h483, %test%
;===============================================================================================

Menu, M2, Add, ➕, fontpt
Menu, M2, Add, ➖, fontmt 
Gui, 3:Add, Radio,altsubmit x2 y99 w10 h30 gtesta vtesta, Radio
Gui, 3:Add, Radio,altsubmit x2 y179 w10 h20 gtestb vtestb, Radio
Gui, 3:Add, Radio,altsubmit x2 y259 w10 h20 gtestc vtestc, Radio
Gui, 3:Add, Radio,altsubmit x2 y339 w10 h20 gtestd vtestd, Radio
Gui, 3:Add, Text, x28 y99 w830 h70 vtesttext2 gtesta, Text2
Gui, 3:Add, Text, x28 y179 w830 h70 vtesttext3 gtestb, Text3
Gui, 3:Add, Text, x28 y259 w830 h70 vtesttext4 gtestc,  Text4
Gui, 3:Add, Text, x28 y339 w830 h70 vtesttext5 gtestd, Text5
Gui, 3:Add, Button, x96 y419 w160 h30 gtestprev, წინა
Gui, 3:Add, Button, x340 y419 w160 h30 gsusp, საეჭვოდ მონიშვნა

Gui, 3:Add, Button, x340 y469 w160 h30 gdone, ტესტის დასრულება
Gui, 3:Add, Button, x608 y419 w160 h30 gtestnext, შემდეგი
Gui, 3:Add, Text, x28 y9 w830 h80 +Center vtesttext1, Text1
Gui, 3:Add, Text, x675 y464 w70 h20 vtestcount, 1/100
Gui, 3:Add, ListView, x860 y-1 w360 h500 vqlist +HScroll glist AltSubmit hwndlist -Hdr , N|Test
;===========================================================================================

StringReplace, quz, quz, \\\\, ¢, All
StringReplace, quz, quz, \\\, µ, All
StringReplace, quz, quz, \\,°, All


gui,show,  w869 h483
cnt = 2
Loop, Parse, quz,¢
{
num = %A_index%
}


next:
if search 
{
search = 0
msgbox ძებნა გაუქმებულია
}
v4:
GuiControl, Hide, answer
cnt3 := cnt 
cnt4 := cnt
GuiControl,,edit,%cnt3%
GuiControl, +cblack +Redraw +Resize, text1
GuiControl, +cblack +Redraw +Resize, text2
GuiControl, +cblack +Redraw +Resize, text3
GuiControl, +cblack +Redraw +Resize, text4
GuiControl, +cblack +Redraw +Resize, text5
GuiControl,, A,0
GuiControl,, b,0
GuiControl, , c,0
GuiControl,, D,0
Loop, Parse, quz,¢
{
	
StringSplit, quzz, quz, ¢
teqsti := quzz%cnt%
StringReplace, teqsti, teqsti,`r`n, %A_SPACE% , All
StringReplace, teqsti, teqsti,¢, `r`n ¢, All
StringReplace, teqsti, teqsti,µ,`r`n µ, All
StringReplace, teqsti, teqsti,°,`r`n °, All

StringReplace, teqsti2, teqsti, ¢ ,, All
StringReplace, teqsti2, teqsti2,°,, All
StringReplace, teqsti2, teqsti2,µ,, All

StringSplit, taa, teqsti2, `r
StringSplit, ta, teqsti, `r
if break
{
GuiControl,Text, text1, %taa1%
GuiControl,Text, text2, %taa2%
GuiControl,Text, text3, %taa3%
GuiControl,Text, text4, %taa4%
GuiControl,Text, text5, %taa5%
}
	else
{
if not search
{
GuiControl,Text, text1, %taa1%
GuiControl,Text, text2, %taa2%
GuiControl,Text, text3, %taa3%
GuiControl,Text, text4, %taa4%
GuiControl,Text, text5, %taa5%
}

}	









if search 
{
 IfInString,taa1,%search%  
{		
save := cnt

GuiControl,,number,%cntindic%/%numindic% 
		GuiControl, +cred +Redraw, text1
GuiControl,Text, text1, %taa1%
GuiControl,Text, text2, %taa2%
GuiControl,Text, text3, %taa3%
GuiControl,Text, text4, %taa4%
GuiControl,Text, text5, %taa5%
break
}
IfInString,taa2,%search% 
{ 	

save := cnt
GuiControl,,number,%cntindic%/%numindic% 
        
		GuiControl, +cred +Redraw, text2
		
GuiControl,Text, text1, %taa1%
GuiControl,Text, text2, %taa2%
GuiControl,Text, text3, %taa3%
GuiControl,Text, text4, %taa4%
GuiControl,Text, text5, %taa5%
break
}
IfInString,taa3,%search%  
{
	save := cnt
GuiControl,,number,%cntindic%/%numindic% 

GuiControl, +cred +Redraw, text3

GuiControl,Text, text1, %taa1%
GuiControl,Text, text2, %taa2%
GuiControl,Text, text3, %taa3%
GuiControl,Text, text4, %taa4%
GuiControl,Text, text5, %taa5%
break
}
IfInString,taa4,%search% 
{
	save := cnt
GuiControl,,number,%cntindic%/%numindic% 
	
		GuiControl, +cred +Redraw, text4
		
GuiControl,Text, text1, %taa1%
GuiControl,Text, text2, %taa2%
GuiControl,Text, text3, %taa3%
GuiControl,Text, text4, %taa4%
GuiControl,Text, text5, %taa5%
break
}
IfInString,taa5,%search% 
{
	save := cnt
GuiControl,,number,%cntindic%/%numindic% 
	
		GuiControl, +cred +Redraw, text5
	
GuiControl,Text, text1, %taa1%
GuiControl,Text, text2, %taa2%
GuiControl,Text, text3, %taa3%
GuiControl,Text, text4, %taa4%
GuiControl,Text, text5, %taa5%
break
}
 
 
 
 
 
;-------------------------------------
if not break
{
if (forward = 1) 
{
	if (cnt != num)
{
 cnt++
}
			else
{
msgbox last item was found
cnt := save
break
}

}
	else
{
	if (cnt != 1)
	{
cnt--
}
	else
	{
	msgbox last item was found
	cnt := save
	break
	}

}
}
;---------------------------------


}
	else
{
break
}








}

cntindic := cnt -1
numindic := num - 1
GuiControl,,number,%cntindic%/%numindic% 
 cnt++


a = 0
b = 0
c = 0
d = 0
If InStr(ta2, "°") 
{
a = 1
}
If InStr(ta3, "°") 
{
b = 1
}
If InStr(ta4, "°") 
{
c = 1
}
If InStr(ta5, "°") 
{
d = 1
}

return

prev:
if cnt!= 3
cnt := cnt - 2
goto next
return

a:
guicontrol,,a,1
If InStr(ta2, "°") 
{
	if (sound = 1)
	{
	SoundPlay,%A_WorkingDir%\correct.wav
	}
GuiControl, -Redraw,     answer
    GuiControl,,             answer, %correct%
    GuiControl, +Redraw,    answer
	if (checked = 1)
{
	GuiControl, +cgreen +Redraw, text2
}

}
else
{	
if (sound = 1)
	{
	SoundPlay, %A_WorkingDir%\incorrect.wav
	}
	GuiControl, -Redraw,     answer
    GuiControl,,             answer, %incorrect%
    GuiControl, +Redraw,    answer
if (checked = 1)
	{
	if (d = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cgreen +Redraw, text5
		}
if (b = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cgreen +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
	if (c = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cgreen +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
	
}
;------------------------------------------------------------------------------------------------------------------------------

if (d = 1)
		{
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2% [არჩეული  პასუხი] `n %taa3%  `n %taa4%  `n %taa5% [სწორი პასუხი],%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
if (b = 1)
		{
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2% [არჩეული  პასუხი] `n %taa3% [სწორი პასუხი] `n %taa4%  `n %taa5%,%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
	if (c = 1)
		{
		
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2% [არჩეული  პასუხი] `n %taa3% `n %taa4% [სწორი პასუხი] `n %taa5%,%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
		
}
return

b:
guicontrol,,b,1
If InStr(ta3, "°") 
{
	if (sound = 1)
	{
	SoundPlay, %A_WorkingDir%\correct.wav
	}
GuiControl, -Redraw,     answer
    GuiControl,,             answer, %correct%
    GuiControl, +Redraw,    answer
	if (checked = 1)
{
	GuiControl, +cgreen +Redraw, text3
}

}
else
{
if (sound = 1)
	{
	SoundPlay, %A_WorkingDir%\incorrect.wav
	}
	GuiControl, -Redraw,     answer
    GuiControl,,             answer, %incorrect%
    GuiControl, +Redraw,    answer

if (checked = 1)
	{
	if (a = 1)
		{
		GuiControl, +cgreen +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
if (c = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cgreen +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
	if (d = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cgreen +Redraw, text5
		}
	


}

;------------------------------------------------------------------------------------------------------------------------------

if (a = 1)
		{
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2% [სწორი პასუხი]  `n %taa3% [არჩეული  პასუხი]  `n %taa4%  `n %taa5% ,%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
if (c = 1)
		{
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2%   `n %taa3% [არჩეული  პასუხი]  `n %taa4% [სწორი პასუხი] `n %taa5% ,%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
	if (d = 1)
		{
		
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2%   `n %taa3% [არჩეული  პასუხი]  `n %taa4%  `n %taa5% [სწორი პასუხი],%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
		



}

return

c:
guicontrol,,c,1
If InStr(ta4, "°") 
{
	if (sound = 1)
	{
	SoundPlay, %A_WorkingDir%\correct.wav
	}
	GuiControl, -Redraw,     answer
    GuiControl,,             answer, %correct%
    GuiControl, +Redraw,    answer
	if (checked = 1)
{
	GuiControl, +cgreen +Redraw, text4
}

}
else
{	
	if (sound = 1)
	{
	SoundPlay, %A_WorkingDir%\incorrect.wav
	}
GuiControl, -Redraw,     answer
    GuiControl,,             answer, %incorrect%
    GuiControl, +Redraw,    answer	

if (checked = 1)
	{
	if (a = 1)
		{
		GuiControl, +cgreen +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
if (b = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cgreen +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
	if (d = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cgreen +Redraw, text5
		}
	


}
;------------------------------------------------------------------------------------------------------------------------------

if (a = 1)
		{
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2% [სწორი პასუხი]  `n %taa3%  `n %taa4%  [არჩეული  პასუხი] `n %taa5% ,%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
if (b = 1)
		{
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2%   `n %taa3% [სწორი პასუხი] `n %taa4%  [არჩეული  პასუხი] `n %taa5% ,%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
	if (d = 1)
		{
		
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2%   `n %taa3%  `n %taa4%  [არჩეული  პასუხი] `n %taa5% [სწორი პასუხი],%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
		




}
return

d:
guicontrol,,d,1
If InStr(ta5, "°") 
{
	if (sound = 1)
	{
	SoundPlay, %A_WorkingDir%\correct.wav
	}
	GuiControl, -Redraw,     answer
    GuiControl,,             answer, %correct%
    GuiControl, +Redraw,    answer	
if (checked = 1)
{
	GuiControl, +cgreen +Redraw, text5
}

}
else
{
	if (sound = 1)
	{
	SoundPlay, %A_WorkingDir%\incorrect.wav
	}
	
GuiControl, -Redraw,     answer
    GuiControl,,             answer, %incorrect%
    GuiControl, +Redraw,    answer
if (checked = 1)
	{
	if (a = 1)
		{
		GuiControl, +cgreen +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
if (b = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cgreen +Redraw, text3
	    GuiControl, +cred +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
	if (c = 1)
		{
		GuiControl, +cred +Redraw, text2
		GuiControl, +cred +Redraw, text3
	    GuiControl, +cgreen +Redraw, text4
		GuiControl, +cred +Redraw, text5
		}
	
}
;------------------------------------------------------------------------------------------------------------------------------

if (a = 1)
		{
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2% [სწორი პასუხი]  `n %taa3%  `n %taa4%   `n %taa5% [არჩეული  პასუხი],%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
if (b = 1)
		{
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2%   `n %taa3% [სწორი პასუხი] `n %taa4%   `n %taa5% [არჩეული  პასუხი],%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
	if (c = 1)
		{
		
		FileAppend,`n `n [%cnt4%] %taa1%  `n %taa2%   `n %taa3%  `n %taa4% [სწორი პასუხი]  `n %taa5% [არჩეული  პასუხი],%A_WorkingDir%\შეცდომები.txt,UTF-8
		}
		



}
return

check:
Toggle := !Toggle
	

	 While Toggle{
	    
        checked = 1

	
return 
 }
 checked = 0


return

voice:

Toggle1 := !Toggle1
	

	 While Toggle1{
	    
        sound = 1

	
return 
 }
 sound = 0

return

text:
guicontrol,show,ok2
guicontrol,hide,number
guicontrol,show,edit
cnt2 := cnt - 2
guicontrol,,edit,%cnt2%
gui,show
return
OK2:
guicontrol,hide,ok2
gui,submit,nohide
guicontrol,hide,edit
guicontrol,show,number
cnt := Edit + 1
goto next
return
ok:
gui 2:submit
gui 2:destroy
goto start
return

Fontp:

sizeq +=1
Gui, Font, s%sizeq%
GuiControl, Font, text1
sizea +=1
Gui, Font, s%sizea%
GuiControl, Font, text2
GuiControl, Font, text3
GuiControl, Font, text4
GuiControl, Font, text5
return

fontm:
sizeq -=1
Gui, Font, s%sizeq%
GuiControl, Font, text1
sizea -=1
Gui, Font, s%sizea% -bold
GuiControl, Font, text2
GuiControl, Font, text3
GuiControl, Font, text4
GuiControl, Font, text5
return

Fontpt:

sizeqt +=2
Gui, Font, s%sizeqt%
GuiControl, Font, testtext1
sizeat +=2
Gui, Font, s%sizeat%
GuiControl, Font, testtext2
GuiControl, Font, testtext3
GuiControl, Font, testtext4
GuiControl, Font, testtext5
return

fontmt:
sizeqt -=2
Gui, Font, s%sizeqt%
GuiControl, Font, testtext1
sizeat -=2
Gui, Font, s%sizeat%
GuiControl, Font, testtext2
GuiControl, Font, testtext3
GuiControl, Font, testtext4
GuiControl, Font, testtext5
return


GuiClose:
FileDelete,check.ini
ExitApp
return
2GuiClose:
ifExist, შეცდომები.txt
   MsgBox, 4,ტესტები, გინდა შეცდომები ნახვა?
ifmsgbox yes
{
run შეცდომები.txt

}
FileDelete,check.ini
FileDelete,randomizing.txt
ExitApp

v1:
InputBox,search,ძებნა,,,,100


 cnt = 2

return

v2:
forward = 1

goto v4
	

return

v3:
if cnt >= 4
{
cnt-=2

}
else
{
msgbox last item was found
cnt := save
}
forward = 2
goto v4


return

test:
done = 0
nom = 0

GuiControl, +cblack +Redraw, testtext4
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cblack +Redraw, testtext2
GuiControl, +cblack +Redraw, testtext3
GuiControl 3:Text, qlist, |
Loop
{
Random,rnd,3,487
FileAppend,,randomizing.txt
FileRead,randomnumbers,randomizing.txt
IfNotInString,randomnumbers,%rnd%
{
	FileAppend,%rnd%,randomizing.txt
nom++
test%nom% := rnd

if (nom = 100)
{
	randomnumbers = 
FileDelete,randomizing.txt
break

}

}

}
nom =  1
Gui, 3:Show, w1214 h520, ტესტი 
Gui 3: Menu, M2

Loop, Parse, quz,¢
{
	
	testnom :=  test%nom%
StringSplit, testquzz, quz, ¢
testteqsti := quzz%testnom%
StringReplace, testteqsti, testteqsti,`r`n, , All
StringReplace, testteqsti, testteqsti,¢, `r`n ¢, All
StringReplace, testteqsti, testteqsti,µ,`r`n µ, All
StringReplace, testteqsti, testteqsti,°,`r`n °, All

StringReplace, testteqsti2, testteqsti, ¢ ,, All
StringReplace, testteqsti2, testteqsti2,°,, All
StringReplace, testteqsti2, testteqsti2,µ,, All

StringSplit, testtaa, testteqsti2, `r
StringSplit, testta, testteqsti, `r

if nom != 101
{
	gui, 3: default
LV_Add("",nom, testtaa1)
LV_ModifyCol()
gui, default
If InStr(testta2, "°") 
{
IniWrite, 1, check.ini,answerkey, %nom%
}
	else
If InStr(testta3, "°") 
{
IniWrite, 2, check.ini,answerkey, %nom%
}
	else
If InStr(testta4, "°") 
{
IniWrite, 3, check.ini,answerkey, %nom%
}
	else
If InStr(testta5, "°") 
{
IniWrite, 4, check.ini,answerkey, %nom%
}



nom++
}

	else
	{
	break
	}
}
nom = 1
LV_ColorInitiate(3)
LV_ColorChange()
testnext:
gui, 3:default
gui, 3:+LastFound


	

GuiControlGet, testa,, testa
GuiControlGet, testb,, testb
GuiControlGet, testc,, testc
GuiControlGet, testd,, testd


if( testa = 1 or testb = 1 or testc = 1 or testd = 1 ) and if ( susp != 1) and if (done = 0)
{
	
LV_ColorChange(nom2, "0x00FF00", "0xFFFFFF") 
susp = 0
}
	else
if ( susp = 1) and if (done = 0)
{

	
LV_ColorChange(nom2, "0x3333FF", "0xFFFFFF") 


susp = 0
}
nom2 := nom






GuiControl, Hide, answer
GuiControl,,testcount,%nom%/100

;-----------------------------------------------------------------------------------------------------------------------------------------------------------------

IniRead, myanswer ,check.ini,myanswer, %nom%,0
IniRead, answerkey, check.ini,answerkey, %nom%
if (myanswer = 1)
{
GuiControl 3:, testA,1
}
	else
if (myanswer = 2)
{
GuiControl 3:, testb,1
}
	else
if (myanswer = 3)
{
GuiControl 3:, testc,1
}
	else
if (myanswer = 4)
{
GuiControl 3:, testd,1
}
	else
{
GuiControl 3:, testA,0
GuiControl 3:, testb,0
GuiControl 3:, testc,0
GuiControl 3:, testD,0
}
if (done = 1)
{
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------
if (myanswer = 1 and answerkey = 2)
{
	GuiControl, +cblack +Redraw, testtext4
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cred +Redraw, testtext2
GuiControl, +cgreen +Redraw, testtext3
}
	else
if (myanswer = 1 and answerkey = 3)
{
	GuiControl, +cblack +Redraw, testtext3
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cred +Redraw, testtext2
GuiControl, +cgreen +Redraw, testtext4
}
	else
if (myanswer = 1 and answerkey = 4)
{
	GuiControl, +cblack +Redraw, testtext4
GuiControl, +cblack +Redraw, testtext3
GuiControl, +cred +Redraw, testtext2
GuiControl, +cgreen +Redraw, testtext5
}
	else
if (myanswer = 1 and answerkey = 1)
{
GuiControl, +cblack +Redraw, testtext3
GuiControl, +cblack +Redraw, testtext4
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cgreen +Redraw, testtext2
}
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------

if (myanswer = 2 and answerkey = 1)
{
	GuiControl, +cblack +Redraw, testtext4
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cred +Redraw, testtext3
GuiControl, +cgreen +Redraw, testtext2
}
	else
if (myanswer = 2 and answerkey = 3)
{
	GuiControl, +cblack +Redraw, testtext2
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cred +Redraw, testtext3
GuiControl, +cgreen +Redraw, testtext4
}
	else
if (myanswer = 2 and answerkey = 4)
{
	GuiControl, +cblack +Redraw, testtext4
GuiControl, +cblack +Redraw, testtext2
GuiControl, +cred +Redraw, testtext3
GuiControl, +cgreen +Redraw, testtext5
}
	else
if (myanswer = 2 and answerkey = 2)
{
GuiControl, +cblack +Redraw, testtext2
GuiControl, +cblack +Redraw, testtext4
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cgreen +Redraw, testtext3

}
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------
if (myanswer = 3 and answerkey = 1)
{
	GuiControl, +cblack +Redraw, testtext3
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cred +Redraw, testtext4
GuiControl, +cgreen +Redraw, testtext2
}
	else
if (myanswer = 3 and answerkey = 2)
{
	GuiControl, +cblack +Redraw, testtext5
GuiControl, +cblack +Redraw, testtext2
GuiControl, +cred +Redraw, testtext4
GuiControl, +cgreen +Redraw, testtext3
}
	else
if (myanswer = 3 and answerkey = 4)
{
	GuiControl, +cblack +Redraw, testtext2
GuiControl, +cblack +Redraw, testtext3
GuiControl, +cred +Redraw, testtext4
GuiControl, +cgreen +Redraw, testtext5
}
	else
if (myanswer = 3 and answerkey = 3)
{
GuiControl, +cblack +Redraw, testtext3
GuiControl, +cblack +Redraw, testtext2
GuiControl, +cblack +Redraw, testtext5
GuiControl, +cgreen +Redraw, testtext4
}
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------
if (myanswer = 4 and answerkey = 1)
{
	GuiControl, +cblack +Redraw, testtext3
GuiControl, +cblack +Redraw, testtext4
GuiControl, +cred +Redraw, testtext5
GuiControl, +cgreen +Redraw, testtext2
}
	else
if (myanswer = 4 and answerkey = 2)
{
	GuiControl, +cblack +Redraw, testtext2
GuiControl, +cblack +Redraw, testtext4
GuiControl, +cred +Redraw, testtext5
GuiControl, +cgreen +Redraw, testtext3
}
	else
if (myanswer = 4 and answerkey = 3)
{
	GuiControl, +cblack +Redraw, testtext2
GuiControl, +cblack +Redraw, testtext3
GuiControl, +cred +Redraw, testtext5
GuiControl, +cgreen +Redraw, testtext4
}
	else
if (myanswer = 4 and answerkey = 4)
{
GuiControl, +cblack +Redraw, testtext3
GuiControl, +cblack +Redraw, testtext4
GuiControl, +cblack +Redraw, testtext2
GuiControl, +cgreen +Redraw, testtext5

}
}
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------














Loop, Parse, quz,¢
{
	
	testnom :=  test%nom%
StringSplit, testquzz, quz, ¢
testteqsti := quzz%testnom%
StringReplace, testteqsti, testteqsti,`r`n, , All
StringReplace, testteqsti, testteqsti,¢, `r`n ¢, All
StringReplace, testteqsti, testteqsti,µ,`r`n µ, All
StringReplace, testteqsti, testteqsti,°,`r`n °, All

StringReplace, testteqsti2, testteqsti, ¢ ,, All
StringReplace, testteqsti2, testteqsti2,°,, All
StringReplace, testteqsti2, testteqsti2,µ,, All

StringSplit, testtaa, testteqsti2, `r
StringSplit, testta, testteqsti, `r
GuiControl 3:Text, testtext1, %testtaa1%
GuiControl 3:Text, testtext2, %testtaa2%
GuiControl 3:Text, testtext3, %testtaa3%
GuiControl 3:Text, testtext4, %testtaa4%
GuiControl 3:Text, testtext5, %testtaa5%

break
}
nom++
return
testa:

guicontrol 3:,testa,1


nom:=nom-1
if (done = 0)
{
IniWrite, 1, check.ini,myanswer, %nom%
}
nom:=nom+1

return
testb:
guicontrol 3:,testb,1


nom:=nom-1
if (done = 0)
{
IniWrite, 2, check.ini,myanswer, %nom%
}
nom:=nom+1

return
testc:
guicontrol 3:,testc,1

nom:=nom-1
if (done = 0)
{
IniWrite, 3, check.ini,myanswer, %nom%
}
nom:=nom+1


return
testd:
guicontrol 3:,testd,1

nom:=nom-1
if (done = 0)
{
IniWrite, 4, check.ini,myanswer, %nom%
}
nom:=nom+1
testcnt++


return

testprev:

if nom!= 1
nom := nom - 2
goto testnext
return

list:
if A_GuiEvent = Normal
{
nom = %A_EventInfo%
LV_Modify(%1%,"-select")
goto testnext
}

return
susp:
susp = 1

return
done:
done = 1
LV_ColorChange() 
nom = 1
Loop
{  
	
IniRead, answerkey, check.ini,answerkey, %nom%
IniRead, myanswer ,check.ini,myanswer, %nom%

if(answerkey = myanswer)
{
swori++
LV_ColorChange(nom, "0x00FF00", "0xFFFFFF") 
}
else
{
	LV_ColorChange(nom, "0x3333FF", "0xFFFFFF") 
		testnom :=  test%nom%
StringSplit, testquzz, quz, ¢
testteqsti := quzz%testnom%
StringReplace, testteqsti, testteqsti,`r`n, , All
StringReplace, testteqsti, testteqsti,¢, `r`n ¢, All
StringReplace, testteqsti, testteqsti,µ,`r`n µ, All
StringReplace, testteqsti, testteqsti,°,`r`n °, All

StringReplace, testteqsti2, testteqsti, ¢ ,, All
StringReplace, testteqsti2, testteqsti2,°,, All
StringReplace, testteqsti2, testteqsti2,µ,, All

StringSplit, testtaa, testteqsti2, `r
StringSplit, testta, testteqsti, `r
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------
if (myanswer = 1 and answerkey = 2)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2% [არჩეული  პასუხი]  `n %testtaa3% [სწორი პასუხი]  `n %testtaa4%   `n %testtaa5% ,%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}

if (myanswer = 1 and answerkey = 3)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2% [არჩეული  პასუხი]  `n %testtaa3%  `n %testtaa4% [სწორი პასუხი]   `n %testtaa5% ,%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}

if (myanswer = 1 and answerkey = 4)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2% [არჩეული  პასუხი]  `n %testtaa3%  `n %testtaa4%   `n %testtaa5% [სწორი პასუხი],%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------

if (myanswer = 2 and answerkey = 1)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2% [სწორი პასუხი]   `n %testtaa3% [არჩეული  პასუხი]  `n %testtaa4%   `n %testtaa5% ,%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}

if (myanswer = 2 and answerkey = 3)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2%   `n %testtaa3% [არჩეული  პასუხი]  `n %testtaa4% [სწორი პასუხი]   `n %testtaa5% ,%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}

if (myanswer = 2 and answerkey = 4)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2%   `n %testtaa3% [არჩეული  პასუხი]  `n %testtaa4%   `n %testtaa5% [სწორი პასუხი] ,%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}

;-----------------------------------------------------------------------------------------------------------------------------------------------------------------
if (myanswer = 3 and answerkey = 1)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2% [სწორი პასუხი]   `n %testtaa3%   `n %testtaa4%  [არჩეული  პასუხი] `n %testtaa5% ,%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}

if (myanswer = 3 and answerkey = 2)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2%    `n %testtaa3% [სწორი პასუხი] `n %testtaa4% [არჩეული  პასუხი]    `n %testtaa5% ,%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}

if (myanswer = 3 and answerkey = 4)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2%    `n %testtaa3%  `n %testtaa4% [არჩეული  პასუხი]    `n %testtaa5% [სწორი პასუხი],%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}
;-----------------------------------------------------------------------------------------------------------------------------------------------------------------
if (myanswer = 4 and answerkey = 1)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2% [სწორი პასუხი]   `n %testtaa3%   `n %testtaa4%   `n %testtaa5% [არჩეული  პასუხი],%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}
if (myanswer = 4 and answerkey = 2)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2%    `n %testtaa3%  [სწორი პასუხი] `n %testtaa4%   `n %testtaa5% [არჩეული  პასუხი],%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}
if (myanswer = 4 and answerkey = 3)
{
FileAppend,`n `n [%nom%] %testtaa1%  `n %testtaa2%    `n %testtaa3%   `n %testtaa4%  [სწორი პასუხი]  `n %testtaa5% [არჩეული  პასუხი],%A_WorkingDir%\ტესტის შეცდომები.txt,UTF-8
}



}








if (nom = 100)
{
	ratio := swori
	msgbox %ratio% `%
break
}
nom++
}


return
3guiclose:
ifExist, ტესტის შეცდომები.txt
   MsgBox, 4,ტესტები, გინდა შეცდომები ნახვა?
ifmsgbox yes
{
run ტესტის შეცდომები.txt

}
FileDelete,check.ini
FileDelete,randomizing.txt
FileDelete,check.ini
gui 3:hide
LV_Delete()
return


LV_ColorInitiate(Gui_Number=1, Control="") ; initiate listview color change procedure 
{ 
  global hw_LV_ColorChange 
  If Control =
    Control =SysListView321
  Gui, %Gui_Number%:+Lastfound 
  Gui_ID := WinExist() 
  ControlGet, hw_LV_ColorChange, HWND,, %Control%, ahk_id %Gui_ID% 
  OnMessage( 0x4E, "WM_NOTIFY" ) 
} 

LV_ColorChange(Index="", TextColor="", BackColor="") ; change specific line's color or reset all lines
{ 
  global 
  If Index = 
    Loop, % LV_GetCount() 
      LV_ColorChange(A_Index) 
  Else
    { 
    Line_Color_%Index%_Text := TextColor 
    Line_Color_%Index%_Back := BackColor 
    WinSet, Redraw,, ahk_id %hw_LV_ColorChange% 
    } 
}



WM_NOTIFY( p_w, p_l, p_m )
{ 
  local  draw_stage, Current_Line, Index
  if ( DecodeInteger( "uint4", p_l, 0 ) = hw_LV_ColorChange ) { 
      if ( DecodeInteger( "int4", p_l, 8 ) = -12 ) {                            ; NM_CUSTOMDRAW 
          draw_stage := DecodeInteger( "uint4", p_l, 12 ) 
          if ( draw_stage = 1 )                                                 ; CDDS_PREPAINT 
              return, 0x20                                                      ; CDRF_NOTIFYITEMDRAW 
          else if ( draw_stage = 0x10000|1 ){                                   ; CDDS_ITEM 
              Current_Line := DecodeInteger( "uint4", p_l, 36 )+1 
              LV_GetText(Index, Current_Line) 
              If (Line_Color_%Index%_Text != ""){ 
                  EncodeInteger( Line_Color_%Index%_Text, 4, p_l, 48 )   ; foreground 
                  EncodeInteger( Line_Color_%Index%_Back, 4, p_l, 52 )   ; background 
                } 
            } 
        } 
    } 
} 

DecodeInteger( p_type, p_address, p_offset, p_hex=true )
{ 
  old_FormatInteger := A_FormatInteger 
  ifEqual, p_hex, 1, SetFormat, Integer, hex 
  else, SetFormat, Integer, dec 
  StringRight, size, p_type, 1 
  loop, %size% 
      value += *( ( p_address+p_offset )+( A_Index-1 ) ) << ( 8*( A_Index-1 ) ) 
  if ( size <= 4 and InStr( p_type, "u" ) != 1 and *( p_address+p_offset+( size-1 ) ) & 0x80 ) 
      value := -( ( ~value+1 ) & ( ( 2**( 8*size ) )-1 ) ) 
  SetFormat, Integer, %old_FormatInteger% 
  return, value 
} 

EncodeInteger( p_value, p_size, p_address, p_offset )
{ 
  loop, %p_size% 
    DllCall( "RtlFillMemory", "uint", p_address+p_offset+A_Index-1, "uint", 1, "uchar", p_value >> ( 8*( A_Index-1 ) ) ) 
}
