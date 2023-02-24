package ru.avalon.javafxlogin.model;

import lombok.experimental.UtilityClass;
import ru.avalon.javafxlogin.exception.LoginException;
import ru.avalon.javafxlogin.to.PersonTo;
import ru.avalon.javafxlogin.util.ConnectionManager;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * @author Alexei Valchuk, 11.02.2023, email: a.valchukav@gmail.com
 */

@UtilityClass
public class Service {

    private static final Set<PersonTo> PERSONS = new HashSet<>();
    private static final Map<Integer, Set<Domain>> DOMAINS = new HashMap<>();

    public static boolean checkUser(String userName, String password) {
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

    private static void loadPersons() {
        try (PreparedStatement preparedStatement =
                     ConnectionManager.getConnection().prepareStatement("SELECT P.*, count(D.ID) " +
                             "FROM APP.PERSON P LEFT JOIN APP.DOMAINS D on P.ID = D.PERSONID\n" +
                             "GROUP BY P.ID, JOBTITLE, FIRSTNAMELASTNAME, PHONE, EMAIL")) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                PERSONS.add(new PersonTo(mapPerson(resultSet), resultSet.getInt(6)));
            }
        } catch (SQLException | IOException | ClassNotFoundException e) {
            throw new LoginException(e.getMessage(), e);
        }
    }

    private static void loadDomains() {
        try (PreparedStatement preparedStatement =
                     ConnectionManager.getConnection().prepareStatement("SELECT * FROM APP.DOMAINS")) {
            ResultSet resultSet = preparedStatement.executeQuery();
            PERSONS.forEach(personTo -> DOMAINS.put(personTo.getId(), new HashSet<>()));
            while (resultSet.next()) {
                Domain domain = mapDomain(resultSet);
                Integer personId = resultSet.getInt(7);
                DOMAINS.computeIfPresent(personId, (integer, domains) -> {
                    HashSet<Domain> set = new HashSet<>(domains);
                    set.add(domain);
                    return set;
                });
            }
        } catch (SQLException | IOException | ClassNotFoundException e) {
            throw new LoginException(e.getMessage(), e);
        }
    }

    private static Person mapPerson(ResultSet resultSet) throws SQLException {
        return Person.builder()
                .id(resultSet.getInt(1))
                .jobTitle(resultSet.getString(2))
                .fullName(resultSet.getString(3))
                .phone(resultSet.getString(4))
                .email(resultSet.getString(5))
                .build();
    }

    private static Domain mapDomain(ResultSet resultSet) throws SQLException {
        return Domain.builder()
                .id(resultSet.getInt(1))
                .webName(resultSet.getString(2))
                .domainName(resultSet.getString(3))
                .ip(resultSet.getString(4))
                .regDate(resultSet.getTimestamp(5))
                .regCountry(resultSet.getString(6))
                .build();
    }

    public static Set<PersonTo> getPersonsSet() {
        if (PERSONS.isEmpty()) loadPersons();
        return PERSONS;
    }

    public static Set<Domain> getDomainsSet(Integer personId) {
        if (DOMAINS.isEmpty()) loadDomains();
        return DOMAINS.get(personId);
    }
}
