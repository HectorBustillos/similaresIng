
package clases;

import java.sql.SQLException;


public class DatosVentasMaster {
    
    private Conexion cnn;
    private VentasMaster ventasM;

    
public DatosVentasMaster(Conexion cnn){
    this.cnn = cnn;
}    

public void insertVentasMaster(VentasMaster ventasM) throws SQLException{
    this.ventasM = ventasM;
    
    cnn.ejecutarSQL(
                    "insert into VentaMaster values("
                    +ventasM.getIdventa()
                    +", "+ ventasM.getIdcliente()
                    +", '"+ ventasM.getFecha() +"'"
                    +", "+ ventasM.getIdempleado()+")"
                    );
    
}
}
