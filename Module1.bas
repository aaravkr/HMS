Attribute VB_Name = "Module1"
Public Type Student
    Name As String
    Address As String
    Contact As String
    GContact As String
    Sex As String
    BGroup As String
    Reg As String
    MType As String
    Paid As Integer
    Al As Boolean
End Type

Public std() As Student
Public stdlen As Integer

Public Type Room
    Cap As String
    Ac As Boolean
    std() As Student
    Al As Boolean
    stdlen As Integer
End Type

Public Type Hostel
    rm() As Room
    rmlen As Integer
End Type

Public GHostel As Hostel
Public BHostel As Hostel
