package ru.avalon.javafxlogin.controller;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import ru.avalon.javafxlogin.model.Domain;
import ru.avalon.javafxlogin.model.Service;

import java.net.URL;
import java.util.Date;
import java.util.Objects;
import java.util.ResourceBundle;

/**
 * @author Alexei Valchuk, 18.02.2023, email: a.valchukav@gmail.com
 */

public class DomainController implements Initializable {

    @FXML
    private TableView<Domain> tableDomain;

    @FXML
    private TableColumn<Domain, Integer> idCol;

    @FXML
    private TableColumn<Domain, String> webNameCol;

    @FXML
    private TableColumn<Domain, String> nameCol;

    @FXML
    private TableColumn<Domain, String> ipCol;

    @FXML
    private TableColumn<Domain, Date> dateCol;

    @FXML
    private TableColumn<Domain, String> countryCol;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        idCol.setCellValueFactory(new PropertyValueFactory<>("id"));
        webNameCol.setCellValueFactory(new PropertyValueFactory<>("webName"));
        nameCol.setCellValueFactory(new PropertyValueFactory<>("domainName"));
        ipCol.setCellValueFactory(new PropertyValueFactory<>("ip"));
        dateCol.setCellValueFactory(new PropertyValueFactory<>("regDate"));
        countryCol.setCellValueFactory(new PropertyValueFactory<>("regCountry"));

        ObservableList<Domain> domains = FXCollections.observableArrayList(Service.getDomainsSet(PersonController.getSelectedRow().getId()));
        tableDomain.setItems(domains);
    }

    @FXML
    protected void onChangeStyleButtonClick() {
        boolean isDefault = PersonController
                .getDomain()
                .getStylesheets()
                .stream()
                .noneMatch(style -> style.endsWith("custom.css"));

        if (isDefault) {
            changeStyle("/css/custom.css");
        } else {
            changeStyle("/css/default.css");
        }
    }

    private void changeStyle(String name) {
        PersonController
                .getDomain()
                .getStylesheets()
                .clear();
        PersonController
                .getDomain()
                .getStylesheets()
                .add(Objects.requireNonNull(DomainController.class.getResource(name)).toExternalForm());
    }
}
