
package clases;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


@WebServlet(name = "ClientesSVT", urlPatterns = {"/ClientesSVT"})
public class ClientesSVT extends HttpServlet {
    
    private DatosClientes datosC;
    private Clientes cl;
    private Conexion cnn;
 
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
                cl = new Clientes();

            if(opcion == 1){
                cl.setNombre(request.getParameter("txtClienteNombre"));
                cl.setApeidoPaterno(request.getParameter("txtClienteApeidoPaterno"));
                cl.setApeidoMaterno(request.getParameter("txtClienteApeidoMaterno"));
                cl.setTelefono(request.getParameter("txtClienteTelefono"));
                cl.setDireccion(request.getParameter("txtClienteDireccion"));
                cl.setCodigoPostal(request.getParameter("txtClienteCodigoPostal"));
                cl.setCiudad(request.getParameter("txtClienteCiudad"));
                cl.setEstado(request.getParameter("txtClienteEstado"));

                datosC = new DatosClientes(cnn);
                datosC.insertClientes(cl, opcion);
            }else if(opcion == 2){
                datosC = new DatosClientes(cnn);
                datosC.insertClientes(null, opcion);
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ClientesSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(ClientesSVT.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null,"ERROR: " + ex.getMessage());
        } finally {
            response.sendRedirect("clientes.jsp");  
        }
        
    }
}
