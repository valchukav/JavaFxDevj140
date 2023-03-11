package ru.avalon.javafxlogin;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import lombok.Getter;
import ru.avalon.javafxlogin.util.ConnectionManager;

import java.io.IOException;

public class Main extends Application {

    public static final int WIDTH = 900;
    public static final int HEIGHT = 650;

    @Getter
    private static Stage primaryStage;

    @Override
    public void start(Stage stage) throws IOException {
        primaryStage = stage;
        FXMLLoader fxmlLoader = new FXMLLoader(Main.class.getResource("login-view.fxml"));
        Scene login = new Scene(fxmlLoader.load(), WIDTH, HEIGHT);

        stage.getIcons().add(new Image("images/title.png"));
        stage.setTitle("JavaFX Welcome");
        stage.setResizable(false);
        stage.setScene(login);
        stage.show();
    }

    @Override
    public void stop() throws Exception {
        super.stop();
        ConnectionManager.closeConnection();
    }

    public static void main(String[] args) {
        launch();
    }
}