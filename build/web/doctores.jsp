<%@page import="clases.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctores</title>
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <link rel="icon" href="simidoc.ico">
        <link href="https://fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
     
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
              <li class="active"><a href="doctores.jsp">Doctores</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultas<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="consultas.jsp">Consultas en General</a></li>
                  <li><a href="consultasClientes.jsp">Consultas por Clientes</a></li>
                </ul>
               </li>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
        <div class="wrap row">
            
            <div class="col-xs-12 col-md-8 top_table_title">
                <h1>Tabla de Doctores</h1>
            </div>  
            <div class="col-xs-12 col-md-4 top_table_title" style="padding-top: 30px;">
                <button style="float: right; margin-left: 5px;" type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarDoctores">Borrar Tabla</button>
                <button style="float: right;" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalDoctores">Añadir Datos</button>
            </div>
            
            
            <table class="table table-striped table-hover table-condensed table-bordered">
                <thead>
                    <tr>
                        <th>ID Doctor</th>
                        <th>ID Empleado</th>
                        <th>Nombre</th>
                        <th>Telefono</th>
                        <th>Direccion</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Conexion cx = new Conexion();
                        
                        ResultSet rs = cx.consultar("select * from doctores ");            

                      while(rs.next()){ 
                        String idDoctor = rs.getString("idDoctor");
                        String idEmpleado = rs.getString("idEmpleado");
                        String nombre = rs.getString("nombre");
                        String apeidoPaterno = rs.getString("apeidoPaterno");
                        String apeidoMaterno = rs.getString("apeidoMaterno");
                        String telefono = rs.getString("telefono");
                        String direccion = rs.getString("direccion");
                    %>
                        <tr>
                            <td> <%= idDoctor %> </td>
                            <td> <%= idEmpleado %> </td>
                            <td> <%= nombre + " " + apeidoPaterno + " " + apeidoMaterno %></td>
                            <td> <%= telefono %> </td>
                            <td> <%= direccion %> </td>
                        </tr>
                    <%}%>
                </tbody>
            </table>
            
            <!-- Modal -->
            <div class="modal fade" id="modalDoctores" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Añadir un Doctor</h4>
                  </div>
                  <div class="modal-body">
                    <form class="form-horizontal" action="DoctoresSVT" method="post">
                        <div class="form-group">
                          <label class="col-lg-3 control-label">ID Empleado</label>
                          <div class="col-lg-9">
                              <input name="txtidEmpleado" type="number" class="form-control" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-3 control-label">Nombre</label>
                          <div class="col-lg-9">
                              <input name="txtNombre" type="text" class="form-control" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-3 control-label">Apellido Paterno</label>
                          <div class="col-lg-9">
                              <input name="txtApeidoPaterno" type="text" class="form-control" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-3 control-label">Apellido Materno</label>
                          <div class="col-lg-9">
                              <input name="txtApeidoMaaterno" type="text" class="form-control" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-3 control-label">Telefono</label>
                          <div class="col-lg-9">
                              <input name="txtTelefono" type="number" class="form-control" >
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-lg-3 control-label">Direccion</label>
                          <div class="col-lg-9">
                              <input name="txtDireccion" type="text" class="form-control" >
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
            <div class="modal fade" id="borrarDoctores" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Seguro que quieres borrar la tabla Doctores?</h4>
                    </div>
                    <div class="modal-body">
                        <form action="DoctoresSVT" method="post">
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
