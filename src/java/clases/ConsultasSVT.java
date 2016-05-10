
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


@WebServlet(name = "ConsultasSVT", urlPatterns = {"/ConsultasSVT"})
public class ConsultasSVT extends HttpServlet {
    
    private Conexion cnn;
    private DatosConsultas datosC;
    private Consultas cons;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            cnn = new Conexion();
            cons = new Consultas();
            
            
            cons.setNumeroConsulta(Integer.parseInt(request.getParameter("txtNumeroConsulta")));
            cons.setIdcliente(Integer.parseInt(request.getParameter("txtIdcliente")));
            cons.setIddoctor(Integer.parseInt(request.getParameter("txtIdoctro")));
            cons.setFecha(request.getParameter("txtFecha"));
            cons.setDiagnostico(request.getParameter("txtDiagnostico"));
            
            datosC = new DatosConsultas(cons);
            
            datosC.insertConsultas(cons);
            
            
            
            
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConsultasSVT.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ConsultasSVT.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

}
