package com.app.thestream.models;

import java.util.Date;

public class StreamingLink {
    private String id;
    private String matchId;
    private String streamUrl;
    private String platform;
    private String streamerName;
    private Date timestamp;
    private boolean isActive;

    public StreamingLink() {}

    public StreamingLink(String matchId, String streamUrl, String platform, String streamerName) {
        this.matchId = matchId;
        this.streamUrl = streamUrl;
        this.platform = platform;
        this.streamerName = streamerName;
        this.timestamp = new Date();
        this.isActive = true;
    }

    // Getters y Setters
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getMatchId() { return matchId; }
    public void setMatchId(String matchId) { this.matchId = matchId; }

    public String getStreamUrl() { return streamUrl; }
    public void setStreamUrl(String streamUrl) { this.streamUrl = streamUrl; }

    public String getPlatform() { return platform; }
    public void setPlatform(String platform) { this.platform = platform; }

    public String getStreamerName() { return streamerName; }
    public void setStreamerName(String streamerName) { this.streamerName = streamerName; }

    public Date getTimestamp() { return timestamp; }
    public void setTimestamp(Date timestamp) { this.timestamp = timestamp; }

    public boolean isActive() { return isActive; }
    public void setActive(boolean active) { isActive = active; }

    public enum Platform {
        YOUTUBE("youtube", "YouTube"),
        FACEBOOK("facebook", "Facebook"),
        INSTAGRAM("instagram", "Instagram"),
        TWITCH("twitch", "Twitch"),
        TIKTOK("tiktok", "TikTok"),
        OTHER("other", "Otra");

        private String value;
        private String displayName;

        Platform(String value, String displayName) {
            this.value = value;
            this.displayName = displayName;
        }

        public String getValue() { return value; }
        public String getDisplayName() { return displayName; }

        public static Platform fromValue(String value) {
            for (Platform platform : values()) {
                if (platform.value.equals(value)) {
                    return platform;
                }
            }
            return OTHER;
        }
    }
}