package model;


import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

 
public class Connect {
	 
    // Kết nối vào SQLServer.
    // (Sử dụng thư viện điều khiển JTDS)
    public static Connection getConnectionJTDS() //
            throws SQLException, ClassNotFoundException {
 
        // Chú ý: Thay đổi các thông số kết nối cho phù hợp.
        String hostName = "ASUS-K455L";
        String sqlInstanceName = "PC";
        String database = "NCKH";
        String userName = "Andro";
        String password = "123";
 
        return getConnectionJTDS(hostName, sqlInstanceName, database, userName, password);
    }
 
    // Kết nối tới SQL Server sử dụng thư viện JTDS.
    private static Connection getConnectionJTDS(String hostName, //
            String sqlInstanceName, String database, String userName, String password)
            throws ClassNotFoundException, SQLException {
 
        Class.forName("net.sourceforge.jtds.jdbc.Driver");
 
        // Cấu trúc URL Connection đối với SQL Server:
        // Ví dụ:
        // jdbc:jtds:sqlserver://localhost:1433/simplehr;instance=SQLEXPRESS
        String connectionURL = "jdbc:jtds:sqlserver://" + hostName + ":1433/" //
                + database + ";instance=" + sqlInstanceName;
 
        Connection conn = DriverManager.getConnection(connectionURL, userName, password);
        return conn;
    }
 
}
 
