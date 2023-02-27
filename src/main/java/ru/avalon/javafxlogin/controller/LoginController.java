package ru.avalon.javafxlogin.controller;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.paint.Color;
import ru.avalon.javafxlogin.Main;
import ru.avalon.javafxlogin.exception.LoginException;
import ru.avalon.javafxlogin.model.Service;

import java.io.IOException;

import static ru.avalon.javafxlogin.Main.HEIGHT;
import static ru.avalon.javafxlogin.Main.WIDTH;

public class LoginController {

    @FXML
    private TextField userName;
    @FXML
    private PasswordField password;
    @FXML
    private Label connectionResult;

    @FXML
    protected void onLoginButtonClick() {
        try {
            if (Service.checkUser(userName.getText(), password.getText())) {
                FXMLLoader fxmlLoader = new FXMLLoader(LoginController.class.getResource("persons-view.fxml"));
                Scene scene = new Scene(fxmlLoader.load(), WIDTH, HEIGHT);
                Main.getPrimaryStage().setTitle("Persons");
                Main.getPrimaryStage().setScene(scene);
            } else {
                connectionResult.setTextFill(Color.RED);
                connectionResult.setText("Incorrect User Name or Password");
            }
        } catch (LoginException | IOException e) {
            new Alert(Alert.AlertType.ERROR, e.getMessage()).showAndWait();
        }
    }
}