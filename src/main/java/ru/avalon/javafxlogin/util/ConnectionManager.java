package ru.avalon.javafxlogin.util;

import lombok.experimental.UtilityClass;
import ru.avalon.javafxlogin.model.UserService;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * @author Alexei Valchuk, 11.02.2023, email: a.valchukav@gmail.com
 */

@UtilityClass
public class ConnectionManager {

    private static final String PROPS = "application.properties";
    private Connection connection;

    public Connection getConnection() throws IOException, ClassNotFoundException, SQLException {
        if (connection != null) {
            return connection;
        } else {
            try (InputStream resource = UserService.class.getClassLoader().getResourceAsStream(PROPS)) {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Properties properties = new Properties();
                properties.load(resource);
                connection = DriverManager.getConnection(
                        properties.getProperty("db.url"),
                        properties.getProperty("db.user"),
                        properties.getProperty("db.password")
                );
                return connection;
            }
        }
    }

    public void closeConnection() throws SQLException {
        if (connection != null) connection.close();
    }
}
