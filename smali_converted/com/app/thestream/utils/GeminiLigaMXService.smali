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
    .registers 22
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

    .prologue
    .line 86
    :try_start_0
    new-instance v12, Ljava/net/URL;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/app/thestream/utils/GeminiLigaMXService;->API_KEY:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 90
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const-string v15, "POST"

    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    const-string v15, "Content-Type"

    const-string v16, "application/json"

    invoke-virtual/range {v1 .. v16}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 95
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v9, "requestBody":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .local v3, "contents":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v2, "content":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 99
    .local v7, "parts":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v6, "part":Lorg/json/JSONObject;
    const-string v15, "text"

    move-object/from16 v0, p1

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    const-string v15, "parts"

    invoke-virtual {v2, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 105
    const-string v15, "contents"

    invoke-virtual {v9, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .local v4, "generationConfig":Lorg/json/JSONObject;
    const-string v15, "temperature"

    const-wide v16, 0x3fe6666666666666L    # 0.7

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 110
    const-string v15, "topK"

    const/16 v16, 0x28

    invoke-virtual/range {v4 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v15, "topP"

    const-wide v16, 0x3fef333333333333L    # 0.95

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 112
    const-string v15, "maxOutputTokens"

    const/16 v16, 0x400

    invoke-virtual/range {v4 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v15, "generationConfig"

    invoke-virtual {v9, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 117
    .local v5, "os":Ljava/io/OutputStream;
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 118
    .local v8, "input":[B
    const/4 v15, 0x0

    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v8, v15, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 122
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 123
    .local v10, "responseCode":I
    const-string v15, "GeminiLigaMX"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\ud83d\udce1 Gemini API response code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v15, 0xc8

    if-ne v10, v15, :cond_120

    .line 126
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct/range {v15 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    .local v11, "reader":Ljava/io/BufferedReader;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v13, "response":Ljava/lang/StringBuilder;
    :goto_e4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "line":Ljava/lang/String;
    if-eqz v14, :cond_ee

    .line 132
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e4

    .line 134
    :cond_ee
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 137
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/app/thestream/utils/GeminiLigaMXService;->parseGeminiResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "generatedText":Ljava/lang/String;
    if-eqz v4, :cond_118

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_118

    .line 139
    const-string v15, "GeminiLigaMX"

    const-string v16, "\u2705 Respuesta exitosa de Gemini"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onSuccess(Ljava/lang/String;)V

    .line 165
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "content":Lorg/json/JSONObject;
    .end local v3    # "contents":Lorg/json/JSONArray;
    .end local v4    # "generatedText":Ljava/lang/String;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "part":Lorg/json/JSONObject;
    .end local v7    # "parts":Lorg/json/JSONArray;
    .end local v8    # "input":[B
    .end local v9    # "requestBody":Lorg/json/JSONObject;
    .end local v10    # "responseCode":I
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "response":Ljava/lang/StringBuilder;
    .end local v14    # "line":Ljava/lang/String;
    :goto_114
    return-void

    .line 142
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "content":Lorg/json/JSONObject;
    .restart local v3    # "contents":Lorg/json/JSONArray;
    .restart local v4    # "generatedText":Ljava/lang/String;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "part":Lorg/json/JSONObject;
    .restart local v7    # "parts":Lorg/json/JSONArray;
    .restart local v8    # "input":[B
    .restart local v9    # "requestBody":Lorg/json/JSONObject;
    .restart local v10    # "responseCode":I
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "url":Ljava/net/URL;
    .restart local v13    # "response":Ljava/lang/StringBuilder;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_118
    const-string v15, "Respuesta vacía del servidor"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V

    goto :goto_114

    .line 146
    .end local v4    # "generatedText":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "response":Ljava/lang/StringBuilder;
    .end local v14    # "line":Ljava/lang/String;
    :cond_120
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error del servidor: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_138} :catch_139
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_138} :catch_139

    goto :goto_114

    .line 161
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "content":Lorg/json/JSONObject;
    .end local v3    # "contents":Lorg/json/JSONArray;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "part":Lorg/json/JSONObject;
    .end local v7    # "parts":Lorg/json/JSONArray;
    .end local v8    # "input":[B
    .end local v9    # "requestBody":Lorg/json/JSONObject;
    .end local v10    # "responseCode":I
    .end local v12    # "url":Ljava/net/URL;
    :catch_139
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v15, "GeminiLigaMX"

    const-string v16, "\u274c Error en petici\u00f3n Gemini"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error de conexi\u00f3n: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;->onError(Ljava/lang/String;)V

    goto :goto_114
.end method

.method private parseGeminiResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "jsonResponse"    # Ljava/lang/String;

    .prologue
    .line 167
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, "response":Lorg/json/JSONObject;
    const-string v4, "candidates"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 170
    .local v0, "candidates":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_32

    .line 171
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 172
    .local v1, "candidate":Lorg/json/JSONObject;
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 173
    .local v2, "content":Lorg/json/JSONObject;
    const-string v4, "parts"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 175
    .local v4, "parts":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_32

    .line 176
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 177
    const-string v5, "text"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_31} :catch_34

    move-result-object v5

    .line 187
    .end local v0    # "candidates":Lorg/json/JSONArray;
    .end local v1    # "candidate":Lorg/json/JSONObject;
    .end local v2    # "content":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v4    # "parts":Lorg/json/JSONArray;
    :goto_32
    return-object v5

    .line 183
    :catch_34
    move-exception v0

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "GeminiLigaMX"

    const-string v6, "\u274c Error parseando respuesta JSON"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    const/4 v5, 0x0

    goto :goto_32
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

    .line 51
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

    .line 48
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

    .line 69
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

    .line 84
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