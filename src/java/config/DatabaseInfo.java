/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

/**
 *
 * @author admin
 */
public interface DatabaseInfo {
    public static String DRIVERNAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public static String DBURL = "jdbc:sqlserver://MIQUANGGA;databaseName=FruitStore;encrypt=false;trustServerCertificate=false;loginTimeout=30;";
    public static String USERDB = "sa";
    public static String PASSDB = "123";
}
