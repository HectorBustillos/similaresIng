
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


@WebServlet(name = "VentasMasterSVT", urlPatterns = {"/VentasMasterSVT"})
public class VentasMasterSVT extends HttpServlet {

    private Conexion cnn;
    private VentasMaster ventasM;
    private DatosVentasMaster datosVM;


 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            cnn = new Conexion();
            ventasM = new VentasMaster();
            
            ventasM.setIdventa(Integer.parseInt(request.getParameter("txtIdventa")));
            ventasM.setIdcliente(Integer.parseInt(request.getParameter("txtIdcliente")));
            ventasM.setFecha(request.getParameter("txtFecha"));
            ventasM.setIdempleado(Integer.parseInt(request.getParameter("txtIdempleado")));    
                    
            datosVM = new DatosVentasMaster(cnn);
            datosVM.insertVentasMaster(ventasM);
         
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(VentasMasterSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(VentasMasterSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

 

}
