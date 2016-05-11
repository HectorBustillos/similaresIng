<%@page import="clases.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sucursales</title>
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-theme.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <link rel="icon" href="simidoc.ico">
        <link href="https://fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
     
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
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
              <li><a href="productos.jsp">Productos</a></li>
              <li><a href="empleados.jsp">Empleados</a></li>
              <li class="active"><a href="sucursales.jsp">Sucursales</a></li>
              <li><a href="ofertas.jsp">Ofertas</a></li>
              <li><a href="departamentos.jsp">Departamentos</a></li>
              <li><a href="doctores.jsp">Doctores</a></li>
              <li><a href="consultas.jsp">Consultas</a></li>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
        <div class="wrap row">
            
            <div class="col-xs-12 col-md-8 top_table_title">
                <h1>Tabla de Sucursales</h1>
            </div>  
            <div class="col-xs-12 col-md-4 top_table_title" style="padding-top: 30px;">
                <button style="float: right; margin-left: 5px;" type="button" class="btn btn-danger" data-toggle="modal" data-target="#borrarSucursales">Borrar Tabla</button>
                <button style="float: right;" type="button" class="btn btn-success" data-toggle="modal" data-target="#modalVentas">Añadir Datos</button>
            </div>
            
            
            <table class="table table-striped table-hover table-condensed table-bordered">
                <thead>
                    <tr>
                        <th>ID Sucursal</th>
                        <th>Cantidad de Empleados</th>
                        <th>Telefono</th>
                        <th>Direccion</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Conexion cx = new Conexion();
                        
                        ResultSet rs = cx.consultar("select * from sucursales ");            

                      while(rs.next()){ 
                        String idSucursal = rs.getString("idSucursal");
                        String numeroEmpleado = rs.getString("numeroEmpleado");
                        String telefono = rs.getString("telefono");
                        String direccion = rs.getString("direccion");
                    %>
                        <tr>
                            <td> <%= idSucursal %> </td>
                            <td> <%= numeroEmpleado %> </td>
                            <td> <%= telefono %> </td>
                            <td> <%= direccion %> </td>
                        </tr>
                    <%}%>
                </tbody>
            </table>
            
            <!-- Modal -->
            <div class="modal fade" id="modalVentas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Añadir una Sucursal</h4>
                  </div>
                  <div class="modal-body">
                    <form action="SucursalesSVT" method="post">
<!--                        <div class="form-group">
                          <label>ID Sucursal</label>
                          <input type="text" class="form-control" >
                        </div>-->
                        <div class="form-group">
                          <label>Cantidad de Empleados</label>
                          <input name="txtNumempleado" name="" type="number" class="form-control" >
                        </div>
                        <div class="form-group">
                          <label>Telefono</label>
                          <input name="txtTelefono" type="text" class="form-control" >
                        </div>
                        <div class="form-group">
                          <label>Direccion</label>
                          <input name="txtDireccion" type="text" class="form-control" >
                        </div>
                       <div class="modal-footer">
                            <button type="submit" class="btn btn-default">Guardar Cambios</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- Modal -->
            <div class="modal fade" id="borrarSucursales" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Seguro que quieres borrar la tabla Sucursales?</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <button type="submit" class="btn btn-danger">Borrar Tabla</button>
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
