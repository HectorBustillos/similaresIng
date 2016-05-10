
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

@WebServlet(name = "VentasProdSVT", urlPatterns = {"/VentasProdSVT"})
public class VentasProdSVT extends HttpServlet {

       private Conexion cnn;
       private VentasProd ventasP;
       private DatosVentasProd datosVP;
  

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
           try {
               cnn = new Conexion();
               ventasP = new VentasProd();
               
               ventasP.setIdproducto(Integer.parseInt(request.getParameter("txtIdproducto")));
               ventasP.setIdventa(Integer.parseInt(request.getParameter("txtIdventa")));
               
               datosVP = new DatosVentasProd(cnn);
               datosVP.insertVentasProd(ventasP);
               
           } catch (ClassNotFoundException ex) {
               Logger.getLogger(VentasProdSVT.class.getName()).log(Level.SEVERE, null, ex);
           } catch (SQLException ex) {
               Logger.getLogger(VentasProdSVT.class.getName()).log(Level.SEVERE, null, ex);
           }
        
    }

 

}
