package clases;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


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
            
            int opcion = 0;
            String opc = request.getParameter("cmd");
            if(opc.equals("g")) opcion = 1;
            else if(opc.equals("b")) opcion = 2;
            
            cnn = new Conexion();
            ofe = new Ofertas();
            
            if(opcion == 1){
                ofe.setIdproducto(Integer.parseInt(request.getParameter("txtIdproducto")));
                ofe.setOferta(Integer.parseInt(request.getParameter("txtOferta")));
                ofe.setFecha(Date.valueOf(request.getParameter("txtFecha")));

                datosO = new DatosOfertas(cnn);
                datosO.insertOferta(ofe, opcion);
            }else if(opcion == 2){
                datosO = new DatosOfertas(cnn);
                datosO.insertOferta(null, opcion);
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(OfertasSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(OfertasSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } finally {
            response.sendRedirect("ofertas.jsp");  
        }

        
        
    }

  

}
