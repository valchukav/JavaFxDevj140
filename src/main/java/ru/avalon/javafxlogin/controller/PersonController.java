package ru.avalon.javafxlogin.controller;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableRow;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.stage.Modality;
import javafx.stage.Stage;
import lombok.Getter;
import ru.avalon.javafxlogin.model.Service;
import ru.avalon.javafxlogin.to.PersonTo;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import static ru.avalon.javafxlogin.Main.HEIGHT;
import static ru.avalon.javafxlogin.Main.WIDTH;

/**
 * @author Alexei Valchuk, 17.02.2023, email: a.valchukav@gmail.com
 */

public class PersonController implements Initializable {

    @Getter
    private static PersonTo selectedRow;

    @Getter
    private static Scene domain;

    @FXML
    private TableView<PersonTo> tablePerson;

    @FXML
    private TableColumn<PersonTo, Integer> idCol;

    @FXML
    private TableColumn<PersonTo, String> jobCol;

    @FXML
    private TableColumn<PersonTo, String> nameCol;

    @FXML
    private TableColumn<PersonTo, String> phoneCol;

    @FXML
    private TableColumn<PersonTo, String> emailCol;

    @FXML
    private TableColumn<PersonTo, Integer> domainCol;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        idCol.setCellValueFactory(new PropertyValueFactory<>("id"));
        jobCol.setCellValueFactory(new PropertyValueFactory<>("jobTitle"));
        nameCol.setCellValueFactory(new PropertyValueFactory<>("fullName"));
        phoneCol.setCellValueFactory(new PropertyValueFactory<>("phone"));
        emailCol.setCellValueFactory(new PropertyValueFactory<>("email"));
        domainCol.setCellValueFactory(new PropertyValueFactory<>("domainCount"));

        ObservableList<PersonTo> people = FXCollections.observableArrayList(Service.getPersonsSet());
        tablePerson.setItems(people);

        tablePerson.setRowFactory(tv -> {
            TableRow<PersonTo> row = new TableRow<>();
            row.setOnMouseClicked(event -> {
                if (event.getClickCount() == 2) {
                    selectedRow = row.getItem();
                    showDomainWindow();
                }
            });
            return row;
        });
    }

    private void showDomainWindow() {
        try {
            Stage window = new Stage();
            window.initModality(Modality.APPLICATION_MODAL);

            FXMLLoader fxmlLoader = new FXMLLoader(PersonController.class.getResource("domain-view.fxml"));
            domain = new Scene(fxmlLoader.load(), WIDTH - 150, HEIGHT - 50);

            window.getIcons().add(new Image("images/title.png"));
            window.setTitle("Domain");
            window.setScene(domain);
            window.showAndWait();
        } catch (IOException e) {
            new Alert(Alert.AlertType.ERROR, e.getMessage()).showAndWait();
            System.out.println(e.getMessage());
        }
    }
}
