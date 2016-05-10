
package clases;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "EmpleadosSVT", urlPatterns = {"/EmpleadosSVT"})
public class EmpleadosSVT extends HttpServlet {

    private Conexion cnn;
    private Empleados emp;
    private DatosEmpleados datosE;


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        try {
            cnn = new Conexion();
            emp = new Empleados();
            
            emp.setIdempleado(Integer.parseInt(request.getParameter("txtIdempleado")));
            emp.setNombre(request.getParameter("txtNombre"));
            emp.setApeidoPaterno(request.getParameter("txtApeidoPaterno"));
            emp.setApeidoMaterno(request.getParameter("txtApeidoMaterno"));
            emp.setEmail(request.getParameter("txtEmail"));
            emp.setSeguroSocial(Integer.parseInt(request.getParameter("txtSeguroSocial")));
            emp.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
            emp.setPuesto(request.getParameter("txtPuesto"));
            emp.setTurno(request.getParameter("txtTurno"));
            
            datosE = new DatosEmpleados(cnn);
            datosE.insertEmpleados(emp);
                   
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EmpleadosSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadosSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

  

}
