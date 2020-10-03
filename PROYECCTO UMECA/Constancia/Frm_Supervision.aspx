<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master_Admin.Master" CodeBehind="Frm_Supervision.aspx.vb" Inherits="Constancia.Frm_Supervision" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <style>
      .modal-lg 
      {
           max-width: 98% !important;
      }
    </style>

    <script>
        $(document).ready(function () {

            $('#tabla').DataTable();
        });


        function abrir_modal() {
             $('#myModal').modal('show');
        }

        function cerrar_modal() {
             $('#myModal').modal('hide');
        }

    </script>


    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">   
                <center><h1>SUPERVISIÓN</h1></center>
            </div>
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                  <table id="tabla" class="display">
                     <thead>
                        <tr>
                            <th>Expedientes</th>
                            <th>C/P</th>
                            <th>Nuc</th>
                            <th>Estatus de cumplimiento</th>
                            <th>Estatus de seguimiento</th>
                            <th>Asignación del caso</th>
                            <th>Reservado</th>
                         </tr>
                    </thead>
                 </table>
            </div>
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">

                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Btn_Anexar" runat="server" Text="Anexar" OnClientClick="abrir_modal();"/>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Btn_Nuevo" runat="server" Text="Agregar Nuevo" OnClientClick="abrir_modal();"/>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Btn_Modificar" runat="server" Text="Modificar" OnClientClick="abrir_modal();"/>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--**********************************************************VENTANA MODAL PARA LLENAR INFO PERSONAL**************************************************--%>
    <%-- VENTANA MODAL QUE MUESTRA UNA LEYENDA PARA PROHIBIR EL ACCESO PARA ASIGNAR UN OFICIO DESARROLLADAS POR ALDO--%>
    <div class="modal" tabindex="-1" role="dialog" id="myModal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <center><h5 class="modal-title"></h5></center>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row" id="datosEstatus">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                     <asp:Label ID="Lbl_NumeroExpediente" runat="server" Text="Número de Expediente"></asp:Label><br />
                                     <asp:TextBox ID="Txt_NumeroExpediente" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_CP" runat="server" Text="C/P"></asp:Label><br />
                                    <asp:TextBox ID="Txt_CP" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_Nuc" runat="server" Text="NUC"></asp:Label><br />
                                    <asp:TextBox ID="Txt_NUC" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_SupervisorActual" runat="server" Text="Supervidor Actual"></asp:Label><br />
                                    <asp:TextBox ID="Txt_SupervisorActual" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                      <asp:Label ID="Lbl_EstatusCumplimiento" runat="server" Text="Estatus de Cumplimiento"></asp:Label><br />
                                      <asp:DropDownList ID="Drop_EstatusCumplimiento" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_EstatusSeguimiento" runat="server" Text="Estatus de Seguimiento"></asp:Label><br />
                                    <asp:DropDownList ID="Drop_EstatusSeguimiento" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_FechaAsgcaso" runat="server" Text="Fecha de Asignación de caso"></asp:Label><br />
                                    <asp:TextBox ID="Txt_FechaAsgcaso" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Label2" runat="server" Text="Reservado"></asp:Label><br />
                                    <asp:DropDownList ID="Drop_Reservado" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row" id="datosImputado"> 
                             
                        </div>
                        <div class"col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row" id="situacionJuridicaAcontecida">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_Delito" runat="server" Text="Delito"></asp:Label><br />
                                    <asp:DropDownList ID="Drop_Delito" runat="server"></asp:DropDownList><input id="Button1" type="button" value="button"  style="background-color:blue;border-radius:50px;"/>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_Audencia" runat="server" Text="Audencia"></asp:Label><br />
                                    <asp:DropDownList ID="Drop_Audencia" runat="server"></asp:DropDownList><input id="Button2" type="button" value="button"  style="background-color:blue;border-radius:50px;"/>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_JuezControl" runat="server" Text="Juez de Control"></asp:Label><br />
                                    <asp:DropDownList ID="Drop_JuezControl" runat="server"></asp:DropDownList><input id="Button3" type="button" value="button"  style="background-color:blue;border-radius:50px;"/>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_FechaImposicion" runat="server" Text="Fecha de Imposición"></asp:Label><br />
                                    <asp:TextBox ID="Txt_FechaImposicion" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_Temporalidad" runat="server" Text="Temporalidad"></asp:Label><br />
                                    <asp:TextBox ID="Txt_Temporalidad" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_FiguraJudicial" runat="server" Text="Figura Judicial"></asp:Label><br />
                                    <asp:DropDownList ID="Drop_FiguraJudicial" runat="server"></asp:DropDownList><input id="Button4" type="button" value="button"  style="background-color:blue;border-radius:50px;"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row" id="datosVictima">

                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row" id="Fracciones">

                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row" id="CambioFiguraJudicial">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <asp:Label ID="Lbl_Fracciones" runat="server" Text="Fracciones"></asp:Label><br />

                            </div>
                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row" id="ConclusionArchivo">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                       <asp:Label ID="Lbl_FechaConclusion" runat="server" Text="Fecha de conclusión"></asp:Label><br />
                                       <asp:TextBox ID="Txt_FechaConclusion" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_FechasArchivo" runat="server" Text="Fecha de archivos"></asp:Label><br />
                                    <asp:TextBox ID="Txt_FechaArchivo" runat="server" TextMode="Date"></asp:TextBox>
                                </div>

                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                       <asp:Label ID="Lbl_MotivoConclusion" runat="server" Text="Motivo de conclusión"></asp:Label><br />
                                       <asp:TextBox ID="Txt_MotivoConclusion" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <asp:Label ID="Lbl_Autorizacion" runat="server" Text="Autorizo"></asp:Label><br />
                                    <asp:TextBox ID="Txt_Autorizacion" runat="server"></asp:TextBox>
                                </div>

                            </div>
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-6">
                                <asp:Label ID="Lbl_ObservacionesCuenta" runat="server" Text="Observaciones a tomar en cuenta"></asp:Label><br />
                                <asp:TextBox ID="Txt_ObservacionesCuenta" runat="server" TextMode="MultiLine" Height="60px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row" id="AsignacionReasignacionCasos">

                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">

                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6 row">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                            <ContentTemplate>
                                                <asp:Button ID="Btn_LimpiarCampos" runat="server" Text="Limpiar Campos" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                           <ContentTemplate>
                                               <asp:Button ID="Btn_Guardar" runat="server" Text="Guardar" />
                                           </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

   
</asp:Content>
