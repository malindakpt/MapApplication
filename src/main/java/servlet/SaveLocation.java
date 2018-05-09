package servlet;

import entitiy.Location;
import manager.Persistor;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SaveLocation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            Double lat = Double.parseDouble(request.getParameter("lat"));
            Double lon = Double.parseDouble(request.getParameter("lon"));

            Location location = new Location(name, lat, lon);
            Persistor.getPersistorInstance().add(location);
        } catch (Exception e){

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
