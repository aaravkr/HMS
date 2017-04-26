VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000D&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Login"
   ClientHeight    =   8895
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   15975
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8895
   ScaleWidth      =   15975
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
      Height          =   495
      Left            =   3600
      TabIndex        =   3
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      Caption         =   "Login"
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   4440
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   600
      TabIndex        =   1
      Text            =   "Password"
      Top             =   3120
      Width           =   4575
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Text            =   "Username"
      Top             =   2280
      Width           =   4575
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000D&
      Height          =   375
      Left            =   720
      TabIndex        =   4
      Top             =   1440
      Width           =   4335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flag1 As Boolean
Dim flag2 As Boolean
Dim cnt As Integer
Private Sub Form_Unload(Cancel As Integer)
End
End Sub
Public Sub Clear()
Text1.Text = "Username"
Text1.FontItalic = True
Text1.ForeColor = &H808080

Text2.Text = "Password"
Text2.FontItalic = True
Text2.ForeColor = &H808080
Text2.PasswordChar = ""

flag1 = True
flag2 = True
End Sub

Private Sub Command1_Click()
cnt = cnt + 1
If Text1.Text = "admin@MSIT" And Text2.Text = "MSIT1234" And cnt <= 4 Then
    Form2.Show
    Me.Hide
Else
    If cnt >= 3 Then
    Unload Me
    Me.Hide
    End
    Else
    MsgBox ((3 - cnt) & " attempts left !")
    Call Clear
    End If
End If

End Sub

Private Sub Command2_Click()
Call Clear
End Sub

Private Sub Form_Load()
Me.Top = 1500
Me.Left = 7000
Me.Height = 7000
Me.Width = 6000

Text1.FontItalic = True
Text1.ForeColor = &H808080
Text1.FontSize = "12"

Text2.FontItalic = True
Text2.ForeColor = &H808080
Text2.FontSize = "12"

flag1 = True
flag2 = True

cnt = 0
Label1.Caption = "      HOSTEL MANAGEMENT SYSTEM "
Label1.FontSize = 10
Label1.FontBold = True

End Sub

Private Sub Text1_Change()
If Len(Text1.Text) > 8 And flag1 Then
Text1.Text = ""
Text1.FontItalic = False
Text1.ForeColor = &H80000007
flag1 = False
End If

End Sub

Private Sub Text2_Change()
If Len(Text2.Text) > 8 And flag2 Then
Text2.Text = ""
Text2.PasswordChar = "*"
Text2.FontItalic = False
Text2.ForeColor = &H80000007
flag2 = False

End If
End Sub
