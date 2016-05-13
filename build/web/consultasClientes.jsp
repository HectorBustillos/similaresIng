<%@page import="clases.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultas Clientes</title>
        
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
            <a class="navbar-brand" href="/Similares">Farmacias Similares </a>
          </div>

          <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
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
                  <li><a href="consultas.jsp">Consultas en General</a></li>
                  <li class="active"><a href="consultasClientes.jsp">Consultas por Clientes</a></li>
                </ul>
               </li>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
        <div class="wrap row">
            
            <div class="col-xs-12 col-md-8 top_table_title">
                <h1>Tabla de Consultas de Clientes</h1>
            </div>  
           <div class="col-xs-12 col-md-4 top_table_title" style="padding-top: 30px;">
               <a href="consultas.jsp" style="float: right; margin-left: 5px;" class="btn btn-primary btn-sm">Regresar a Consultas</a>
            </div>
            <table class="table table-striped table-hover table-condensed table-bordered">
                <thead>
                    <tr>
                        <th>ID Consulta</th>
                        <th>Cliente</th>
                        <th>ID Doctor</th>
                        <th>Fecha</th>
                        <th>Diagnostico</th>
                        <th>Tel. de Emergencia</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Conexion cx = new Conexion();
                        
                        ResultSet rs = cx.consultar("select consultas.diagnostico, consultas.numeroConsulta, clientes.nombre, clientes.apeidoPaterno, clientes.apeidoMaterno, consultas.idDoctor, consultas.fecha, clientes.telefono  from consultas join clientes using(idcliente) order by idcliente");            

                      while(rs.next()){ 
                        String numeroConsulta = rs.getString("consultas.numeroConsulta");
                        String nombreCliente = rs.getString("clientes.nombre");
                        String aPaternoCliente = rs.getString("clientes.apeidoPaterno");
                        String aMaternoCliente = rs.getString("clientes.apeidoMaterno");
                        String idDoctor = rs.getString("consultas.idDoctor");
                        String fecha = rs.getString("consultas.fecha");
                        String telefono = rs.getString("clientes.telefono");
                        String diagnostico = rs.getString("consultas.diagnostico");
                    %>
                        <tr>
                            <td> <%= numeroConsulta %> </td>
                            <td> <%= nombreCliente + " " + aPaternoCliente + " " + aMaternoCliente%> </td>
                            <td> <%= idDoctor %> </td>
                            <td> <%= fecha %> </td>
                            <td> <%= diagnostico %> </td>
                            <td> <%= telefono %> </td>
                        </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        <script src="assets/js/jquery-2.2.3.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>