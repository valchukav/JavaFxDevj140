package ru.avalon.javafxlogin.exception;

import lombok.NoArgsConstructor;

/**
 * @author Alexei Valchuk, 11.02.2023, email: a.valchukav@gmail.com
 */

@NoArgsConstructor
public class LoginException extends RuntimeException {

    public LoginException(String message) {
        super(message);
    }

    public LoginException(String message, Throwable cause) {
        super(message, cause);
    }
}
