
package clases;

import java.sql.SQLException;


public class DatosEmpleados {
   
    private Conexion cnn;
    private Empleados emp;
    
    public DatosEmpleados(Conexion cnn){
        this.cnn = cnn;
    }    
    public void insertEmpleados(Empleados emp, int opcion) throws SQLException{
        this.emp = emp;

        if(opcion == 1){
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
        }else if(opcion == 2){
            cnn.ejecutarSQL("delete from Empleados");    
            cnn.ejecutarSQL("alter table Empleados AUTO_INCREMENT = 1"); 
        }
    }
}
