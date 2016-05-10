
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


@WebServlet(name = "OfertasSVT", urlPatterns = {"/OfertasSVT"})
public class OfertasSVT extends HttpServlet {

    private Conexion cnn;
    private Ofertas ofe;
    private DatosOfertas datosO;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            cnn = new Conexion();
            ofe = new Ofertas();
            
            ofe.setIdoferta(Integer.parseInt(request.getParameter("txtIdoferta")));
            ofe.setIdproducto(Integer.parseInt(request.getParameter("txtIdproducto")));
            ofe.setOferta(Integer.parseInt(request.getParameter("txtOferta")));
            ofe.setFecha(request.getParameter("txtFecha"));
            
            
            datosO = new DatosOfertas(cnn);
            datosO.insertOferta(ofe);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(OfertasSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(OfertasSVT.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        
    }

  

}
