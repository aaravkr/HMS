VERSION 5.00
Begin VB.Form Form5 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Student Details"
   ClientHeight    =   9165
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   16980
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9165
   ScaleWidth      =   16980
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label14 
      Height          =   375
      Left            =   10440
      TabIndex        =   13
      Top             =   5520
      Width           =   3735
   End
   Begin VB.Label Label13 
      Height          =   375
      Left            =   7200
      TabIndex        =   12
      Top             =   5520
      Width           =   3495
   End
   Begin VB.Label Label12 
      Height          =   615
      Left            =   4320
      TabIndex        =   11
      Top             =   6240
      Width           =   2175
   End
   Begin VB.Label Label11 
      Height          =   375
      Left            =   4320
      TabIndex        =   10
      Top             =   5520
      Width           =   2175
   End
   Begin VB.Label Label10 
      Height          =   615
      Left            =   4320
      TabIndex        =   9
      Top             =   3960
      Width           =   8295
   End
   Begin VB.Label Label9 
      Height          =   615
      Left            =   4320
      TabIndex        =   8
      Top             =   2880
      Width           =   8295
   End
   Begin VB.Label Label8 
      Height          =   1095
      Left            =   4320
      TabIndex        =   7
      Top             =   1320
      Width           =   8295
   End
   Begin VB.Label Label7 
      Height          =   615
      Left            =   4320
      TabIndex        =   6
      Top             =   360
      Width           =   8295
   End
   Begin VB.Label Label6 
      Height          =   1215
      Left            =   1080
      TabIndex        =   5
      Top             =   6240
      Width           =   2175
   End
   Begin VB.Label Label5 
      Height          =   375
      Left            =   1080
      TabIndex        =   4
      Top             =   5520
      Width           =   2175
   End
   Begin VB.Label Label4 
      Height          =   1215
      Left            =   1080
      TabIndex        =   3
      Top             =   3960
      Width           =   2175
   End
   Begin VB.Label Label3 
      Height          =   735
      Left            =   1080
      TabIndex        =   2
      Top             =   2880
      Width           =   2175
   End
   Begin VB.Label Label2 
      Height          =   615
      Left            =   1080
      TabIndex        =   1
      Top             =   1320
      Width           =   2175
   End
   Begin VB.Label Label1 
      Height          =   615
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   2175
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.Top = 1000
Me.Left = 4000
Me.Height = 8000
Me.Width = 12000
Form5.BackColor = &HC0E0FF
Label1.Caption = "NAME"
Label1.FontBold = True
Label1.FontSize = 15
Label1.BackColor = &HC0E0FF
Label2.Caption = "ADDRESS"
Label2.FontBold = True
Label2.FontSize = 15
Label2.BackColor = &HC0E0FF
Label3.Caption = "CONTACT NO."
Label3.FontBold = True
Label3.FontSize = 15
Label3.BackColor = &HC0E0FF
Label4.Caption = "GUARDIAN'S CONTACT NO."
Label4.FontBold = True
Label4.FontSize = 15
Label4.BackColor = &HC0E0FF
Label5.Caption = "SEX"
Label5.FontBold = True
Label5.FontSize = 15
Label5.BackColor = &HC0E0FF
Label6.Caption = "BLOOD GROUP"
Label6.FontBold = True
Label6.FontSize = 15
Label6.BackColor = &HC0E0FF
Label7.Caption = std(stdlen).Name
Label7.FontSize = 15
Label7.BackColor = &HC0E0FF
Label8.Caption = std(stdlen).Address
Label8.FontSize = 15
Label8.BackColor = &HC0E0FF
Label9.Caption = std(stdlen).Contact
Label9.FontSize = 15
Label9.BackColor = &HC0E0FF
Label10.Caption = std(stdlen).GContact
Label10.FontSize = 15
Label10.BackColor = &HC0E0FF
Label11.Caption = std(stdlen).Sex
Label11.FontSize = 15
Label11.BackColor = &HC0E0FF
Label12.Caption = std(stdlen).BGroup
Label12.FontSize = 15
Label12.BackColor = &HC0E0FF
Label13.Caption = "REGISTRATION NO."
Label13.FontSize = 15
Label13.BackColor = &HC0E0FF
Label13.FontBold = True
Label14.Caption = std(stdlen).Reg
Label14.FontSize = 15
Label14.BackColor = &HC0E0FF
End Sub

