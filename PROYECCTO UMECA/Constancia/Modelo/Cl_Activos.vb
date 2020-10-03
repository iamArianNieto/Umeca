Imports System.Data.SqlClient

Public Class Cl_Activos
    Public Function Traer_idActivos(ByRef desc As String)
        ConexionSistemaUsuario.conectarse()
        Dim Datos(1) As String
        Dim dr As SqlDataReader

        ConexionSistemaUsuario.cmd.CommandType = CommandType.Text
        ConexionSistemaUsuario.cmd.Connection = ConexionSistemaUsuario.conn
        ConexionSistemaUsuario.sql = ""
        ConexionSistemaUsuario.sql = "select Id_activo,Desc_activo from Cat_Activo where Desc_activo = '" & desc & "' "
        ConexionSistemaUsuario.cmd.CommandText = ConexionSistemaUsuario.sql
        Try
            dr = ConexionSistemaUsuario.cmd.ExecuteReader()
            'Existe algun campo
            If dr.HasRows Then
                While dr.Read()
                    Datos(0) = dr(0).ToString
                    Datos(1) = dr(1).ToString

                End While

                ConexionSistemaUsuario.conn.Close()
            Else
                Datos(0) = ""
                Datos(1) = ""

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


End Class
