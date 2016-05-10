
package clases;

import java.sql.SQLException;

public class DatosOfertas {
    
    private Conexion cnn;
    private Ofertas ofe;
    
public DatosOfertas(Conexion cnn){
        this.cnn = cnn;
}

public void insertOferta(Ofertas ofe) throws SQLException{
        this.ofe = ofe;
    
        cnn.ejecutarSQL(
                        "insert into Ofertas values("
                        + ofe.getIdoferta() 
                        +", "+ ofe.getIdproducto()
                        +", "+ ofe.getOferta()
                        +", '"+ ofe.getFecha()+ "')");
        
}

}
