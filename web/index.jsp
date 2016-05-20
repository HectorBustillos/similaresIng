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
                    <div class="col-lg-12">
                        <h2>Historia</h2>
                        <p>
                            Farmacias Similares, perteneciente al Grupo Por un País Mejor, fue constituida el 8 de Septiembre de 1997, con la finalidad de ofrecer productos y servicios de salud a los estratos más desprotegidos del país.
                            En 2002, Farmacias Similares intensificó su presencia con más de 1000 sucursales en todo México. 
                            En 2003, la cadena farmacéutica arribó a Guatemala, dando el primer paso para su internacionalización.
                            Actualmente, existen más de 5000 sucursales y franquicias establecidas en todo México, Chile y Guatemala.
                            Farmacias Similares es la empresa líder en Venta y Distribución de Medicamentos Genéricos y Productos de Salud en México y América Latina.
                        </p>
                    </div>
                </div>
                <div class="col-lg-12">
                    
                </div>
                <div class="col-lg-4">
                        <h2>Filosofia</h2>
                        <p>
                            Para nuestro fundador, Don Víctor González Torres, todos tenemos algo bueno que compartir: tu sonrisa, tu tiempo, tu talento, etc. Dar es la expresión más noble del ser humano, la que lo identifica y lo hermana, así entonces nuestra filosofía se basa en aprender a dar a los demás. 
                        </p>
                    </div>
                    <div class="col-lg-4">
                        <h2>Mision</h2>
                        <p>
                            Mejorar el nivel de vida de la humanidad, ofreciendo productos y servicios de salud de calidad al alcance de todos. 
                        </p>
                    </div>
                    <div class="col-lg-4">
                        <h2>Vision</h2>
                        <p>
                            Ser reconocida como modelo de calidad, servicio y confianza, con procesos eficaces y eficientes, en un clima laboral agradable que genere bienestar y orgullo de pertenencia. 
                        </p>
                    </div>
             </div>
            
        </div>
        <script src="assets/js/jquery-2.2.3.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
