
package clases;

import java.sql.SQLException;


public class DatosDepartamentos {
    
    private Conexion cnn;
    private Departamentos dep;
    
    public DatosDepartamentos(Conexion cnn){
            this.cnn = cnn;
    }

    public void insertDepartamentos(Departamentos dep, int opcion) throws SQLException{
            this.dep = dep;

            if(opcion == 1){
                cnn.ejecutarSQL(
                            "insert into departamentos values("
                            +dep.getIddepartamento()
                            +", '"+ dep.getNombre() + "'"
                            +", "+ dep.getIdproducto() + ")"
                );
            }else if(opcion == 2){
                cnn.ejecutarSQL("delete from departamentos");    
            cnn.ejecutarSQL("alter table departamentos AUTO_INCREMENT = 1"); 
            }

    }
}
