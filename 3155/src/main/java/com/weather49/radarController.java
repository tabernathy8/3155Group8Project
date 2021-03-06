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
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Evan
 */
public class radarController extends HttpServlet {

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
        WeatherBean wd = new WeatherBean();
        HttpSession session = request.getSession();
        session.setAttribute("act", "radar");
        String action = request.getParameter("action");
        wd.setCity(request.getParameter("city"));  
        wd.setCurrentWeather();
        
        if(session.getAttribute("lat") != null)
        {
            String oldCity = (String) session.getAttribute("city");
            double oldLat = (double) session.getAttribute("lat");
            double oldLng = (double) session.getAttribute("lng");
            if(wd.getHigh() == -512)
            {
                session.setAttribute("city",oldCity);
                session.setAttribute("lat", oldLat);
                session.setAttribute("lng", oldLng);
                getServletContext()
                        .getRequestDispatcher("/radar.jsp")
                            .forward(request, response);
            }
        }
        session.setAttribute("action", action);
        if(action.equals("Radar"))
        {
            session.setAttribute("city", wd.getCurrentWeather().getCityName());
            session.setAttribute("lat", wd.getLatitude());
            session.setAttribute("lng",wd.getLongitude());
            getServletContext()
                    .getRequestDispatcher("/radar.jsp")
                    .forward(request, response);
            
        }
        else
        {
            getServletContext()
                    .getRequestDispatcher("/index.jsp")
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
