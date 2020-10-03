<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Constancia.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Acceso| Umeca.</title>
    <link href="ESTILOS/PiedePagina.css" rel="stylesheet" />
     <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<!--===============================================================================================-->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="LOGIN/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="LOGIN/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="LOGIN/vendor/animate/animate.css"/>
	<link rel="stylesheet" type="text/css" href="LOGIN/vendor/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet" type="text/css" href="LOGIN/vendor/select2/select2.min.css"/>
	<link rel="stylesheet" type="text/css" href="LOGIN/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="LOGIN/css/main.css"/>
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

         <div class="limiter">
		    <div class="container-login100" style="background-image: url('imagenes/inicio.gif');">
			    <div class="wrap-login100 p-t-80 p-b-0">
					    <center><div style="width: 60%; text-align: center; margin-bottom: 0px;">
						    <center><img src="imagenes/LOGO SOLO.png" style="width: 80%;" alt="Logo"></center>
					    </div></center>

					    <span class="login100-form-title p-t-20 p-b-15">
					    </span>

					    <div class="wrap-input100 validate-input m-b-10" data-validate="Se requiere un usuario">
    <%--						<input class="input100" type="text" name="username" >--%>
                            <asp:TextBox ID="txt_Usuario" class="input100" runat="server" placeholder="Usuario" ToolTip="Usuario"></asp:TextBox>
    <%--                        <asp:TextBox ID="txt_Usuario" runat="server" ToolTip="Usuario"></asp:TextBox>--%>

						    <span class="focus-input100"></span>
						    <span class="symbol-input100">
							    <i class="fa fa-user"></i>
						    </span>
					    </div>

					    <div class="wrap-input100 validate-input m-b-10" data-validate="Se requiere una contraseña">
    <%--						<input class="input100" type="password" name="pass" placeholder="Contraseña">--%>
                            <asp:TextBox class="input100" ID="txt_Password" runat="server" ToolTip="Password" TextMode="Password" placeholder="Contraseña"></asp:TextBox>

						    <span class="focus-input100"></span>
						    <span class="symbol-input100">
							    <i class="fa fa-lock"></i>
						    </span>
					    </div>
					    <div class="container-login100-form-btn p-t-10">
						       <asp:Button ID="btn_Ingresar" class="login100-form-btn" Text="Ingresar" runat="server"/>
    <%--                        <asp:Button class="login100-form-btn" ID="btn_Ingresar" runat="server" Text="Ingresar"/>--%>
                            <br />
                            <asp:Label ID="lbl_validar" runat="server" Visible="false" style="color:#FFF;"></asp:Label>
					    </div>
					    <div class="text-center w-full p-t-25 p-b-50">
                             <!--   <a href="Frm_Registro.aspx" class="txt1"> Registro </a>
                                <label style="font-weight:bold; color:#c1c1c1"> / </label>
                                <a href="#" class="txt1"> ¿Olvidó Contraseña?</a> -->
					    </div>
			    </div>
		    </div>
	    </div>


    </form>

     <footer id="pie" style="width:100%; opacity:0.8; margin-left:0%; bottom: 0; z-index:1; margin-top:19px; position:absolute; border-top:1px solid green; border-radius:0px">	    
             <br />   
             <div>
                    <img class="escudo" src="imagenes/escudo_blanco.svg" align="right" width="5%" height="4%" style="padding-top:-1%; padding-right:1%"/>
		            <img class="escudo2" src="imagenes/Logo_hgo_2019.png" align="left" width="5%" height="4%" style="padding-left:10px;" />
                  <p style="text-align:center;font-size:8pt; font-weight:400; color:white" >© 2020 Gobierno del Estado de Hidalgo. Derechos Reservados<br/>
                        Secretaría de Seguridad Pública<br/>
                        Centro de Control, Comando, Comunicaciones, Cómputo, Coordinación e Inteligencia<br/>
                        Dirección de Desarrollo de Tecnologías  V 1.0
                    </p>
            </div>
     </footer>	

<!--===============================================================================================-->	
	<script src="LOGIN/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="LOGIN/vendor/bootstrap/js/popper.js"></script>
	<script src="LOGIN/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="LOGIN/vendor/select2/select2.min.js"></script>
	<script src="LOGIN/js/main.js"></script>
<!--===============================================================================================-->	



</body>
</html>
