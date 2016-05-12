package clases;

import java.sql.SQLException;

public class DatosConsultas {
    
    private Conexion cnn;
    private Consultas cons;
    
    public DatosConsultas(Conexion cnn){
        this.cnn = cnn;
    }
    public void insertConsultas(Consultas cons, int opcion) throws SQLException{
        if(opcion == 1){
            
            this.cons = cons;
            cnn.ejecutarSQL(
                        "insert into Consultas values("
                        + cons.getNumeroConsulta()
                       +", "+ cons.getIdcliente() 
                       +", "+ cons.getIddoctor()
                       +", '"+ cons.getFecha() +"'"
                       +", '"+ cons.getDiagnostico() +"')"
            );

        }else if(opcion == 2){
            cnn.ejecutarSQL("delete from Consultas");    
            cnn.ejecutarSQL("alter table Consultas AUTO_INCREMENT = 1");    
        }
    }

}
