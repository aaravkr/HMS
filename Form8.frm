VERSION 5.00
Begin VB.Form Form8 
   BackColor       =   &H8000000A&
   Caption         =   "About"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form8"
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label10 
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   4080
      TabIndex        =   9
      Top             =   6840
      Width           =   6255
   End
   Begin VB.Label Label9 
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   480
      TabIndex        =   8
      Top             =   6840
      Width           =   3855
   End
   Begin VB.Label Label8 
      BackColor       =   &H00FFFF00&
      ForeColor       =   &H8000000B&
      Height          =   495
      Left            =   480
      TabIndex        =   7
      Top             =   3480
      Width           =   5655
   End
   Begin VB.Label Label7 
      BackColor       =   &H8000000A&
      Height          =   375
      Left            =   480
      TabIndex        =   6
      Top             =   6000
      Width           =   5655
   End
   Begin VB.Label Label6 
      BackColor       =   &H8000000A&
      Height          =   375
      Left            =   480
      TabIndex        =   5
      Top             =   5400
      Width           =   5655
   End
   Begin VB.Label Label5 
      BackColor       =   &H8000000A&
      Height          =   375
      Left            =   480
      TabIndex        =   4
      Top             =   4800
      Width           =   5655
   End
   Begin VB.Label Label4 
      BackColor       =   &H8000000A&
      Height          =   375
      Left            =   480
      TabIndex        =   3
      Top             =   4200
      Width           =   5655
   End
   Begin VB.Label Label3 
      BackColor       =   &H8000000A&
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Top             =   2640
      Width           =   5655
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFF00&
      ForeColor       =   &H8000000B&
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   1680
      Width           =   5655
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FF8080&
      ForeColor       =   &H8000000B&
      Height          =   975
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   5655
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Me.Top = 1000
Me.Left = 4000
Me.Height = 8000
Me.Width = 12000

Label1.Caption = "HOSTEL MANAGEMENT SYSTEM (1.0)"
Label1.FontBold = True
Label1.FontSize = 20
Label2.Caption = "DEVELOPER - "
Label2.FontBold = True
Label2.FontSize = 20
Label3.Caption = "Rohit Roy Chowdhury"
Label3.FontSize = 15
Label8.Caption = " - - - ALSO DEVELOPED BY - - -"
Label8.FontBold = True
Label8.FontSize = 20
Label4.Caption = "Ronit Anand"
Label4.FontSize = 15
Label5.Caption = "Ritik Raj"
Label5.FontSize = 15
Label6.Caption = "Satish Kumar "
Label6.FontSize = 15
Label7.Caption = "Samreen Fatima"
Label7.FontSize = 15
Label9.Caption = "For support and licensing, reach us at  -"
Label9.FontSize = 10
Label10.Caption = "roychowdhuryrohit.dev@gmail.com"
Label10.FontItalic = True
Label10.FontBold = True
Label10.FontSize = 10
End Sub

Private Sub Label1_Click()

End Sub

Private Sub Label2_Click()

End Sub
