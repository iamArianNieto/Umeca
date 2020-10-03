Imports System.Data.SqlClient

Public Class Usuarios
    Public Function LogearUsuario(ByRef usuario As String, ByRef contrasena As String)
        ConexionSistemaUsuario.conectarse()
        Dim Existe As Integer = 0

        ConexionSistemaUsuario.cmd.CommandType = CommandType.Text
        ConexionSistemaUsuario.cmd.Connection = ConexionSistemaUsuario.conn

        ConexionSistemaUsuario.sql = ""
        ConexionSistemaUsuario.sql = "select count(*) from Usuarios where Numero_cuenta = '" & usuario & "' and Contraseña = '" & contrasena & "' "
        ConexionSistemaUsuario.cmd.CommandText = ConexionSistemaUsuario.sql
        Try

            ConexionSistemaUsuario.dr2 = ConexionSistemaUsuario.cmd.ExecuteReader()
            'Existe algun campo
            If ConexionSistemaUsuario.dr2.HasRows Then
                While ConexionSistemaUsuario.dr2.Read()
                    Existe = Convert.ToInt32(ConexionSistemaUsuario.dr2(0))

                End While
                ConexionSistemaUsuario.conn.Close()
                SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
            Else
                Existe = 0
                ConexionSistemaUsuario.conn.Close()
                SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
            End If
        Catch ex As Exception
            ConexionSistemaUsuario.conn.Close()
            SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
        End Try
        Return Existe

    End Function

    Public Function TraerDatosUsuario_Principal(ByRef usuario As String)
        ConexionSistemaUsuario.conectarse()
        Dim Datos(7) As String

        ConexionSistemaUsuario.cmd.CommandType = CommandType.Text
        ConexionSistemaUsuario.cmd.Connection = ConexionSistemaUsuario.conn
        ConexionSistemaUsuario.sql = ""
        ConexionSistemaUsuario.sql = "select u.Numero_cuenta,CONCAT(u.Nombre,' ',u.Ape_paterno,' ',u.Ape_materno) as 'Nombre', u.Contraseña, c.Id_privilegio, c.Id_subcentro, u.Id_activo, u.Id_subarea from Usuarios u inner join Control_Sistema c on u.Numero_cuenta=c.Numero_Cuenta  where c.Sigla_sistema='GD' and c.Numero_cuenta = '" & usuario & "'"
        ConexionSistemaUsuario.cmd.CommandText = ConexionSistemaUsuario.sql
        Try
            ConexionSistemaUsuario.dr2 = ConexionSistemaUsuario.cmd.ExecuteReader()
            'Existe algun campo
            If ConexionSistemaUsuario.dr2.HasRows Then
                While ConexionSistemaUsuario.dr2.Read()
                    Datos(0) = ConexionSistemaUsuario.dr2(0).ToString
                    Datos(1) = ConexionSistemaUsuario.dr2(1).ToString
                    Datos(2) = ConexionSistemaUsuario.dr2(2).ToString
                    Datos(3) = ConexionSistemaUsuario.dr2(3).ToString
                    Datos(4) = ConexionSistemaUsuario.dr2(4).ToString
                    Datos(5) = ConexionSistemaUsuario.dr2(5).ToString
                    Datos(6) = ConexionSistemaUsuario.dr2(6).ToString
                End While

                ConexionSistemaUsuario.conn.Close()
                SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
            Else
                Datos(0) = ""
                Datos(1) = ""
                Datos(2) = ""
                Datos(3) = ""
                Datos(4) = ""
                Datos(5) = ""
                Datos(6) = ""
                ConexionSistemaUsuario.conn.Close()
                SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
            End If
        Catch ex As Exception
            ex.ToString()
            ConexionSistemaUsuario.conn.Close()
            SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
        End Try
        ConexionSistemaUsuario.conn.Close()
        SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
        Return Datos
    End Function

    Public Function PermisoSistema(ByRef usuario As String)
        ConexionSistemaUsuario.conectarse()
        Dim tienePermiso As Integer = 0

        ConexionSistemaUsuario.cmd.CommandType = CommandType.Text
        ConexionSistemaUsuario.cmd.Connection = ConexionSistemaUsuario.conn

        ConexionSistemaUsuario.sql = ""
        ConexionSistemaUsuario.sql = "select count(*) as Permiso from Control_Sistema where Sigla_sistema='GD' and Numero_Cuenta='" & usuario & "'"
        ConexionSistemaUsuario.cmd.CommandText = ConexionSistemaUsuario.sql
        Try

            ConexionSistemaUsuario.dr2 = ConexionSistemaUsuario.cmd.ExecuteReader()
            'Existe algun campo
            If ConexionSistemaUsuario.dr2.HasRows Then
                While ConexionSistemaUsuario.dr2.Read()
                    tienePermiso = Convert.ToInt32(ConexionSistemaUsuario.dr2(0))

                End While
                ConexionSistemaUsuario.conn.Close()
                SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
            Else
                tienePermiso = 0
                ConexionSistemaUsuario.conn.Close()
                SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
            End If
        Catch ex As Exception
            ConexionSistemaUsuario.conn.Close()
            SqlConnection.ClearPool(ConexionSistemaUsuario.conn)
        End Try
        Return tienePermiso

    End Function





End Class
