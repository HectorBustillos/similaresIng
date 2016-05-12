
package clases;

import java.sql.SQLException;

public class DatosOfertas {
    
    private Conexion cnn;
    private Ofertas ofe;
    
    public DatosOfertas(Conexion cnn){
            this.cnn = cnn;
    }

    public void insertOferta(Ofertas ofe, int oferta) throws SQLException{
            this.ofe = ofe;

            if(oferta == 1){
                cnn.ejecutarSQL(
                            "insert into Ofertas values("
                            + ofe.getIdoferta() 
                            +", "+ ofe.getIdproducto()
                            +", "+ ofe.getOferta()
                            +", '"+ ofe.getFecha()+ "')"
                 );
            }else if(oferta == 2){
                cnn.ejecutarSQL("delete from Ofertas");    
                cnn.ejecutarSQL("alter table Ofertas AUTO_INCREMENT = 1"); 
            }

    }

}
