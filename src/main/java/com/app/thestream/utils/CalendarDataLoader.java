package com.app.thestream.utils;

import android.content.Context;
import android.util.Log;
import com.app.thestream.models.CalendarioLigaMX;
import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class CalendarDataLoader {
    
    private static final String TAG = "CalendarDataLoader";
    private static final String CALENDAR_FILE = "ligamx-calendar.json";
    
    public static CalendarioLigaMX loadCalendarFromAssets(Context context) {
        try {
            InputStream inputStream = context.getAssets().open(CALENDAR_FILE);
            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder jsonString = new StringBuilder();
            String line;
            
            while ((line = reader.readLine()) != null) {
                jsonString.append(line);
            }
            
            reader.close();
            inputStream.close();
            
            Gson gson = new Gson();
            return gson.fromJson(jsonString.toString(), CalendarioLigaMX.class);
            
        } catch (IOException e) {
            Log.e(TAG, "Error loading calendar data from assets", e);
            return null;
        } catch (Exception e) {
            Log.e(TAG, "Error parsing calendar data", e);
            return null;
        }
    }
}