
package clases;

import java.sql.SQLException;


public class DatosDepartamentos {
    
    private Conexion cnn;
    private Departamentos dep;
    
public DatosDepartamentos(Conexion cnn){
        this.cnn = cnn;
}

public void insertDepartamentos(Departamentos dep) throws SQLException{
        this.dep = dep;
        
        cnn.ejecutarSQL(
                        "insert into departamentos values("
                        +dep.getIddepartamento()
                        +", '"+ dep.getNombre() + "'"
                        +", "+ dep.getIdproducto() + ")");
        
}
}
