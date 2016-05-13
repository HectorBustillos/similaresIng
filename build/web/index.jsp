<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="simi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmacias Similares</title>
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <link rel="icon" href="simidoc.ico">
        
        <link href="https://fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
     
    </head>
    <body ng-controller="mainController">
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
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultas<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="consultas.jsp">Consultas en General</a></li>
                  <li><a href="consultasClientes.jsp">Consultas por Clientes</a></li>
                </ul>
               </li>
            </ul>
          </div>
        </div>
      </nav>
        <div class="wrap">
            <div class="row">
                <div class="page-header">
                    <h1>Farmacias Similares <small>  Base de datos</small></h1><br>
                    <p>
                        Alguna descripcion de la pagina aqui...
                    </p>
                </div>
                <div class="col-sm-4 col-md-3 hero-feature">
                  <div class="thumbnail">
                    <img src="assets/img/clientes.jpg" alt="img" >
                    <div class="caption">
                      <h3>Clientes</h3>
                      <p>Alguna Descripcion...</p>
                      <p><a href="clientes.jsp" class="btn btn-default" role="button">Ver Clientes</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-3 hero-feature">
                  <div class="thumbnail">
                    <img src="assets/img/productos.jpg" alt="img" >
                    <div class="caption">
                      <h3>Productos</h3>
                      <p>Alguna Descripcion...</p>
                      <p><a href="productos.jsp" class="btn btn-default" role="button">Ver Productos</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-3">
                  <div class="thumbnail">
                    <img src="assets/img/empleados.jpg" alt="img" >
                    <div class="caption">
                      <h3>Empleados</h3>
                      <p>Alguna Descripcion...</p>
                      <p><a href="empleados.jsp" class="btn btn-default" role="button">Ver Empleados</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-3">
                  <div class="thumbnail">
                    <img src="assets/img/sucursales.jpg" alt="img" >
                    <div class="caption">
                      <h3>Sucursales</h3>
                      <p>Alguna Descripcion...</p>
                      <p><a href="sucursales.jsp" class="btn btn-default" role="button">Ver Sucursales</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-3">
                  <div class="thumbnail">
                    <img src="assets/img/ofertas.jpg" alt="img" >
                    <div class="caption">
                      <h3>Ofertas</h3>
                      <p>Alguna Descripcion...</p>
                      <p><a href="ofertas.jsp" class="btn btn-default" role="button">Ver Ofertas</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-3">
                  <div class="thumbnail">
                    <img src="assets/img/departamentos.jpg" alt="img" >
                    <div class="caption">
                      <h3>Departamentos</h3>
                      <p>Alguna Descripcion...</p>
                      <p><a href="departamentos.jsp" class="btn btn-default" role="button">Ver Departamentos</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-3">
                  <div class="thumbnail">
                    <img src="assets/img/doctores.jpg" alt="img" >
                    <div class="caption">
                      <h3>Doctores</h3>
                      <p>Alguna Descripcion...</p>
                      <p><a href="doctores.jsp" class="btn btn-default" role="button">Ver Doctores</a></p>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-3" >
                  <div class="thumbnail">
                    <img src="assets/img/consultas.jpg" alt="img">
                    <div class="caption">
                      <h3>Consultas</h3>
                      <p>Alguna Descripcion...</p>
                      <p><a href="consultas.jsp" class="btn btn-default" role="button">Ver Consultas</a></p>
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
