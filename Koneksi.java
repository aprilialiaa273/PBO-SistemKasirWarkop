import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi {
    
    private static Connection connection;
    
    public static Connection getConnection() {
        System.out.println("Method koneksi dipanggil");
    try {
        String url = "jdbc:mariadb://localhost:3306/pos_warkop";
        String user = "root";
        String password = "123456";

        connection = DriverManager.getConnection(url, user, password);
        System.out.println("Koneksi berhasil!");

    } catch (SQLException e) {
        e.printStackTrace();
    }

    return connection;
}
}