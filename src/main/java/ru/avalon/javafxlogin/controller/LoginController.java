package ru.avalon.javafxlogin.controller;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.paint.Color;
import ru.avalon.javafxlogin.exception.LoginException;
import ru.avalon.javafxlogin.model.UserService;

public class LoginController {

    private final UserService userService = new UserService();

    @FXML
    private TextField userName;
    @FXML
    private PasswordField password;
    @FXML
    private Label connectionResult;

    @FXML
    protected void onLoginButtonClick() {
        try {
            if (userService.checkUser(userName.getText(), password.getText())) {
                connectionResult.setTextFill(Color.GREEN);
                connectionResult.setText("Login was successful");
            } else {
                connectionResult.setTextFill(Color.RED);
                connectionResult.setText("Incorrect User Name or Password");
            }
        } catch (LoginException e) {
            new Alert(Alert.AlertType.ERROR, e.getMessage()).showAndWait();
        }
    }
}