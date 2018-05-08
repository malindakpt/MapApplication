package servlet;

import entitiy.Location;
import factory.PersistorFactory;
import manager.MockEntityManager;
import manager.SQLEntityManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by MalindaK on 5/7/2018.
 */
public class SaveLocation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        try {
            String name = request.getParameter("name");
            Float lat = Float.parseFloat(request.getParameter("lat"));
            Float lon = Float.parseFloat(request.getParameter("lon"));

            Location location = new Location(name, lat, lon);
            PersistorFactory.getPersistor().add(location);
        } catch (Exception e){

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
