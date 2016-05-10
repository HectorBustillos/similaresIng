
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
            cnn = new Conexion();
            dep = new Departamentos();
            
            dep.setIddepartamento(Integer.parseInt(request.getParameter("txtIddepartamento")));
            dep.setNombre(request.getParameter("txtNombre"));
            dep.setIdproducto(Integer.parseInt(request.getParameter("txtIdproducto")));
            
            
            datosD = new DatosDepartamentos(cnn);
            datosD.insertDepartamentos(dep);
            
            
            
            
            
            
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DepartamentosSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DepartamentosSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

   
}
