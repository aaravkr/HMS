VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00C0C0C0&
   Caption         =   "Hostel Allocation System (1.0)"
   ClientHeight    =   3135
   ClientLeft      =   165
   ClientTop       =   810
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   10755
   ScaleWidth      =   20370
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      Height          =   6735
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Visible         =   0   'False
      Width           =   3615
      Begin VB.CommandButton Command4 
         Caption         =   "About"
         Height          =   975
         Left            =   240
         TabIndex        =   5
         Top             =   5520
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Student Allocation"
         Height          =   975
         Left            =   240
         TabIndex        =   4
         Top             =   4200
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Room Management"
         Height          =   975
         Left            =   240
         TabIndex        =   3
         Top             =   2880
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Student Records"
         Height          =   975
         Left            =   240
         TabIndex        =   2
         Top             =   1560
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H8000000B&
         Caption         =   "Student Registration"
         Height          =   975
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Visible         =   0   'False
         Width           =   3015
      End
   End
   Begin VB.Image Image1 
      Height          =   4770
      Left            =   3960
      Picture         =   "Form2.frx":0000
      Stretch         =   -1  'True
      Top             =   840
      Width           =   7530
   End
   Begin VB.Menu Allocation 
      Caption         =   "Allocation"
   End
   Begin VB.Menu Window 
      Caption         =   "Window"
      Begin VB.Menu Maximize 
         Caption         =   "Maximize"
      End
      Begin VB.Menu Minimize 
         Caption         =   "Minimize"
      End
      Begin VB.Menu Restore 
         Caption         =   "Restore"
      End
   End
   Begin VB.Menu Close 
      Caption         =   "Close"
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Unload(Cancel As Integer)
End
End Sub
Private Sub Allocation_Click()
Frame1.Visible = True
Command1.Visible = True
Command2.Visible = True
Command3.Visible = True
Command4.Visible = True
Command5.Visible = True

End Sub

Private Sub Close_Click()
Unload Me
Me.Hide
End
End Sub

Private Sub Command1_Click()
Form3.Show
End Sub

Private Sub Command6_Click()

End Sub

Private Sub Command2_Click()
Form4.Show
End Sub

Private Sub Command3_Click()
Form6.Show
End Sub

Private Sub Command4_Click()
Form8.Show
End Sub

Private Sub Command5_Click()
Form7.Show
End Sub

Private Sub Form_Load()
Me.Top = 1000
Me.Left = 4000
Me.Height = 8000
Me.Width = 12000

stdlen = 0
GHostel.rmlen = 0
BHostel.rmlen = 0
End Sub

Private Sub Maximize_Click()
Form2.WindowState = 2
End Sub

Private Sub Minimize_Click()
Form2.WindowState = 1
End Sub

Private Sub Restore_Click()
Form2.WindowState = 0
End Sub
