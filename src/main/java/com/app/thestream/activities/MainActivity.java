package com.app.thestream.activities;

import android.os.Bundle;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.app.thestream.utils.NavigationHelper;
import com.mexicotv.futbolenvivoabierta.R;

public class MainActivity extends AppCompatActivity implements BottomNavigationView.OnNavigationItemSelectedListener {

    private BottomNavigationView bottomNavigationView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        initViews();
        setupNavigation();
    }

    private void initViews() {
        // El ID correcto según activity_main.xml es "navigation"
        bottomNavigationView = findViewById(R.id.navigation);
    }

    private void setupNavigation() {
        if (bottomNavigationView != null) {
            bottomNavigationView.setOnNavigationItemSelectedListener(this);
        }
    }

    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {
        int itemId = item.getItemId();
        
        // Usar NavigationHelper para manejar la navegación al calendario
        if (itemId == R.id.navigation_calendar) {
            NavigationHelper.handleNavigationItemSelected(this, itemId);
            return true;
        }
        
        // Aquí puedes agregar otros casos de navegación
        switch (itemId) {
            case R.id.navigation_category:
                // Manejar navegación a categorías
                break;
            case R.id.navigation_recent:
                // Manejar navegación a recientes
                break;
            case R.id.navigation_favorite:
                // Manejar navegación a favoritos
                break;
            case R.id.navigation_settings:
                // Manejar navegación a configuración
                break;
        }
        
        return false;
    }
}