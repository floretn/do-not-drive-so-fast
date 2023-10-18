VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      Caption         =   "Авторы и правила"
      Height          =   975
      Left            =   120
      TabIndex        =   6
      Top             =   2880
      Width           =   2655
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Начало"
      Height          =   735
      Left            =   1800
      TabIndex        =   5
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton Command4 
      Caption         =   "\/"
      Height          =   735
      Left            =   1800
      TabIndex        =   4
      Top             =   1680
      Width           =   735
   End
   Begin VB.CommandButton Command3 
      Caption         =   ">"
      Height          =   735
      Left            =   2520
      TabIndex        =   3
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton Command2 
      Caption         =   "^"
      Height          =   735
      Left            =   1800
      TabIndex        =   2
      Top             =   240
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "<"
      Height          =   735
      Left            =   1080
      TabIndex        =   1
      Top             =   960
      Width           =   735
   End
   Begin VB.PictureBox Picture1 
      Height          =   11175
      Left            =   3240
      ScaleHeight     =   11115
      ScaleWidth      =   13275
      TabIndex        =   0
      Top             =   240
      Width           =   13335
   End
   Begin VB.Label Label2 
      Height          =   735
      Left            =   3240
      TabIndex        =   7
      Top             =   11520
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x, y, x1, y1, s, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7, x8, y8, x9, y9 As Single

Private Sub Command1_Click()

Picture1.FillStyle = solid
Picture1.FillColor = &H8000000F
Picture1.Circle (x, y), 60, &H8000000F
Picture1.FillStyle = solid
Picture1.FillColor = &HFF&


Picture1.Circle (x2, y2), 3, &HFFFF&

Picture1.Circle (x3, y3), 3, &HFFFF&


Picture1.Circle (x4, y4), 3, &HFFFF&



Picture1.Circle (x5, y5), 3, &HFFFF&

Picture1.Circle (x6, y6), 3, &HFFFF&


Picture1.Circle (x7, y7), 3, &HFFFF&


Picture1.Circle (x8, y8), 3, &HFFFF&


Picture1.Circle (x9, y9), 3, &HFFFF&
x = x - 1
Picture1.Circle (x, y), 1, &HFF&
'new
x = x - 1
Picture1.Circle (x, y), 1, &HFF&


x1 = x1 + (Int(Rnd * 2) - 1) * (-1) ^ Int(Rnd * 10)
y1 = y1 + (Int(Rnd * 2) - 1) * (-1) ^ Int(Rnd * 10)
Picture1.Circle (x1, y1), 1, &HFFFF&
'new
If Sqr((x - x1) ^ 2 + (y - y1) ^ 2) < 2 Then
s = s + 1
Label2.Caption = s

x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Then
x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x2, y2), 3, &HFFFF&
'new
End If

x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
If Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Then
x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x3, y3), 3, &HFFFF&
'new
End If


x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
If Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Then
x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x4, y4), 3, &HFFFF&
'new
End If

x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
If Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Then
x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x5, y5), 3, &HFFFF&
'new
End If

x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
If Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Then
x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x6, y6), 3, &HFFFF&
'new
End If

x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
If Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Then
x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x7, y7), 3, &HFFFF&
'new
End If

x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
If Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Then
x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x8, y8), 3, &HFFFF&
'new
End If

x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
If Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x9, y9), 3, &HFFFF&
'new
End If
End If
If s = 10 Then
Picture1.Cls
s = 0
Label2.Caption = s
MsgBox "Поздравляем!!!", vbOKOnly, "Вы победитель!"
x = 0: y = 0
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
End If
End If

End If
If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Or Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Or Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Or Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Or Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Or Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Or Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Or Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
s = 0
Label2.Caption = s
MsgBox "Соболезнуем :(", vbOKOnly, "Вы проиграли :("
MsgBox "Ахахахахахахахахахахаха!(ыыыы)", vbOKOnly, "Вы проиграли!"
Picture1.Cls

x = 0: y = 0
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

End If
End If
End Sub
Private Sub Command2_Click()

Label2.Caption = s

Picture1.FillStyle = solid
Picture1.FillColor = &H8000000F
Picture1.Circle (x, y), 60, &H8000000F
Picture1.FillStyle = solid
Picture1.FillColor = &HFF&

Picture1.Circle (x2, y2), 3, &HFFFF&


Picture1.Circle (x3, y3), 3, &HFFFF&



Picture1.Circle (x4, y4), 3, &HFFFF&
20
Picture1.Circle (x5, y5), 3, &HFFFF&


Picture1.Circle (x6, y6), 3, &HFFFF&


Picture1.Circle (x7, y7), 3, &HFFFF&


Picture1.Circle (x8, y8), 3, &HFFFF&


Picture1.Circle (x9, y9), 3, &HFFFF&
y = y + 1
Picture1.Circle (x, y), 1, &HFF&
'new
y = y + 1
Picture1.Circle (x, y), 1, &HFF&


