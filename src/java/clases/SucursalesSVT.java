
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
            cnn = new Conexion();
            suc = new Sucursales();
            
//            suc.setIdsucursales(Integer.parseInt(request.getParameter("txtIdsucursales")));
            suc.setNumempleado(Integer.parseInt(request.getParameter("txtNumempleado")));
            suc.setTelefono(request.getParameter("txtTelefono"));
            suc.setDireccion(request.getParameter("txtDireccion"));
            
            datosS = new DatosSucursales(cnn);
            datosS.insertSucursales(suc);
           
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SucursalesSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SucursalesSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }

  

}
