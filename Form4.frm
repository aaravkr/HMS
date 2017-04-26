VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form4 
   BackColor       =   &H000080FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Student Records"
   ClientHeight    =   9075
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   16035
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9075
   ScaleWidth      =   16035
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
      Height          =   495
      Left            =   9240
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   6480
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Delete"
      Height          =   495
      Left            =   7560
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   6480
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   4200
      TabIndex        =   1
      Top             =   5400
      Width           =   6135
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   4815
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13695
      _ExtentX        =   24156
      _ExtentY        =   8493
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   0
      BackColor       =   -2147483637
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   9
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Reg No."
         Object.Width           =   2117
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Name"
         Object.Width           =   4366
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Address"
         Object.Width           =   4366
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Contact No."
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "Parent's Contact No."
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Text            =   "Sex"
         Object.Width           =   1764
      EndProperty
      BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   6
         Text            =   "No. of payments"
         Object.Width           =   2999
      EndProperty
      BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   7
         Text            =   "Meal type"
         Object.Width           =   2117
      EndProperty
      BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   8
         Text            =   "Blood group"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Label Label1 
      BackColor       =   &H000080FF&
      Height          =   375
      Left            =   840
      TabIndex        =   2
      Top             =   5520
      Width           =   3135
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Loadlist()
Dim list As ListItem
Dim i As Integer
ListView1.ListItems.Clear
For i = 1 To stdlen
    Set list = ListView1.ListItems.Add(, , std(i).Reg)
    list.SubItems(1) = std(i).Name
    list.SubItems(2) = std(i).Address
    list.SubItems(3) = std(i).Contact
    list.SubItems(4) = std(i).GContact
    list.SubItems(5) = std(i).Sex
    list.SubItems(6) = std(i).Paid
    list.SubItems(7) = std(i).MType
    list.SubItems(8) = std(i).BGroup
Next
End Sub

Private Sub Command1_Click()
Dim i, j As Integer
If Text1.Text = "" Then
    MsgBox "Enter reg no. !"
Else
    For i = 1 To stdlen
        If std(i).Reg = Text1.Text Then
            Exit For
        End If
    Next
    If i <= stdlen Then
        For j = i To stdlen - 1
            std(i) = std(i + 1)
        Next
        stdlen = stdlen - 1
        Call Loadlist
        ReDim Preserve std(stdlen)
    Else
        MsgBox "Reg no. not found !"
    End If
End If
End Sub

Private Sub Command2_Click()
Text1.Text = ""
End Sub

Private Sub Form_Load()
Me.Top = 1000
Me.Left = 4000
Me.Height = 8000
Me.Width = 12000

ListView1.Width = Me.Width
Call Loadlist

Label1.Caption = "Enter reg no. :-"
Label1.FontBold = True
Label1.FontSize = 16

Text1.FontSize = 16

End Sub

Private Sub List1_Click()

End Sub

