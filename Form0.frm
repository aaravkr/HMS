VERSION 5.00
Begin VB.Form Form0 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   0  'None
   ClientHeight    =   7680
   ClientLeft      =   60
   ClientTop       =   60
   ClientWidth     =   14190
   LinkTopic       =   "Form1"
   ScaleHeight     =   7680
   ScaleWidth      =   14190
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   1680
      Top             =   3480
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   2295
      Left            =   4560
      TabIndex        =   0
      Top             =   2640
      Width           =   2415
   End
   Begin VB.Shape Shape1 
      Height          =   2775
      Left            =   4320
      Top             =   2400
      Width           =   2895
   End
End
Attribute VB_Name = "Form0"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim r As Integer



Private Sub Form_Load()
Me.Top = 1000
Me.Left = 4000
Me.Height = 8000
Me.Width = 12000
Form0.BackColor = &H0&
Label1.Caption = vbCrLf + "HOSTEL" + vbCrLf + vbCrLf + "MANAGEMENT" + vbCrLf + vbCrLf + "SYSTEM "
Label1.FontBold = True
Label1.FontSize = 13

r = 5
End Sub


Private Sub Form_MouseDown(button As Integer, shift As Integer, X As Single, Y As Single)
Unload Form0
Form0.Hide
Form1.Show
End Sub


Private Sub Label1_Click()

End Sub

Private Sub Timer1_Timer()
If r > 4000 Then
r = 5
Cls
End If
Circle (0, 0), r, RGB(Rnd * 255, Rnd * 255, Rnd * 255)
Circle (0, 8000), r, RGB(Rnd * 255, Rnd * 255, Rnd * 255)
Circle (12000, 0), r, RGB(Rnd * 255, Rnd * 255, Rnd * 255)
Circle (12000, 8000), r, RGB(Rnd * 255, Rnd * 255, Rnd * 255)
r = r + 5

Static c As Integer
If c Then
Shape1.BorderColor = RGB(0, 0, 255)
Else
Shape1.BorderColor = RGB(0, 255, 0)
End If
c = Not c
End Sub
