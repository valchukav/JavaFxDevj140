package ru.avalon.javafxlogin.model;

import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

/**
 * @author Alexei Valchuk, 17.02.2023, email: a.valchukav@gmail.com
 */

@Builder
@EqualsAndHashCode
@ToString
@Getter
public class Person {

    private final Integer id;
    private final String jobTitle;
    private final String fullName;
    private final String phone;
    private final String email;
}
