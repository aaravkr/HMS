VERSION 5.00
Begin VB.Form Form7 
   BackColor       =   &H0000C0C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Hostel Management"
   ClientHeight    =   5865
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   13500
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5865
   ScaleWidth      =   13500
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   3600
      TabIndex        =   11
      Top             =   3720
      Width           =   1695
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Cancel Payment"
      Height          =   495
      Left            =   7320
      TabIndex        =   9
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Pay"
      Height          =   495
      Left            =   5160
      TabIndex        =   8
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Deallocate"
      Height          =   495
      Left            =   3000
      TabIndex        =   7
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Allocate"
      Height          =   495
      Left            =   840
      TabIndex        =   6
      Top             =   5040
      Width           =   1095
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   3600
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   2640
      Width           =   1695
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   3600
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   1560
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3600
      TabIndex        =   3
      Top             =   480
      Width           =   3375
   End
   Begin VB.Label Label4 
      BackColor       =   &H0000C0C0&
      Caption         =   "Room No."
      Height          =   375
      Left            =   600
      TabIndex        =   10
      Top             =   3720
      Width           =   2295
   End
   Begin VB.Label Label3 
      BackColor       =   &H0000C0C0&
      Caption         =   "Room Type"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label Label2 
      BackColor       =   &H0000C0C0&
      Caption         =   "Meal Type"
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Label Label1 
      BackColor       =   &H0000C0C0&
      Caption         =   "Reg No."
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   480
      Width           =   2295
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim i As Integer
If Text1.Text = "" Or Combo1.Text = "" Or Combo2.Text = "" Or Text2.Text = "" Then
    MsgBox "Fill the details !"
Else
    For i = 1 To stdlen
    If std(i).Reg = Text1.Text Then
        Exit For
    End If
    Next
    If i > stdlen Then
        MsgBox "Reg no. not found !"
        Exit Sub
    End If
    If std(i).Sex = "MALE" Then
        If Val(Text2.Text) - 100 >= 1 And Val(Text2.Text) - 100 <= BHostel.rmlen Then
            If BHostel.rm(Val(Text2.Text) - 100).Al Then
                MsgBox "Room is full !"
                Exit Sub
            Else
                If BHostel.rm(Val(Text2.Text) - 100).Ac Xor Combo2.Text = "AC" Then
                    MsgBox "Room type mismatch !"
                    Exit Sub
                End If
                If std(i).Al Then
                    MsgBox "Already Allocated !"
                    Exit Sub
                Else
                    BHostel.rm(Val(Text2.Text) - 100).stdlen = BHostel.rm(Val(Text2.Text) - 100).stdlen + 1
                    ReDim Preserve BHostel.rm(Val(Text2.Text) - 100).std(BHostel.rm(Val(Text2.Text) - 100).stdlen)
                    BHostel.rm(Val(Text2.Text) - 100).std(BHostel.rm(Val(Text2.Text) - 100).stdlen) = std(i)
                    std(i).MType = Combo1.Text
                    std(i).Al = True
                    MsgBox "Allocated successfully!"
                    If BHostel.rm(Val(Text2.Text) - 100).stdlen = Val(BHostel.rm(Val(Text2.Text) - 100).Cap) Then
                        BHostel.rm(Val(Text2.Text) - 100).Al = True
                    End If
                End If
            End If
        Else
            MsgBox "No rooms found !"
            Exit Sub
        End If
    
    
    Else
       If Val(Text2.Text) - 100 >= 1 And Val(Text2.Text) - 100 <= GHostel.rmlen Then
            If GHostel.rm(Val(Text2.Text) - 100).Al Then
                MsgBox "Room is full !"
                Exit Sub
            Else
                If GHostel.rm(Val(Text2.Text) - 100).Ac Xor Combo2.Text = "AC" Then
                    MsgBox "Room type mismatch !"
                    Exit Sub
                End If
                If std(i).Al Then
                    MsgBox "Already Allocated !"
                    Exit Sub
                Else
                    GHostel.rm(Val(Text2.Text) - 100).stdlen = GHostel.rm(Val(Text2.Text) - 100).stdlen + 1
                    ReDim Preserve GHostel.rm(Val(Text2.Text) - 100).std(GHostel.rm(Val(Text2.Text) - 100).stdlen)
                    GHostel.rm(Val(Text2.Text) - 100).std(GHostel.rm(Val(Text2.Text) - 100).stdlen) = std(i)
                    std(i).MType = Combo1.Text
                    std(i).Al = True
                    MsgBox "Allocated successfully!"
                    If GHostel.rm(Val(Text2.Text) - 100).stdlen = Val(GHostel.rm(Val(Text2.Text) - 100).Cap) Then
                        GHostel.rm(Val(Text2.Text) - 100).Al = True
                    End If
                End If
            End If
        Else
            MsgBox "No rooms found !"
            Exit Sub
        End If
    
    End If
