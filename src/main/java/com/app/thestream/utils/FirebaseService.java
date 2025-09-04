package com.app.thestream.utils;

import android.util.Log;
import com.app.thestream.models.StreamingLink;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.Query;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FirebaseService {
    
    private static final String TAG = "FirebaseService";
    private static final String COLLECTION_STREAMING_LINKS = "streaming_links";
    
    private FirebaseFirestore db;
    private static FirebaseService instance;

    private FirebaseService() {
        db = FirebaseFirestore.getInstance();
    }

    public static FirebaseService getInstance() {
        if (instance == null) {
            instance = new FirebaseService();
        }
        return instance;
    }

    public interface FirebaseCallback<T> {
        void onSuccess(T result);
        void onError(String error);
    }

    public void addStreamingLink(StreamingLink streamingLink, FirebaseCallback<String> callback) {
        Map<String, Object> data = new HashMap<>();
        data.put("matchId", streamingLink.getMatchId());
        data.put("streamUrl", streamingLink.getStreamUrl());
        data.put("platform", streamingLink.getPlatform());
        data.put("streamerName", streamingLink.getStreamerName());
        data.put("timestamp", streamingLink.getTimestamp());
        data.put("isActive", streamingLink.isActive());

        db.collection(COLLECTION_STREAMING_LINKS)
            .add(data)
            .addOnSuccessListener(documentReference -> {
                Log.d(TAG, "Streaming link added with ID: " + documentReference.getId());
                callback.onSuccess(documentReference.getId());
            })
            .addOnFailureListener(e -> {
                Log.e(TAG, "Error adding streaming link", e);
                callback.onError("Error al agregar transmisión: " + e.getMessage());
            });
    }

    public void getStreamingLinksForMatch(String matchId, FirebaseCallback<List<StreamingLink>> callback) {
        db.collection(COLLECTION_STREAMING_LINKS)
            .whereEqualTo("matchId", matchId)
            .whereEqualTo("isActive", true)
            .orderBy("timestamp", Query.Direction.DESCENDING)
            .get()
            .addOnCompleteListener(task -> {
                if (task.isSuccessful() && task.getResult() != null) {
                    List<StreamingLink> links = new ArrayList<>();
                    for (QueryDocumentSnapshot document : task.getResult()) {
                        StreamingLink link = document.toObject(StreamingLink.class);
                        link.setId(document.getId());
                        links.add(link);
                    }
                    Log.d(TAG, "Retrieved " + links.size() + " streaming links for match: " + matchId);
                    callback.onSuccess(links);
                } else {
                    Log.e(TAG, "Error getting streaming links", task.getException());
                    callback.onError("Error al cargar transmisiones");
                }
            });
    }

    public void getAllStreamingLinks(FirebaseCallback<Map<String, List<StreamingLink>>> callback) {
        db.collection(COLLECTION_STREAMING_LINKS)
            .whereEqualTo("isActive", true)
            .orderBy("timestamp", Query.Direction.DESCENDING)
            .get()
            .addOnCompleteListener(task -> {
                if (task.isSuccessful() && task.getResult() != null) {
                    Map<String, List<StreamingLink>> linksByMatch = new HashMap<>();
                    
                    for (QueryDocumentSnapshot document : task.getResult()) {
                        StreamingLink link = document.toObject(StreamingLink.class);
                        link.setId(document.getId());
                        
                        String matchId = link.getMatchId();
                        if (!linksByMatch.containsKey(matchId)) {
                            linksByMatch.put(matchId, new ArrayList<>());
                        }
                        linksByMatch.get(matchId).add(link);
                    }
                    
                    Log.d(TAG, "Retrieved streaming links for " + linksByMatch.size() + " matches");
                    callback.onSuccess(linksByMatch);
                } else {
                    Log.e(TAG, "Error getting all streaming links", task.getException());
                    callback.onError("Error al cargar transmisiones");
                }
            });
    }

    public void deleteStreamingLink(String linkId, FirebaseCallback<Void> callback) {
        db.collection(COLLECTION_STREAMING_LINKS)
            .document(linkId)
            .delete()
            .addOnSuccessListener(aVoid -> {
                Log.d(TAG, "Streaming link deleted successfully");
                callback.onSuccess(null);
            })
            .addOnFailureListener(e -> {
                Log.e(TAG, "Error deleting streaming link", e);
                callback.onError("Error al eliminar transmisión: " + e.getMessage());
            });
    }

    public void updateStreamingLinkStatus(String linkId, boolean isActive, FirebaseCallback<Void> callback) {
        db.collection(COLLECTION_STREAMING_LINKS)
            .document(linkId)
            .update("isActive", isActive)
            .addOnSuccessListener(aVoid -> {
                Log.d(TAG, "Streaming link status updated successfully");
                callback.onSuccess(null);
            })
            .addOnFailureListener(e -> {
                Log.e(TAG, "Error updating streaming link status", e);
                callback.onError("Error al actualizar transmisión: " + e.getMessage());
            });
    }
}