package ru.avalon.javafxlogin.model;

import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

import java.util.Date;

/**
 * @author Alexei Valchuk, 18.02.2023, email: a.valchukav@gmail.com
 */

@Builder
@EqualsAndHashCode
@ToString
@Getter
public class Domain {

    private Integer id;
    private String webName;
    private String domainName;
    private String ip;
    private Date regDate;
    private String regCountry;
}
