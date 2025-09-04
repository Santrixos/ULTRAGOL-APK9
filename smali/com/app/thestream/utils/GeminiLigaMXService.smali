.class public Lcom/app/thestream/utils/GeminiLigaMXService;
.super Ljava/lang/Object;
.source "GeminiLigaMXService.java"

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;
    }
.end annotation

# static fields
.field private static final API_KEY:Ljava/lang/String;

.field private static final GEMINI_API_URL:Ljava/lang/String; = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent"

.field private static final TAG:Ljava/lang/String; = "GeminiLigaMX"

# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "GEMINI_API_KEY"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/app/thestream/utils/GeminiLigaMXService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/app/thestream/utils/GeminiLigaMXService;Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V
    .registers 3
    .param p0, "x0"    # Lcom/app/thestream/utils/GeminiLigaMXService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/app/thestream/utils/GeminiLigaMXService;->makeGeminiRequest(Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V

    return-void
.end method

.method private makeGeminiRequest(Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V
    .registers 16
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

    .prologue
    .line 86
    :try_start_0
    new-instance v9, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 90
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string v10, "POST"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    const-string v10, "Content-Type"

    const-string v11, "application/json"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 95
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v7, "requestBody":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .local v2, "contents":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v0, "content":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 99
    .local v6, "parts":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v5, "part":Lorg/json/JSONObject;
    const-string v10, "text"

    invoke-virtual {v5, v10, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    const-string v10, "parts"

    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 105
    const-string v10, "contents"

    invoke-virtual {v7, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .local v3, "generationConfig":Lorg/json/JSONObject;
    const-string v10, "temperature"

    const-wide v11, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v3, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 110
    const-string v10, "topK"

    const/16 v11, 0x28

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v10, "topP"

    const-wide v11, 0x3fef333333333333L    # 0.95

    invoke-virtual {v3, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 112
    const-string v10, "maxOutputTokens"

    const/16 v11, 0x400

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v10, "generationConfig"

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 117
    .local v4, "os":Ljava/io/OutputStream;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 118
    .local v4, "input":[B
    const/4 v10, 0x0

    array-length v11, v4

    invoke-virtual {v4, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 121
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 122
    .local v8, "responseCode":I
    const-string v10, "GeminiLigaMX"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\ud83d\udce1 Gemini API response code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_102

    .line 125
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v8, "response":Ljava/lang/StringBuilder;
    :goto_cb
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_d5

    .line 131
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    .line 133
    :cond_d5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 136
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/app/thestream/utils/GeminiLigaMXService;->parseGeminiResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "generatedText":Ljava/lang/String;
    if-eqz v3, :cond_f9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f9

    .line 138
    const-string v10, "GeminiLigaMX"

    const-string v11, "\u2705 Respuesta exitosa de Gemini"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {p2, v3}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f2} :catch_18f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f2} :catch_18f

    .line 164
    .end local v0    # "content":Lorg/json/JSONObject;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "contents":Lorg/json/JSONArray;
    .end local v3    # "generatedText":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "part":Lorg/json/JSONObject;
    .end local v6    # "parts":Lorg/json/JSONArray;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Ljava/lang/StringBuilder;
    .end local v9    # "url":Ljava/net/URL;
    :goto_f2
    return-void

    .line 141
    .restart local v0    # "content":Lorg/json/JSONObject;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "contents":Lorg/json/JSONArray;
    .restart local v3    # "generatedText":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "part":Lorg/json/JSONObject;
    .restart local v6    # "parts":Lorg/json/JSONArray;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "response":Ljava/lang/StringBuilder;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_f9
    :try_start_f9
    const-string v10, "GeminiLigaMX"

    const-string v11, "\u274c Respuesta vac\u00eda de Gemini"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v10, "Respuesta vac\u00eda del servidor"

    invoke-interface {p2, v10}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V

    goto :goto_f2

    .line 146
    .end local v3    # "generatedText":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Ljava/lang/StringBuilder;
    :cond_102
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v2, "errorReader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v3, "errorResponse":Ljava/lang/StringBuilder;
    :goto_117
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "line":Ljava/lang/String;
    if-eqz v4, :cond_121

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_117

    .line 154
    :cond_121
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 156
    const-string v10, "GeminiLigaMX"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u274c Error Gemini API: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error del servidor: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_158} :catch_18f
    .catch Lorg/json/JSONException; {:try_start_f9 .. :try_end_158} :catch_18f

    goto :goto_f2

    .line 160
    .end local v0    # "content":Lorg/json/JSONObject;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "errorReader":Ljava/io/BufferedReader;
    .end local v3    # "errorResponse":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "part":Lorg/json/JSONObject;
    .end local v6    # "parts":Lorg/json/JSONArray;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :catch_18f
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GeminiLigaMX"

    const-string v2, "\u274c Error en petici\u00f3n Gemini"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error de conexi\u00f3n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V

    goto :goto_f2
.end method

.method private parseGeminiResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "jsonResponse"    # Ljava/lang/String;

    .prologue
    .line 167
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "response":Lorg/json/JSONObject;
    const-string v3, "candidates"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 170
    .local v0, "candidates":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_38

    .line 171
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 172
    .local v1, "candidate":Lorg/json/JSONObject;
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 173
    .local v1, "content":Lorg/json/JSONObject;
    const-string v3, "parts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 175
    .local v3, "parts":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_38

    .line 176
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 177
    .local v3, "part":Lorg/json/JSONObject;
    const-string v4, "text"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_37} :catch_39

    move-result-object v3

    .line 185
    .end local v0    # "candidates":Lorg/json/JSONArray;
    .end local v1    # "content":Lorg/json/JSONObject;
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "part":Lorg/json/JSONObject;
    :goto_37
    return-object v3

    .line 182
    :cond_38
    goto :goto_47

    .line 182
    :catch_39
    move-exception v0

    .line 183
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "GeminiLigaMX"

    const-string v2, "\u274c Error parseando respuesta JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_47
    const/4 v3, 0x0

    goto :goto_37
.end method

# virtual methods
.method public getEquipoInfo(Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V
    .registers 6
    .param p1, "nombreEquipo"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

    .prologue
    .line 35
    sget-object v0, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 36
    :cond_c
    const-string v0, "GeminiLigaMX"

    const-string v1, "\u26a0\ufe0f API Key de Gemini no configurada"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "API Key no configurada"

    invoke-interface {p2, v0}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V

    .line 50
    :goto_19
    return-void

    .line 41
    :cond_1a
    const-string v0, "Dame informaci\u00f3n actualizada del equipo %s de Liga MX 2025. Incluye: posici\u00f3n actual en la tabla, \u00faltimos resultados, jugadores destacados, estadio, y datos curiosos. Responde en espa\u00f1ol y de forma concisa."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "prompt":Ljava/lang/String;
    iget-object v1, p0, Lcom/app/thestream/utils/GeminiLigaMXService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/app/thestream/utils/GeminiLigaMXService$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/app/thestream/utils/GeminiLigaMXService$1;-><init>(Lcom/app/thestream/utils/GeminiLigaMXService;Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method public getJornadaAnalisis(ILjava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V
    .registers 7
    .param p1, "numeroJornada"    # I
    .param p2, "equipos"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

    .prologue
    .line 53
    sget-object v0, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 54
    :cond_c
    const-string v0, "GeminiLigaMX"

    const-string v1, "\u26a0\ufe0f API Key de Gemini no configurada"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "API Key no configurada"

    invoke-interface {p3, v0}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V

    .line 68
    :goto_19
    return-void

    .line 59
    :cond_1a
    const-string v0, "Analiza la jornada %d de Liga MX 2025. Los partidos incluyen: %s. Dame predicciones, an\u00e1lisis de los enfrentamientos m\u00e1s importantes, estad\u00edsticas relevantes y datos curiosos de esta jornada. Responde en espa\u00f1ol de forma engaging y profesional."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "prompt":Ljava/lang/String;
    iget-object v1, p0, Lcom/app/thestream/utils/GeminiLigaMXService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/app/thestream/utils/GeminiLigaMXService$2;

    invoke-direct {v2, p0, v0, p3}, Lcom/app/thestream/utils/GeminiLigaMXService$2;-><init>(Lcom/app/thestream/utils/GeminiLigaMXService;Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method public getLigaMXNoticias(Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

    .prologue
    .line 71
    sget-object v0, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 72
    :cond_c
    const-string v0, "GeminiLigaMX"

    const-string v1, "\u26a0\ufe0f API Key de Gemini no configurada"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "API Key no configurada"

    invoke-interface {p1, v0}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V

    .line 83
    :goto_19
    return-void

    .line 77
    :cond_1a
    const-string v0, "Dame las noticias m\u00e1s recientes e importantes de Liga MX 2025. Incluye transferencias, lesiones, cambios de t\u00e9cnicos, tabla de posiciones actual, y pr\u00f3ximos partidos destacados. Mant\u00e9n la informaci\u00f3n actualizada y relevante. Responde en espa\u00f1ol."

    .line 82
    .local v0, "prompt":Ljava/lang/String;
    iget-object v1, p0, Lcom/app/thestream/utils/GeminiLigaMXService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/app/thestream/utils/GeminiLigaMXService$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/app/thestream/utils/GeminiLigaMXService$3;-><init>(Lcom/app/thestream/utils/GeminiLigaMXService;Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/app/thestream/utils/GeminiLigaMXService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/app/thestream/utils/GeminiLigaMXService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_f

    .line 191
    iget-object v0, p0, Lcom/app/thestream/utils/GeminiLigaMXService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 193
    :cond_f
    return-void
.end method