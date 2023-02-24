package ru.avalon.javafxlogin.model;

import lombok.Builder;
import lombok.EqualsAndHashCode;

/**
 * @author Alexei Valchuk, 11.02.2023, email: a.valchukav@gmail.com
 */

@Builder
@EqualsAndHashCode
public class User {

    private String userName;
    private String password;
}
