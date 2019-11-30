/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.weather49;

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
import java.util.*;
import java.io.IOException;
import java.net.*;
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
@WebServlet(name = "fiveDayController", urlPatterns = {"/forecast"})
public class fiveDayController extends HttpServlet {

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
        String action =request.getParameter("action");
        String city;
        WeatherBean wd = new WeatherBean();
        HttpSession session = request.getSession();
        if(action.equalsIgnoreCase("5 Day Forecast"))
        {
            city = request.getParameter("city");
            session.setAttribute("city" ,city);
            wd.setCity(city);
            wd.setHourlyForecast();
            List<WeatherData> ws = wd.getHourlyForecast();
            List<WeatherData> x = new ArrayList();
            for(int i = 0; i < ws.size();i++)
            {
                if(ws.get(i).getDateTimeText().contains("12:00:00"))
                {   
                    x.add(ws.get(i));
                }
            }
            session.setAttribute("daily", x);
            getServletContext()
                    .getRequestDispatcher("/5day.jsp")
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
