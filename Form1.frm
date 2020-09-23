VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Circles by JB!"
   ClientHeight    =   6420
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7560
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   6420
   ScaleWidth      =   7560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Cls"
      Height          =   255
      Left            =   600
      TabIndex        =   1
      Top             =   0
      Width           =   495
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Invert"
      Height          =   255
      Left            =   1200
      TabIndex        =   3
      Top             =   0
      Width           =   735
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Start"
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Left            =   2520
      Top             =   120
   End
   Begin VB.CommandButton Command1 
      Height          =   495
      Left            =   3480
      TabIndex        =   0
      Top             =   120
      Width           =   495
      Visible         =   0   'False
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X As Integer
Dim Y As Integer

Dim R As Integer
Dim G As Integer
Dim B As Integer

Dim S As Integer

Dim RA As Integer

Private Sub Command1_Click()
On Error GoTo err
X = Rnd * Form1.Width
Y = Rnd * Form1.Height
S = 1

R = Rnd * 255
G = Rnd * 255
B = Rnd * 255


Do

RA = RA + 1

If RA >= 20 And Check1.Value = 0 Then
R = R - 1
G = G - 1
B = B - 1
RA = 0
End If

If RA >= 20 And Check1.Value = 1 Then
R = R + 1
G = G + 1
B = B + 1
RA = 0

If Form1.ForeColor = RGB(255, 255, 255) Then GoTo err

End If

Form1.ForeColor = RGB(R, G, B)
S = S + 1
Circle (X, Y), S
Loop While S < 10000

Exit Sub
err:
Exit Sub

End Sub

Private Sub Command2_Click()
Form1.Cls
End Sub

Private Sub Command3_Click()
Timer1.Interval = 60
End Sub



Private Sub Timer1_Timer()

Command1.Value = True

End Sub


