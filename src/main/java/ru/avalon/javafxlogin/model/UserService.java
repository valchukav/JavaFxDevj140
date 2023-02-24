package ru.avalon.javafxlogin.model;

import lombok.NoArgsConstructor;
import ru.avalon.javafxlogin.exception.LoginException;
import ru.avalon.javafxlogin.util.ConnectionManager;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Alexei Valchuk, 11.02.2023, email: a.valchukav@gmail.com
 */

@NoArgsConstructor
public class UserService {

    public boolean checkUser(String userName, String password) {
        if (userName.isEmpty() || password.isEmpty()) return false;

        User user = User.builder().userName(userName).password(password).build();

        try (PreparedStatement preparedStatement =
                     ConnectionManager.getConnection().prepareStatement("select NAME, PASSWORD from APP.USERS where NAME = ?")) {
            preparedStatement.setString(1, userName);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    return user.equals(User.builder()
                            .userName(resultSet.getString(1))
                            .password(resultSet.getString(2))
                            .build());
                } else return false;
            }
        } catch (SQLException | IOException | ClassNotFoundException e) {
            throw new LoginException(e.getMessage(), e);
        }
    }

}
