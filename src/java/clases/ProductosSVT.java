
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


@WebServlet(name = "ProductosSVT", urlPatterns = {"/ProductosSVT"})
public class ProductosSVT extends HttpServlet {

    private Conexion cnn;
    private DatosProductos datosP;
    private Productos pro;
    

   
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
            pro = new Productos();
        
            if(opcion == 1){
                pro.setDescripcion(request.getParameter("txtdescripcion"));
                pro.setPrecio(Float.parseFloat(request.getParameter("txtPrecio")));
                pro.setCantidad(Integer.parseInt(request.getParameter("txtCantidad")));

                datosP = new DatosProductos(cnn);
                datosP.insertProductos(pro, opcion);
            }else if(opcion == 2){
                datosP = new DatosProductos(cnn);
                datosP.insertProductos(null, opcion);
            }
        
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductosSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR1: " + ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(ProductosSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR2: " + ex.getMessage());
        } finally {
            response.sendRedirect("productos.jsp");  
        }

    }

    

}
