.class public abstract Lcom/startapp/networkTest/net/WebApiClient;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "WebApiClient"

.field private static final b:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;Ljava/lang/String;)Lcom/startapp/kd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/startapp/networkTest/net/WebApiClient;->a(Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;Ljava/lang/String;Ljava/lang/Object;)Lcom/startapp/kd;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;Ljava/lang/String;Ljava/lang/Object;)Lcom/startapp/kd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/startapp/jd;

    .line 2
    new-instance v1, Lcom/startapp/jd;

    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=UTF-8"

    invoke-direct {v1, v2, v3}, Lcom/startapp/jd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/startapp/jd;

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-direct {v1, v2, v3}, Lcom/startapp/jd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {p0, p1, p2, v0}, Lcom/startapp/networkTest/net/WebApiClient;->a(Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;Ljava/lang/String;Ljava/lang/Object;[Lcom/startapp/jd;)Lcom/startapp/kd;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;Ljava/lang/String;Ljava/lang/Object;[Lcom/startapp/jd;)Lcom/startapp/kd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, p2, p3, v0}, Lcom/startapp/networkTest/net/WebApiClient;->a(Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;Ljava/lang/String;Ljava/lang/Object;[Lcom/startapp/jd;Z)Lcom/startapp/kd;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;Ljava/lang/String;Ljava/lang/Object;[Lcom/startapp/jd;Z)Lcom/startapp/kd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/startapp/kd;

    invoke-direct {v0}, Lcom/startapp/kd;-><init>()V

    .line 8
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 13
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p4, "https"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 15
    invoke-static {p1}, Lcom/startapp/networkTest/net/WebApiClient;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 16
    sget-object p4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 25
    array-length p4, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    .line 26
    iget-object v3, v2, Lcom/startapp/jd;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/startapp/jd;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 p3, 0x2710

    .line 29
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 30
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz p2, :cond_3

    .line 34
    sget-object p3, Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;->b:Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;

    invoke-virtual {p0, p3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    sget-object p3, Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;->d:Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;

    invoke-virtual {p0, p3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 37
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 38
    invoke-static {p2}, Lcom/startapp/r5;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 41
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 42
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    .line 43
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "GET and DELETE does not support a body"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    iput p0, v0, Lcom/startapp/kd;->a:I

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 60
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 61
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    .line 65
    invoke-static {p2}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 68
    :goto_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/startapp/kd;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 71
    new-instance v1, Lcom/startapp/networkTest/net/WebApiClient$a;

    invoke-direct {v1}, Lcom/startapp/networkTest/net/WebApiClient$a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :try_start_0
    const-string v1, "TLS"

    .line 85
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 86
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 87
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 89
    invoke-static {p0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
