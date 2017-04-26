VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00FF80FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Student Registration Form"
   ClientHeight    =   9120
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   14310
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9120
   ScaleWidth      =   14310
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      BackColor       =   &H8000000B&
      Caption         =   "Submit"
      Height          =   615
      Left            =   8040
      TabIndex        =   13
      Top             =   6720
      Width           =   1335
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   4800
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   6600
      Width           =   1935
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   4800
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   5640
      Width           =   1935
   End
   Begin VB.TextBox Text4 
      Height          =   525
      Left            =   4800
      TabIndex        =   10
      Top             =   4560
      Width           =   4575
   End
   Begin VB.TextBox Text3 
      Height          =   525
      Left            =   4800
      TabIndex        =   9
      Top             =   3600
      Width           =   4575
   End
   Begin VB.TextBox Text2 
      Height          =   885
      Left            =   4800
      MultiLine       =   -1  'True
      TabIndex        =   8
      Top             =   2400
      Width           =   4575
   End
   Begin VB.TextBox Text1 
      Height          =   525
      Left            =   4800
      TabIndex        =   7
      Top             =   1440
      Width           =   6255
   End
   Begin VB.Label Label7 
      Caption         =   "BLOOD GROUP"
      Height          =   615
      Left            =   720
      TabIndex        =   6
      Top             =   6600
      Width           =   2535
   End
   Begin VB.Label Label6 
      Caption         =   "SEX"
      Height          =   615
      Left            =   720
      TabIndex        =   5
      Top             =   5640
      Width           =   2535
   End
   Begin VB.Label Label5 
      Caption         =   "GUARDIAN'S CONTACT NO."
      Height          =   735
      Left            =   720
      TabIndex        =   4
      Top             =   4560
      Width           =   2535
   End
   Begin VB.Label Label4 
      Caption         =   "CONTACT NO."
      Height          =   615
      Left            =   720
      TabIndex        =   3
      Top             =   3600
      Width           =   2535
   End
   Begin VB.Label Label3 
      Caption         =   "ADDRESS"
      Height          =   615
      Left            =   720
      TabIndex        =   2
      Top             =   2400
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "NAME"
      Height          =   615
      Left            =   720
      TabIndex        =   1
      Top             =   1440
      Width           =   2535
   End
   Begin VB.Label Label1 
      Height          =   1215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   20415
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Or Combo1.Text = "" Or Combo2.Text = "" Then
    MsgBox ("Please fill the empty spaces !")
Else
    ReDim Preserve std(stdlen + 1)
    stdlen = stdlen + 1
    std(stdlen).Name = Trim(Text1.Text)
    std(stdlen).Address = Trim(Text2.Text)
    std(stdlen).Contact = Text3.Text
    std(stdlen).GContact = Text4.Text
    std(stdlen).Sex = Combo1.Text
    std(stdlen).BGroup = Combo2.Text
    std(stdlen).Reg = Format(Now, "yyyy") & "/" & stdlen
    std(stdlen).Paid = 0
    std(stdlen).Al = False
    Form5.Show
    Unload Me
    Me.Hide
End If
End Sub

Private Sub Command2_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Or Combo1.Text = "" Or Combo2.Text = "" Then
    MsgBox ("Please fill the empty spaces")
Else
    Form5.Show
End If
End Sub

Private Sub Form_Load()
Me.Top = 1000
Me.Left = 4000
Me.Height = 8000
Me.Width = 12000
Form3.BackColor = &HFF80FF

Label1.Caption = vbCrLf & "    CHECK - IN"
Label1.BackColor = &H8000000D
Label1.FontBold = True
Label1.FontSize = 20

Label2.Caption = Label2.Caption
Label2.FontSize = 10
Label2.BackColor = Form3.BackColor
Label2.FontBold = True

Label3.Caption = Label3.Caption
Label3.FontSize = 10
Label3.BackColor = Form3.BackColor
Label3.FontBold = True

Label4.Caption = Label4.Caption
Label4.FontSize = 10
Label4.BackColor = Form3.BackColor
Label4.FontBold = True

Label5.Caption = Label5.Caption
Label5.FontSize = 10
Label5.BackColor = Form3.BackColor
Label5.FontBold = True

Label6.Caption = Label6.Caption
Label6.FontSize = 10
Label6.BackColor = Form3.BackColor
Label6.FontBold = True

Label7.Caption = Label7.Caption
Label7.FontSize = 10
Label7.BackColor = Form3.BackColor
Label7.FontBold = True

Combo1.AddItem ("FEMALE")
Combo1.AddItem ("MALE")
Combo1.FontSize = 10

Combo2.AddItem ("A+")
Combo2.AddItem ("AB")
Combo2.AddItem ("A-")
Combo2.AddItem ("B+")
Combo2.AddItem ("B-")
Combo2.AddItem ("O+")
Combo2.AddItem ("O-")
Combo2.FontSize = 10

Text1.FontSize = 20
Text2.FontSize = 15
Text3.FontSize = 20
Text4.FontSize = 20

End Sub

Private Sub Text3_Change()
If IsNumeric(Text3.Text) Then
Else
Text3.Text = ""
End If
End Sub

Private Sub Text4_Change()
If IsNumeric(Text4.Text) Then
Else
Text4.Text = ""
End If
End Sub
