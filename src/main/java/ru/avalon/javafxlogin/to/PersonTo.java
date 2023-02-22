package ru.avalon.javafxlogin.to;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;
import ru.avalon.javafxlogin.model.Person;

/**
 * @author Alexei Valchuk, 18.02.2023, email: a.valchukav@gmail.com
 */

@EqualsAndHashCode
@ToString
@Getter
public class PersonTo {

    private final Integer id;
    private final String jobTitle;
    private final String fullName;
    private final String phone;
    private final String email;
    private final Integer domainCount;

    public PersonTo(Integer id, String jobTitle, String fullName, String phone, String email, Integer domainCount) {
        this.id = id;
        this.jobTitle = jobTitle;
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.domainCount = domainCount;
    }

    public PersonTo(Person person, Integer domainCount) {
        this(person.getId(), person.getJobTitle(), person.getFullName(), person.getPhone(), person.getEmail(), domainCount);
    }
}
