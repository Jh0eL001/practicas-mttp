
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    public static Connection getConexion() {
        Connection con = null;
        try {
            // 1. Cargar el Driver específico de MariaDB
            Class.forName("org.mariadb.jdbc.Driver");

            // 2. Cambiar la URL de "jdbc:mysql" a "jdbc:mariadb"
            String url = "jdbc:mariadb://localhost:3306/bd_ventas";
            String user = "root";
            String password = "";

            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            System.out.println("Error: No se encontró el driver de MariaDB.");
        } catch (Exception e) {
            System.out.println("Error de conexión: " + e.getMessage());
        }
        return con;
    }
}
