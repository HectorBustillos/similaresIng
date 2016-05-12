
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

@WebServlet(name = "DepartamentosSVT", urlPatterns = {"/DepartamentosSVT"})
public class DepartamentosSVT extends HttpServlet {
 
    private Conexion cnn;
    private Departamentos dep;
    private DatosDepartamentos datosD;
    
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
            dep = new Departamentos();
            
            if(opcion == 1){
                dep.setNombre(request.getParameter("txtNombre"));
                dep.setIdproducto(Integer.parseInt(request.getParameter("txtIdproducto")));

                datosD = new DatosDepartamentos(cnn);
                datosD.insertDepartamentos(dep, opcion);
            }else if(opcion == 2){
                datosD = new DatosDepartamentos(cnn);
                datosD.insertDepartamentos(null, opcion);
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DepartamentosSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(DepartamentosSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } finally {
            response.sendRedirect("departamentos.jsp");  
        }
        
        
    }

   
}
