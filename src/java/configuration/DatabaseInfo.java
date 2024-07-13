
package configuration;

/**
 *
 * @author admin
 */
public interface DatabaseInfo {
    public static String DRIVERNAME="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public static String DBURL="jdbc:sqlserver://LEN;databaseName=FruitStore;encrypt=false;trustServerCertificate=false;loginTimeout=30;";
    public static String USERDB="sa";
    public static String PASSDB="123";
}
