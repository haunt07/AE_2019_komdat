VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4440
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   7695
   LinkTopic       =   "Form1"
   ScaleHeight     =   4440
   ScaleWidth      =   7695
   StartUpPosition =   3  'Windows Default
   Begin MSCommLib.MSComm MSComm1 
      Left            =   6720
      Top             =   3360
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      CommPort        =   7
      DTREnable       =   -1  'True
      BaudRate        =   57600
      SThreshold      =   1
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OFF"
      Height          =   1095
      Left            =   3840
      TabIndex        =   1
      Top             =   1080
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ON"
      Height          =   1095
      Left            =   1320
      TabIndex        =   0
      Top             =   1080
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    MSComm1.Output = "1"
End Sub

Private Sub Command2_Click()
    MSComm1.Output = "0"
End Sub

Private Sub Form_Load()

    If MSComm1.PortOpen = False Then
        MSComm1.PortOpen = True
    End If
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If MSComm1.PortOpen = True Then
        MSComm1.PortOpen = False
    End If
End Sub
