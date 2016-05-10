
package clases;

import java.sql.SQLException;


public class DatosEmpleados {
   
    private Conexion cnn;
    private Empleados emp;
    
public DatosEmpleados(Conexion cnn){
    this.cnn = cnn;
}    
public void insertEmpleados(Empleados emp) throws SQLException{
    this.emp = emp;
    
    cnn.ejecutarSQL(
                    "insert into Empleados values("
                    + emp.getIdempleado() +
                    ", '"+ emp.getNombre() +"'"
                   +", '"+ emp.getApeidoPaterno() +"'"
                   +", '"+ emp.getApeidoMaterno() +"'"
                   +", '"+ emp.getEmail() +"'"
                   +", "+ emp.getSeguroSocial() +
                    ", "+ emp.getCodigo() +
                    ", '"+ emp.getPuesto() +"'"
                   +", '"+ emp.getTurno() +"')");   
}
}
