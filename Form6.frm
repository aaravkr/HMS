VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form6 
   BackColor       =   &H000040C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Room Management"
   ClientHeight    =   9165
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   15915
   FillColor       =   &H00FFFFFF&
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9165
   ScaleWidth      =   15915
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Add room"
      Height          =   495
      Left            =   8760
      TabIndex        =   6
      Top             =   2400
      Width           =   1815
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   5415
      Left            =   360
      TabIndex        =   5
      Top             =   3120
      Width           =   10815
      _ExtentX        =   19076
      _ExtentY        =   9551
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
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
      NumItems        =   6
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Room No."
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Room Type"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "Status"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "Std. Name #1"
         Object.Width           =   3881
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "Std Name. #2"
         Object.Width           =   3881
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Text            =   "Std. Name #3"
         Object.Width           =   3881
      EndProperty
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      Left            =   4920
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   2040
      Width           =   1575
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   4920
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   1080
      Width           =   1575
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   4920
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   120
      Width           =   3615
   End
   Begin VB.Label Label1 
      BackColor       =   &H000040C0&
      Height          =   495
      Left            =   480
      TabIndex        =   7
      Top             =   120
      Width           =   3975
   End
   Begin VB.Label Label3 
      BackColor       =   &H000040C0&
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   2040
      Width           =   3975
   End
   Begin VB.Label Label2 
      BackColor       =   &H000040C0&
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   1080
      Width           =   3975
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Loadlist()
Dim list As ListItem
Dim i, j As Integer
If Combo1.Text = "" Then
Else
ListView1.ListItems.Clear
If Combo1.Text = "M.S.I.T Boy's Hostel" Then
    For i = 1 To BHostel.rmlen
    Set list = ListView1.ListItems.Add(, , 100 + i)
    If BHostel.rm(i).Ac Then
        list.SubItems(1) = "AC"
    Else
        list.SubItems(1) = "NON-AC"
    End If
    If BHostel.rm(i).Al Then
        list.SubItems(2) = "FULL"
    Else
        list.SubItems(2) = "AVAILABLE"
    End If
    For j = 1 To BHostel.rm(i).stdlen
    list.SubItems(2 + j) = BHostel.rm(i).std(j).Name
    Next
    Next
Else
    For i = 1 To GHostel.rmlen
    Set list = ListView1.ListItems.Add(, , 100 + i)
    If GHostel.rm(i).Ac Then
        list.SubItems(1) = "AC"
    Else
        list.SubItems(1) = "NON-AC"
    End If
    If GHostel.rm(i).Al Then
        list.SubItems(2) = "FULL"
    Else
        list.SubItems(2) = "AVAILABLE"
    End If
    For j = 1 To GHostel.rm(i).stdlen
    list.SubItems(2 + j) = GHostel.rm(i).std(j).Name
    Next
    Next
End If
End If
End Sub

Private Sub Combo1_Click()
Call Loadlist
End Sub

Private Sub Command1_Click()
If Combo1.Text = "" Or Combo2.Text = "" Or Combo3.Text = "" Then
    MsgBox ("Option left blank !")
Else
    If Combo1.Text = "M.S.I.T Boy's Hostel" Then
        BHostel.rmlen = BHostel.rmlen + 1
        ReDim Preserve BHostel.rm(BHostel.rmlen)
        BHostel.rm(BHostel.rmlen).Ac = (Combo2.Text = "AC")
        BHostel.rm(BHostel.rmlen).Cap = Combo3.Text
        BHostel.rm(BHostel.rmlen).stdlen = 0
        BHostel.rm(BHostel.rmlen).Al = False
    Else
        GHostel.rmlen = GHostel.rmlen + 1
        ReDim Preserve GHostel.rm(GHostel.rmlen)
        GHostel.rm(GHostel.rmlen).Ac = (Combo2.Text = "AC")
        GHostel.rm(GHostel.rmlen).Cap = Combo3.Text
        GHostel.rm(GHostel.rmlen).stdlen = 0
        GHostel.rm(GHostel.rmlen).Al = False
    End If
End If
Call Loadlist
End Sub

Private Sub Form_Load()
Me.Top = 1000
Me.Left = 4000
Me.Height = 8000
Me.Width = 12000

ListView1.Width = Me.Width - 1000
ListView1.Height = 4000

Combo1.AddItem ("M.S.I.T Boy's Hostel")
Combo1.AddItem ("M.S.I.T Girl's Hostel")
Combo2.AddItem ("AC")
Combo2.AddItem ("NON-AC")
Combo3.AddItem ("1")
Combo3.AddItem ("2")
Combo3.AddItem ("3")

Label1.Caption = "Select Hostel"
Label1.FontSize = 15
Label1.FontBold = True
Label2.Caption = "Room Type"
Label2.FontSize = 15
Label2.FontBold = True
Label3.Caption = "Room Capacity"
Label3.FontSize = 15
Label3.FontBold = True
Call Loadlist
End Sub





