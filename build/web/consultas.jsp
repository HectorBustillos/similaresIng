<%@page import="clases.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultas</title>
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <link rel="icon" href="simidoc.ico">
     
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
              <a class="navbar-brand" href="/Similares">
                <img class="brandTop" alt="Brand" src="assets/img/simidoc.png">
              </a>
            <a class="navbar-brand" href="/Similares">Farmacias Similares</a> 
          </div>

          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="clientes.jsp">Clientes</a></li> <!-- <span class="sr-only">(current)</span> -->
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Productos<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="productos.jsp">Productos en General</a></li>
                  <li><a href="productosOferta.jsp">Productos en Oferta</a></li>
                </ul>
               </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Empleados<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="empleados.jsp">Empleados en General</a></li>
                  <li><a href="empleadosDoctores.jsp">Empleados Doctores</a></li>
                </ul>
               </li>
              <li><a href="sucursales.jsp">Sucursales</a></li>
              <li><a href="ofertas.jsp">Ofertas</a></li>
              <li><a href="departamentos.jsp">Departamentos</a></li>
              <li><a href="doctores.jsp">Doctores</a></li>
              <li class="dropdown active">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultas<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li class="active"><a href="consultas.jsp">Consultas en General</a></li>
                  <li><a href="consultasClientes.jsp">Consultas por Clientes</a></li>
                </ul>
               </li>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
        <div class="wrap row">
            
            <div class="col-xs-12 col-md-8 top_table_title">
                <h1>Tabla de Consultas</h1>
            </div>  
            <div class="col-xs-12 col-md-4 top_table_title" style="padding-top: 30px;">
                <button style="float: right; margin-left: 5px;" type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarConsultas">Borrar Tabla</button>
                <button style="float: right;" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalConsultas">Añadir Datos</button>
            </div>
            
            
            <table class="table table-striped table-hover table-condensed table-bordered">
                <thead>
                    <tr>
                        <th># Consulta</th>
                        <th>ID Cliente</th>
                        <th>ID Doctor</th>
                        <th>Fecha</th>
                        <th>Diagnostico</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Conexion cx = new Conexion();
                        
                        ResultSet rs = cx.consultar("select * from consultas ");            

                      while(rs.next()){ 
                        String numeroConsulta = rs.getString("numeroConsulta");
                        String idCliente = rs.getString("idCliente");
                        String idDoctor = rs.getString("idDoctor");
                        String fecha = rs.getString("fecha");
                        String diagnostico = rs.getString("diagnostico");
                    %>
                        <tr>
                            <td> <%= numeroConsulta %> </td>
                            <td> <%= idCliente %></td>
                            <td> <%= idDoctor %> </td>
                            <td> <%= fecha %> </td>
                            <td> <%= diagnostico %> </td>
                        </tr>
                    <%}%>
                </tbody>
            </table>
            
            <!-- Modal -->
            <div class="modal fade" id="modalConsultas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Añadir una Consulta</h4>
                  </div>
                  <div class="modal-body">
                      
                     <!--No jala no se porque -->
                      
                    <form class="form-horizontal" action="ConsultasSVT" method="post"> 
<!--                        <div class="form-group">
                          <label># Consulta</label>
                          <input type="text" class="form-control" >
                        </div>-->
                        <div class="form-group">
                          <label class="col-lg-3 control-label">ID Cliente</label>
                          <div class="col-lg-9">
                              <input name="txtIdcliente" type="number" class="form-control" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-3 control-label">ID Doctor</label>
                          <div class="col-lg-9">
                              <input name="txtIdoctro" type="number" class="form-control" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-3 control-label">Fecha</label>
                          <div class="col-lg-9">
                              <input name="txtFecha" type="date" class="form-control" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-3 control-label">Diagnostico</label>
                          <div class="col-lg-9">
                             <textarea name="txtDiagnostico" type="text" class="form-control" rows="3" style="max-width: 100%"></textarea>
                          </div>
                        </div>
                       <div class="modal-footer">
                            <button name="cmd" type="submit" class="btn btn-default" value="g">Guardar Cambios</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- Modal -->
            <div class="modal fade" id="borrarConsultas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Seguro que quieres borrar la tabla Consultas?</h4>
                    </div>
                    <div class="modal-body">
                        <form action="ConsultasSVT" method="post">
                            <button name="cmd" type="submit" class="btn btn-danger" value="b">Borrar Tabla</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        </form>
                    </div>
                </div>
              </div>
            </div>
        </div>
        <script src="assets/js/jquery-2.2.3.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
