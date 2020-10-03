Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            Response.AppendHeader("Cache-Control", "no-store")
        End If
    End Sub

    Protected Sub btn_Ingresar_Click(sender As Object, e As EventArgs) Handles btn_Ingresar.Click
        'Dim Usuarios As New Usuarios
        'Dim Activos As New Cl_Activos
        'Dim usuario As String
        'Dim pass As String
        'Dim permiso As Integer


        'usuario = txt_Usuario.Text.ToUpper()
        'pass = txt_Password.Text

        'If Validar() = True Then
        'Try
        '        If Usuarios.LogearUsuario(usuario, pass) = 1 Then
        '            permiso = Usuarios.PermisoSistema(usuario)

        '            If (permiso = 1) Then
        '                'Informacion de el usuario
        '                Dim user(7) As String
        '                user = Usuarios.TraerDatosUsuario_Principal(usuario)

        '                'Informacion de el catalogo de activos
        '                Dim act(1) As String
        '                act = Activos.Traer_idActivos("Activo")

        '                If user(5) = act(0) Then
        '                    Session("Usuario") = user(0)
        '                    Session("Nombre") = user(1)
        '                    Session("Privilegio") = user(3)
        '                    Session("Subcentro") = user(4)
        '                    Session("Subarea") = user(6)
        '                    ConexionSistemaUsuario.conn.Close()


        Response.Redirect("Frm_Principal.aspx", False)
        '            Else
        '                lbl_validar.Visible = True
        '                lbl_validar.Text = "Usuario existe pero no esta activado"
        '                Borrar()
        '                ConexionSistemaUsuario.conn.Close()
        '            End If
        '        Else
        '            ScriptManager.RegisterStartupScript(Me, Me.Page.GetType, "advertencia", "advertencia()", True)
        '        End If
        '    Else
        '        lbl_validar.Visible = True
        '        lbl_validar.Text = "Usuario o la Contraseña no se encontraron"
        '        Borrar()
        '        ConexionSistemaUsuario.conn.Close()
        '        SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
        '    End If
        'Catch ex As Exception
        '    ex.ToString()
        '    ConexionSistemaUsuario.conn.Close()
        '    SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
        'End Try

        'End If
    End Sub

    Private Sub Borrar()
        txt_Usuario.Text = ""
        txt_Password.Text = ""
    End Sub

    Private Function Validar()
        Dim Resultado As Boolean = False
        If txt_Usuario.Text = "" And txt_Password.Text = "" Then
            lbl_validar.Visible = True
            lbl_validar.Text = "Escriba su Usuario y Contraseña"
            Resultado = False

        ElseIf txt_Usuario.Text = "" Then
            lbl_validar.Visible = True
            lbl_validar.Text = "Escriba su Usuario"
            Resultado = False
        ElseIf txt_Password.Text = "" Then
            lbl_validar.Visible = True
            lbl_validar.Text = "Escriba su Contraseña"
            Resultado = False
        Else
            Resultado = True
        End If
        Return Resultado
    End Function

    Protected Sub txt_Usuario_TextChanged(sender As Object, e As EventArgs) Handles txt_Usuario.TextChanged
        Me.txt_Usuario.Text = UCase(Me.txt_Usuario.Text)
    End Sub

End Class