x1 = x1 + (Int(Rnd * 2) - 1) * (-1) ^ Int(Rnd * 10)
y1 = y1 + (Int(Rnd * 2) - 1) * (-1) ^ Int(Rnd * 10)
Picture1.Circle (x1, y1), 1, &HFFFF&
'new
If Sqr((x - x1) ^ 2 + (y - y1) ^ 2) < 2 Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)


x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Then
x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x2, y2), 3, &HFFFF&
'new
End If

x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
If Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Then
x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x3, y3), 3, &HFFFF&
'new
End If


x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
If Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Then
x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x4, y4), 3, &HFFFF&
'new
End If

x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
If Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Then
x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x5, y5), 3, &HFFFF&
'new
End If

x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
If Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Then
x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x6, y6), 3, &HFFFF&
'new
End If

x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
If Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Then
x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x7, y7), 3, &HFFFF&
'new
End If

x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
If Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Then
x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x8, y8), 3, &HFFFF&
'new
End If

x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
If Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x9, y9), 3, &HFFFF&
'new
End If
End If
s = s + 1
Label2.Caption = s
End If
If s = 10 Then
MsgBox "Поздравляем!!!", vbOKOnly, "Вы победитель!"
Picture1.Cls
s = 0
x = 0: y = 0
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

End If
End If
If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Or Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Or Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Or Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Or Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Or Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Or Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Or Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
MsgBox "Соболезнуем :(", vbOKOnly, "Вы проиграли :("
MsgBox "Ахахахахахахахахахахаха!(ыыыы)", vbOKOnly, "Вы проиграли!"
Picture1.Cls
s = 0
x = 0: y = 0
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

End If
End If
End Sub

Private Sub Command3_Click()
Picture1.FillStyle = solid
Picture1.FillColor = &H8000000F
Picture1.Circle (x, y), 60, &H8000000F
Picture1.FillStyle = solid
Picture1.FillColor = &HFF&

Picture1.Circle (x2, y2), 3, &HFFFF&


Picture1.Circle (x3, y3), 3, &HFFFF&



Picture1.Circle (x4, y4), 3, &HFFFF&



Picture1.Circle (x5, y5), 3, &HFFFF&


Picture1.Circle (x6, y6), 3, &HFFFF&


Picture1.Circle (x7, y7), 3, &HFFFF&


Picture1.Circle (x8, y8), 3, &HFFFF&


Picture1.Circle (x9, y9), 3, &HFFFF&


x = x + 1
Picture1.Circle (x, y), 1, &HFF&
'new
x = x + 1
Picture1.Circle (x, y), 1, &HFF&


x1 = x1 + (Int(Rnd * 2) - 1) * (-1) ^ Int(Rnd * 10)
y1 = y1 + (Int(Rnd * 2) - 1) * (-1) ^ Int(Rnd * 10)
Picture1.Circle (x1, y1), 1, &HFFFF&
'new
If Sqr((x - x1) ^ 2 + (y - y1) ^ 2) < 2 Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Then
x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x2, y2), 3, &HFFFF&
'new
End If

x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
If Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Then
x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x3, y3), 3, &HFFFF&
'new
End If


x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
If Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Then
x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x4, y4), 3, &HFFFF&
'new
End If

x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
If Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Then
x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x5, y5), 3, &HFFFF&
'new
End If

x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
If Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Then
x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x6, y6), 3, &HFFFF&
'new
End If

x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
If Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Then
x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x7, y7), 3, &HFFFF&
'new
End If

x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
If Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Then
x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x8, y8), 3, &HFFFF&
'new
End If

x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
If Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x9, y9), 3, &HFFFF&
'new
End If
End If
s = s + 1
Label2.Caption = s
End If
If s = 10 Then
MsgBox "Поздравляем!!!", vbOKOnly, "Вы победитель!"
Picture1.Cls
s = 0
x = 0: y = 0
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

End If
End If

If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Or Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Or Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Or Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Or Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Or Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Or Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Or Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
MsgBox "Соболезнуем :(", vbOKOnly, "Вы проиграли :("
MsgBox "Ахахахахахахахахахахаха!(ыыыы)", vbOKOnly, "Вы проиграли!"
Picture1.Cls
s = 0
x = 0: y = 0
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

End If
End If
End Sub

Private Sub Command4_Click()
Label2.Caption = s

Picture1.FillStyle = solid
Picture1.FillColor = &H8000000F
Picture1.Circle (x, y), 60, &H8000000F
Picture1.FillStyle = solid
Picture1.FillColor = &HFF&

Picture1.Circle (x2, y2), 3, &HFFFF&


Picture1.Circle (x3, y3), 3, &HFFFF&



Picture1.Circle (x4, y4), 3, &HFFFF&



Picture1.Circle (x5, y5), 3, &HFFFF&


Picture1.Circle (x6, y6), 3, &HFFFF&

Picture1.Circle (x7, y7), 3, &HFFFF&

Picture1.Circle (x8, y8), 3, &HFFFF&


