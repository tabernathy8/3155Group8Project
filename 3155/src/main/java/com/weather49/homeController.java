/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.weather49;

import com.github.prominence.openweathermap.api.model.Rain;
import com.github.prominence.openweathermap.api.model.Snow;
import com.github.prominence.openweathermap.api.model.Wind;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.sql.*;
import net.aksingh.owmjapis.core.*;
import net.aksingh.owmjapis.api.*;
import net.aksingh.owmjapis.model.*;
import net.aksingh.owmjapis.model.param.WeatherData;
import net.aksingh.owmjapis.model.param.ForecastData;
import net.aksingh.owmjapis.model.param.Weather;
import net.aksingh.owmjapis.demo.*;
import net.aksingh.owmjapis.util.*; 

/**
 *
 * @author Evan
 */
public class homeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        WeatherBean wd = new WeatherBean();
        String city;
        double high;
        double low;
        double current;
        String action = request.getParameter("action");
        System.out.println(action);
        String invalid = "false";
        if(action.equalsIgnoreCase("Contact Us"))
        {
            getServletContext()
                    .getRequestDispatcher("/contact.jsp")
                    .forward(request, response);  
        }
        if(action.equalsIgnoreCase("About Us"))
        {
            getServletContext()
                    .getRequestDispatcher("/about.jsp")
                    .forward(request, response);  
        }
        if(action.equalsIgnoreCase("Home") && (invalid.equals("false")))
        {
            session.setAttribute("invalid", "true");
            city = request.getParameter("city");
            String a = (String) session.getAttribute("city");
            System.out.println(a);
            wd.setCity(city);
            wd.setCurrentWeather();
            if(wd.getHigh() == -512)
            {
                session.setAttribute("invalid", "true");
                session.removeAttribute(city);
                getServletContext()
                    .getRequestDispatcher("/index.jsp")
                    .forward(request, response);
            }
            if(wd.getLow() == -512)
            {
                session.setAttribute("invalid", "true");
                session.removeAttribute(city);
                getServletContext()
                    .getRequestDispatcher("/index.jsp")
                    .forward(request, response);
            }
            if(wd.getCurrentTemp() == -512)
            {
                session.setAttribute("invalid", "true");
                session.removeAttribute(city);
                getServletContext()
                    .getRequestDispatcher("/index.jsp")
                    .forward(request, response);
            }
            session.setAttribute("invalid", "false");
            high = wd.getHigh();
            high = Math.round(high);
            int intHigh = (int) high;
            session.setAttribute("high", intHigh);
            low = wd.getLow();
            low= Math.round(low);
            int intLow = (int) low;
            session.setAttribute("low", intLow);
            current = wd.getCurrentTemp();
            current = Math.round(current);
            int intCur = (int) current;
            session.setAttribute("current", intCur);
            city = wd.getCity();
            Snow snowInfo = wd.getSnow();
            Rain rainInfo = wd.getRain();
            Wind windInfo = wd.getWind();
            
            
            session.setAttribute("weather", wd.getCurrentWeather().getWeatherStates().get(0).getWeatherGroup());
            session.setAttribute("weatherDescription", wd.getCurrentWeather().getWeatherStates().get(0).getDescription());
            session.setAttribute("city", city);
            session.setAttribute("sunUp", wd.getSunRiseTime());
            session.setAttribute("sunDown", wd.getSunSetTime());
            session.setAttribute("humidity", wd.getCurrentWeather().getHumidityPercentage());
            session.setAttribute("pressure", wd.getCurrentWeather().getPressure());
            session.setAttribute("snow", snowInfo);
            session.setAttribute("rain", rainInfo);
            session.setAttribute("wind", windInfo);
            
            
            
            
            request.setAttribute("Current", wd.getCurrentTemp());
            getServletContext()
                    .getRequestDispatcher("/index.jsp")
                    .forward(request, response);        
        }
        if(action.equalsIgnoreCase("Home") && invalid.equalsIgnoreCase("True"))
        {
            session.removeAttribute("city");
            session.removeAttribute("high");
            session.removeAttribute("low");
            session.removeAttribute("current");
            
            getServletContext()
                    .getRequestDispatcher("/index.jsp")
                        .forward(request,response);
        }
        if(action.equalsIgnoreCase("See More"))
        {
            
            getServletContext()
                    .getRequestDispatcher("/details.jsp")
                        .forward(request, response);
            
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
