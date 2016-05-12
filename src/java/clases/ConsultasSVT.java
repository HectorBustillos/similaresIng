
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
            
            int opcion = 0;
            String opc = request.getParameter("cmd");
            if(opc.equals("g")) opcion = 1;
            else if(opc.equals("b")) opcion = 2;

            cnn = new Conexion();
            cons = new Consultas();
            
            if(opcion == 1){
                cons.setIdcliente(Integer.parseInt(request.getParameter("txtIdcliente")));
                cons.setIddoctor(Integer.parseInt(request.getParameter("txtIdoctro")));
                cons.setFecha(Date.valueOf(request.getParameter("txtFecha")));
                cons.setDiagnostico(request.getParameter("txtDiagnostico"));

                datosC = new DatosConsultas(cnn);
                datosC.insertConsultas(cons, opcion);
            }else if(opcion == 2){
                datosC = new DatosConsultas(cnn);
                datosC.insertConsultas(null, opcion);
            }
            
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConsultasSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(ConsultasSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } finally {
            response.sendRedirect("consultas.jsp");  
        }
          
    }

}
