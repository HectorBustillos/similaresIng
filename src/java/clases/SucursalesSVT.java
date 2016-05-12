
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


@WebServlet(name = "SucursalesSVT", urlPatterns = {"/SucursalesSVT"})
public class SucursalesSVT extends HttpServlet {

    private Conexion cnn;
    private Sucursales suc;
    private DatosSucursales datosS;

   
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
            suc = new Sucursales();
            
            if(opcion == 1){
                suc.setNumempleado(Integer.parseInt(request.getParameter("txtNumempleado")));
                suc.setTelefono(request.getParameter("txtTelefono"));
                suc.setDireccion(request.getParameter("txtDireccion"));

                datosS = new DatosSucursales(cnn);
                datosS.insertSucursales(suc, opcion);
            }else if(opcion == 2){
                datosS = new DatosSucursales(cnn);
                datosS.insertSucursales(null, opcion);
            }
           
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SucursalesSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(SucursalesSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } finally {
            response.sendRedirect("sucursales.jsp");  
        }
        
        
        
    }

  

}
