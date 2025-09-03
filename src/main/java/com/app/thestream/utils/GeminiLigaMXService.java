package com.app.thestream.utils;

import android.content.Context;
import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class GeminiLigaMXService {
    
    private static final String TAG = "GeminiLigaMX";
    private static final String GEMINI_API_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent";
    private static final String API_KEY = System.getenv("GEMINI_API_KEY");
    
    private ExecutorService executor;
    
    public interface GeminiCallback {
        void onSuccess(String response);
        void onError(String error);
    }
    
    public GeminiLigaMXService() {
        executor = Executors.newFixedThreadPool(2);
    }
    
    public void getEquipoInfo(String nombreEquipo, GeminiCallback callback) {
        if (API_KEY == null || API_KEY.isEmpty()) {
            Log.w(TAG, "⚠️ API Key de Gemini no configurada");
            callback.onError("API Key no configurada");
            return;
        }
        
        String prompt = String.format(
            "Dame información actualizada del equipo %s de Liga MX 2025. " +
            "Incluye: posición actual en la tabla, últimos resultados, " +
            "jugadores destacados, estadio, y datos curiosos. " +
            "Responde en español y de forma concisa.", 
            nombreEquipo
        );
        
        executor.execute(() -> makeGeminiRequest(prompt, callback));
    }
    
    public void getJornadaAnalisis(int numeroJornada, String equipos, GeminiCallback callback) {
        if (API_KEY == null || API_KEY.isEmpty()) {
            Log.w(TAG, "⚠️ API Key de Gemini no configurada");
            callback.onError("API Key no configurada");
            return;
        }
        
        String prompt = String.format(
            "Analiza la jornada %d de Liga MX 2025. Los partidos incluyen: %s. " +
            "Dame predicciones, análisis de los enfrentamientos más importantes, " +
            "estadísticas relevantes y datos curiosos de esta jornada. " +
            "Responde en español de forma engaging y profesional.", 
            numeroJornada, equipos
        );
        
        executor.execute(() -> makeGeminiRequest(prompt, callback));
    }
    
    public void getLigaMXNoticias(GeminiCallback callback) {
        if (API_KEY == null || API_KEY.isEmpty()) {
            Log.w(TAG, "⚠️ API Key de Gemini no configurada");
            callback.onError("API Key no configurada");
            return;
        }
        
        String prompt = "Dame las noticias más recientes e importantes de Liga MX 2025. " +
                       "Incluye transferencias, lesiones, cambios de técnicos, " +
                       "tabla de posiciones actual, y próximos partidos destacados. " +
                       "Mantén la información actualizada y relevante. Responde en español.";
        
        executor.execute(() -> makeGeminiRequest(prompt, callback));
    }
    
    private void makeGeminiRequest(String prompt, GeminiCallback callback) {
        try {
            URL url = new URL(GEMINI_API_URL + "?key=" + API_KEY);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST");
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setDoOutput(true);
            
            // Crear el cuerpo de la petición
            JSONObject requestBody = new JSONObject();
            JSONArray contents = new JSONArray();
            JSONObject content = new JSONObject();
            JSONArray parts = new JSONArray();
            JSONObject part = new JSONObject();
            
            part.put("text", prompt);
            parts.put(part);
            content.put("parts", parts);
            contents.put(content);
            requestBody.put("contents", contents);
            
            // Configurar parámetros de generación
            JSONObject generationConfig = new JSONObject();
            generationConfig.put("temperature", 0.7);
            generationConfig.put("topK", 40);
            generationConfig.put("topP", 0.95);
            generationConfig.put("maxOutputTokens", 1024);
            requestBody.put("generationConfig", generationConfig);
            
            // Enviar petición
            try (OutputStream os = connection.getOutputStream()) {
                byte[] input = requestBody.toString().getBytes(StandardCharsets.UTF_8);
                os.write(input, 0, input.length);
            }
            
            // Leer respuesta
            int responseCode = connection.getResponseCode();
            Log.d(TAG, "📡 Gemini API response code: " + responseCode);
            
            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader reader = new BufferedReader(
                    new InputStreamReader(connection.getInputStream(), StandardCharsets.UTF_8));
                StringBuilder response = new StringBuilder();
                String line;
                
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
                reader.close();
                
                // Parsear respuesta
                String generatedText = parseGeminiResponse(response.toString());
                if (generatedText != null && !generatedText.isEmpty()) {
                    Log.d(TAG, "✅ Respuesta exitosa de Gemini");
                    callback.onSuccess(generatedText);
                } else {
                    Log.e(TAG, "❌ Respuesta vacía de Gemini");
                    callback.onError("Respuesta vacía del servidor");
                }
                
            } else {
                BufferedReader errorReader = new BufferedReader(
                    new InputStreamReader(connection.getErrorStream(), StandardCharsets.UTF_8));
                StringBuilder errorResponse = new StringBuilder();
                String line;
                
                while ((line = errorReader.readLine()) != null) {
                    errorResponse.append(line);
                }
                errorReader.close();
                
                Log.e(TAG, "❌ Error Gemini API: " + errorResponse.toString());
                callback.onError("Error del servidor: " + responseCode);
            }
            
        } catch (IOException | JSONException e) {
            Log.e(TAG, "❌ Error en petición Gemini", e);
            callback.onError("Error de conexión: " + e.getMessage());
        }
    }
    
    private String parseGeminiResponse(String jsonResponse) {
        try {
            JSONObject response = new JSONObject(jsonResponse);
            JSONArray candidates = response.getJSONArray("candidates");
            
            if (candidates.length() > 0) {
                JSONObject candidate = candidates.getJSONObject(0);
                JSONObject content = candidate.getJSONObject("content");
                JSONArray parts = content.getJSONArray("parts");
                
                if (parts.length() > 0) {
                    JSONObject part = parts.getJSONObject(0);
                    return part.getString("text");
                }
            }
            
        } catch (JSONException e) {
            Log.e(TAG, "❌ Error parseando respuesta JSON", e);
        }
        
        return null;
    }
    
    public void shutdown() {
        if (executor != null && !executor.isShutdown()) {
            executor.shutdown();
        }
    }
}