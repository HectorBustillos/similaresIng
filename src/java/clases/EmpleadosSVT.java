
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
import javax.swing.JOptionPane;


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
            
            int opcion = 0;
            String opc = request.getParameter("cmd");
            if(opc.equals("g")) opcion = 1;
            else if(opc.equals("b")) opcion = 2;
            
            cnn = new Conexion();
            emp = new Empleados();
            
            if(opcion == 1){
                emp.setNombre(request.getParameter("txtNombre"));
                emp.setApeidoPaterno(request.getParameter("txtApeidoPaterno"));
                emp.setApeidoMaterno(request.getParameter("txtApeidoMaterno"));
                emp.setEmail(request.getParameter("txtEmail"));
                emp.setSeguroSocial(Integer.parseInt(request.getParameter("txtSeguroSocial")));
                emp.setCodigo(Integer.parseInt(request.getParameter("txtCodigo")));
                emp.setPuesto(request.getParameter("txtPuesto"));
                emp.setTurno(request.getParameter("txtTurno"));

                datosE = new DatosEmpleados(cnn);
                datosE.insertEmpleados(emp, opcion);
            }else if(opcion == 2){
                datosE = new DatosEmpleados(cnn);
                datosE.insertEmpleados(null, opcion);
            }
                   
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EmpleadosSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadosSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } finally {
            response.sendRedirect("empleados.jsp");  
        }
    }

  

}
