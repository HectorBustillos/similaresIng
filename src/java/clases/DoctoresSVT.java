
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

@WebServlet(name = "DoctoresSVT", urlPatterns = {"/DoctoresSVT"})
public class DoctoresSVT extends HttpServlet {

    private Conexion cnn;
    private DatosDoctores datosD;
    private Doctores doc;
 

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
            doc = new Doctores();
            
            if(opcion == 1){
                doc.setIdEmpleado(Integer.parseInt(request.getParameter(("txtidEmpleado"))));
                doc.setNombre(request.getParameter("txtNombre"));
                doc.setApeidoPaterno(request.getParameter("txtApeidoPaterno"));
                doc.setApeidoMaterno(request.getParameter("txtApeidoMaaterno"));
                doc.setTelefono(request.getParameter("txtTelefono"));
                doc.setDireccion(request.getParameter("txtDireccion"));
            
                datosD = new DatosDoctores(cnn);
                datosD.insertDoctores(doc, opcion);
            }else if(opcion == 2){
                datosD = new DatosDoctores(cnn);
                datosD.insertDoctores(null, opcion);
            }
       
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DoctoresSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(DoctoresSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } finally {
            response.sendRedirect("doctores.jsp");  
        }
           
            
        
    }

 

}
