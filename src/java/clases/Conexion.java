
package clases;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.Connection;

public class Conexion {
    
    private Connection conexion;
    private Statement instruccionSql;
    
    public Conexion()throws ClassNotFoundException, SQLException{
        
        Class.forName("com.mysql.jdbc.Driver");
        
        conexion = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/farmacia?zeroDateTimeBehavior=convertToNull",
                    "root",
                    ""
                    );
    }
    
    public ResultSet consultar(String sql) throws SQLException{
        
        instruccionSql = conexion.createStatement();
        return instruccionSql.executeQuery(sql);
    }
    
    public void ejecutarSQL(String sql) throws SQLException{
        
        instruccionSql = conexion.createStatement();
        instruccionSql.execute(sql);
    }
    
}
