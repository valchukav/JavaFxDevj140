package ru.avalon.javafxlogin;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import ru.avalon.javafxlogin.util.ConnectionManager;

import java.io.IOException;

public class Main extends Application {

    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(Main.class.getResource("login-view.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 420, 360);
        stage.getIcons().add(new Image("images/title.png"));
        stage.setTitle("JavaFX Welcome");
        stage.setScene(scene);
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