End If
End Sub

Private Sub Command2_Click()
Dim i, j, k As Integer
If Text1.Text = "" Then
    MsgBox "Please enter reg no. !"
    Exit Sub
Else
    For i = 1 To BHostel.rmlen
        For j = 1 To BHostel.rm(i).stdlen
            If BHostel.rm(i).std(j).Reg = Text1.Text Then
                For k = j To BHostel.rm(i).stdlen - 1
                    BHostel.rm(i).std(k) = BHostel.rm(i).std(k + 1)
                Next
                BHostel.rm(i).stdlen = BHostel.rm(i).stdlen - 1
                MsgBox "Deallocated successfully"
                For k = 1 To stdlen
                    If std(k).Reg = BHostel.rm(i).std(k).Reg Then
                        std(k).Al = False
                    Exit For
                    End If
                Next
                Exit Sub
            End If
        Next
    Next
    For i = 1 To GHostel.rmlen
        For j = 1 To GHostel.rm(i).stdlen
            If GHostel.rm(i).std(j).Reg = Text1.Text Then
                For k = j To GHostel.rm(i).stdlen - 1
                    GHostel.rm(i).std(k) = GHostel.rm(i).std(k + 1)
                Next
                GHostel.rm(i).stdlen = GHostel.rm(i).stdlen - 1
                GHostel.rm(i).Al = False
                MsgBox "Deallocated successfully"
                For k = 1 To stdlen
                    If std(k).Reg = GHostel.rm(i).std(k).Reg Then
                        std(k).Al = False
                    Exit For
                    End If
                Next
                Exit Sub
            End If
        Next
    Next
    MsgBox "Reg no. not found !"
End If
End Sub

Private Sub Command3_Click()
If Text1.Text = "" Then
    MsgBox "Please enter reg no. !"
    Exit Sub
Else
    For i = 1 To stdlen
        If std(i).Reg = Text1.Text Then
            std(i).Paid = std(i).Paid + 1
            MsgBox "Payment successful !"
            Exit Sub
        End If
    Next
    MsgBox "Reg no. not found !"
End If
End Sub

Private Sub Command4_Click()
If Text1.Text = "" Then
    MsgBox "Please enter reg no. !"
    Exit Sub
Else
    For i = 1 To stdlen
        If std(i).Reg = Text1.Text Then
            If std(i).Paid = 0 Then
                MsgBox "INVALID ACTION !"
                Exit Sub
            End If
            std(i).Paid = std(i).Paid - 1
            MsgBox "Payment successfully cancelled !"
            Exit Sub
        End If
    Next
    MsgBox "Reg no. not found !"
End If
End Sub

Private Sub Form_Load()
Me.Top = 1000
Me.Left = 4000
Me.Height = 8000
Me.Width = 12000

Combo1.AddItem ("Non-veg")
Combo1.AddItem ("Veg")

Combo2.AddItem ("AC")
Combo2.AddItem ("NON-AC")
 
Label1.FontBold = True
Label1.FontSize = 15
Label2.FontBold = True
Label2.FontSize = 15
Label3.FontBold = True
Label3.FontSize = 15
Label4.FontBold = True
Label4.FontSize = 15

Text1.FontSize = 15
Text2.FontSize = 15

End Sub

