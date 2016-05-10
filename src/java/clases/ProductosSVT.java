
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
            cnn = new Conexion();
            pro = new Productos();
        
//            pro.setIdproducto(Integer.parseInt(request.getParameter("txtIdproducto")));
            pro.setDescripcion(request.getParameter("txtdescripcion"));
            pro.setPrecio(Float.parseFloat(request.getParameter("txtPrecio")));
            pro.setCantidad(Integer.parseInt(request.getParameter("txtCantidad")));
            
            datosP = new DatosProductos(cnn);
            
            datosP.insertProductos(pro);
        
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductosSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ProductosSVT.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    

}