Picture1.Circle (x9, y9), 3, &HFFFF&
y = y - 1
Picture1.Circle (x, y), 1, &HFF&
'new
y = y - 1
Picture1.Circle (x, y), 1, &HFF&


x1 = x1 + (Int(Rnd * 2) - 1) * (-1) ^ Int(Rnd * 10)
y1 = y1 + (Int(Rnd * 2) - 1) * (-1) ^ Int(Rnd * 10)
Picture1.Circle (x1, y1), 1, &HFFFF&
'new
If Sqr((x - x1) ^ 2 + (y - y1) ^ 2) < 2 Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Then
x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x2, y2), 3, &HFFFF&
'new
End If

x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
If Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Then
x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x3, y3), 3, &HFFFF&
'new
End If


x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
If Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Then
x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x4, y4), 3, &HFFFF&
'new
End If

x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
If Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Then
x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x5, y5), 3, &HFFFF&
'new
End If

x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
If Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Then
x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x6, y6), 3, &HFFFF&
'new
End If

x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
If Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Then
x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x7, y7), 3, &HFFFF&
'new
End If

x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
If Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Then
x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x8, y8), 3, &HFFFF&
'new
End If

x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
If Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x9, y9), 3, &HFFFF&
'new
End If
End If
s = s + 1
Label2.Caption = s
End If
If s = 10 Then
MsgBox "Поздравляем!!!", vbOKOnly, "Вы победитель!"
Picture1.Cls
s = 0
x = 0: y = 0
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)

End If
End If

If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Or Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Or Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Or Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Or Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Or Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Or Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Or Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
MsgBox "Соболезнуем :(", vbOKOnly, "Вы проиграли :("
MsgBox "Ахахахахахахахахахахаха!(ыыыы)", vbOKOnly, "Вы проиграли!"
Picture1.Cls
s = 0
x = 0: y = 0
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
End If
End If
End Sub

Private Sub Command5_Click()

Label2.Caption = s
s = 0
Picture1.Scale (-30, 30)-(30, -30)
Picture1.FillStyle = solid
Picture1.FillColor = &HFF&
x = 0: y = 0
Picture1.Circle (x, y), 1, &HFF&
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
If x1 = x And y1 = y Then
x1 = Int((60 * Rnd) - 30)
y1 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x1, y1), 1, &HFFFF&
End If

x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
If Sqr((x - x2) ^ 2 + (y - y2) ^ 2) <= 4 Then
x2 = Int((60 * Rnd) - 30)
y2 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x2, y2), 3, &HFFFF&
End If

x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
If Sqr((x - x3) ^ 2 + (y - y3) ^ 2) <= 4 Then
x3 = Int((60 * Rnd) - 30)
y3 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x3, y3), 3, &HFFFF&
End If


x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
If Sqr((x - x4) ^ 2 + (y - y4) ^ 2) <= 4 Then
x4 = Int((60 * Rnd) - 30)
y4 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x4, y4), 3, &HFFFF&
End If

x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
If Sqr((x - x5) ^ 2 + (y - y5) ^ 2) <= 4 Then
x5 = Int((60 * Rnd) - 30)
y5 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x5, y5), 3, &HFFFF&
End If

x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
If Sqr((x - x6) ^ 2 + (y - y6) ^ 2) <= 4 Then
x6 = Int((60 * Rnd) - 30)
y6 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x6, y6), 3, &HFFFF&
End If

x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
If Sqr((x - x7) ^ 2 + (y - y7) ^ 2) <= 4 Then
x7 = Int((60 * Rnd) - 30)
y7 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x7, y7), 3, &HFFFF&
End If

x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
If Sqr((x - x8) ^ 2 + (y - y8) ^ 2) <= 4 Then
x8 = Int((60 * Rnd) - 30)
y8 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x8, y8), 3, &HFFFF&
End If

x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
If Sqr((x - x9) ^ 2 + (y - y9) ^ 2) <= 4 Then
x9 = Int((60 * Rnd) - 30)
y9 = Int((60 * Rnd) - 30)
Else
Picture1.Circle (x9, y9), 3, &HFFFF&
End If
End Sub


Private Sub Command6_Click()
MsgBox "Авторы: Софронов Иван и Лешуков Максимельян(соавтор).Правила: Нажмите кнопку #Начать# и перемещайте змейку кнопками влево(<), вправо(>), вверх(^), вниз(\/); чтобы поймать хаотично перемещающийся шарик. За каждый пойманный шарик вы получаете 1 балл. Колличество баллов указано под игровым полем.Для победы необходимо набрать 10 баллов. Змейка состоит из 2 слипшихся красных шариков(Вы ей управляете). Шарик, который необходимо поймать тоже красный, но имеет жёлтый ободок, он может перемещаться внутри больших шаров, а вы нет. Не прикасайтесь к ним, иначе проиграете .Для повторной игры снова нажмите кнопку #Начать#", vbOKOnly, "Авторы и правила"
End Sub
