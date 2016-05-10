
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
            cnn = new Conexion();
            doc = new Doctores();
            
            doc.setIddoctores(Integer.parseInt(request.getParameter("txtIddoctores")));
            doc.setNombre(request.getParameter("txtNombre"));
            doc.setApeidoPaterno(request.getParameter("txtApeidoPaterno"));
            doc.setApeidoMaterno(request.getParameter("txtApeidoMaaterno"));
            doc.setTelefono(request.getParameter("txtTelefono"));
            doc.setDireccion(request.getParameter("txtDireccion"));
            
            
            datosD = new DatosDoctores(cnn);
            datosD.insertDoctores(doc);
       
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DoctoresSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DoctoresSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
           
            
        
    }

 

}
