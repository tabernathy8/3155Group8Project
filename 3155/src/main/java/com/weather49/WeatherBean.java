/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.weather49;
import java.util.*;
import java.io.IOException;
import java.net.*;
import net.aksingh.owmjapis.core.*;
import net.*;
import net.aksingh.owmjapis.api.*;
import net.aksingh.owmjapis.model.*;
import net.aksingh.owmjapis.model.param.*;
import net.aksingh.owmjapis.demo.*;
import net.aksingh.owmjapis.util.*; 

/**
 *
 * @author Evan
 */
public class WeatherBean {
    OWM owm = new OWM("566c5f6f796270ca04bd8c5031da5847");
    String location;
    double high;
    double low;
    double current;
    String country;
    List<WeatherData> hwdl;
    List<ForecastData> dwdl;
    CurrentWeather cwd;
    
    
    public WeatherBean(){
    }
    public String getCity(){
        return location;
    }
    public void setCity(String city){
        location = city;
    }
    public double getHigh(){
        high = cwd.getMainData().getTempMax();
        return high;
    }
    public double getCurrentTemp(){
        current = cwd.getMainData().getTemp();
        return current;
    }
    public CurrentWeather getCurrentWeather()
    {
        return cwd;
    }
    public void setCurrentWeather()
    {
        try{
            cwd = owm.currentWeatherByCityName(location);
        }
        catch(APIException e){
            e.toString();
        }
    }
    public Date getSunRiseTime()
    {
       return cwd.getSystemData().getSunriseDateTime();
    }
    public Date getSunSetTime()
    {
       return cwd.getSystemData().getSunsetDateTime();
    }
    public double getLow(){
        low = cwd.getMainData().getTempMin();
        return low;
    }
    public String getZipCity(){
        return cwd.getCityName();
    }
    
    public void setHourlyForecast(){
        HourlyWeatherForecast hwd = new HourlyWeatherForecast();
        try{
            hwd = owm.hourlyWeatherForecastByCityName(location);
            this.hwdl = hwd.getDataList();
        }
        catch(APIException e){
            e.createMessage();
        }
    }
    public List<WeatherData> getHourlyForecast(){
        return hwdl;
    }
}

