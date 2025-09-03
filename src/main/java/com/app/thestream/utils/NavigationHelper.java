package com.app.thestream.utils;

import android.content.Context;
import android.content.Intent;
import com.app.thestream.activities.ActivityCalendarLigaMX;

public class NavigationHelper {
    
    public static void openCalendarLigaMX(Context context) {
        Intent intent = new Intent(context, ActivityCalendarLigaMX.class);
        context.startActivity(intent);
    }
    
    public static void handleNavigationItemSelected(Context context, int itemId) {
        // Esta clase puede ser utilizada por MainActivity para manejar la navegación
        // al calendario Liga MX cuando se seleccione el ítem del menú
        if (itemId == com.mexicotv.futbolenvivoabierta.R.id.navigation_calendar) {
            openCalendarLigaMX(context);
        }
    }
}