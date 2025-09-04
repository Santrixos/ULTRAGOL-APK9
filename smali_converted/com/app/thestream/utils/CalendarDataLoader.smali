.class public Lcom/app/thestream/utils/CalendarDataLoader;
.super Ljava/lang/Object;
.source "CalendarDataLoader.java"


# static fields
.field private static final CALENDAR_FILE:Ljava/lang/String; = "ligamx-calendar.json"

.field private static final TAG:Ljava/lang/String; = "CalendarDataLoader"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadCalendarFromAssets(Landroid/content/Context;)Lcom/app/thestream/models/CalendarioLigaMX;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 17
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "ligamx-calendar.json"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 20
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 21
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v2, "jsonString":Ljava/lang/StringBuilder;
    :goto_1b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 28
    :cond_25
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 29
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 32
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/app/thestream/models/CalendarioLigaMX;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_4c

    return-object v5

    .line 34
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "jsonString":Ljava/lang/StringBuilder;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3d
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "CalendarDataLoader"

    const-string v6, "Error loading calendar data from assets"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :goto_46
    return-object v7

    .line 37
    :catch_4c
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CalendarDataLoader"

    const-string v6, "Error parsing calendar data"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method