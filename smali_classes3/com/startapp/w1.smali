.class public Lcom/startapp/w1;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final a:Ljava/lang/String; = "w1"

.field private static final b:Z = false

.field private static final c:Ljava/lang/String; = "cdnconfig.txt"

.field private static final d:Ljava/lang/String; = "cdnconfig.txt.sig"

.field private static final e:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 169
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 170
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->CONNECTIVITY_TEST_CDNCONFIG_URL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[PROJECTID]"

    .line 2
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/y4;->PROJECT_ID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v0, "GET"

    .line 5
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2710

    .line 6
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 7
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 8
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/b5;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/startapp/w1;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "If-Modified-Since"

    .line 9
    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v2, "close"

    .line 10
    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    .line 17
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v0

    invoke-static {}, Lcom/startapp/ua;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/startapp/b5;->e(J)V

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    .line 24
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v2

    .line 27
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-static {v0}, Lcom/startapp/w1;->a(Ljava/io/InputStream;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz v4, :cond_1

    .line 38
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v0

    invoke-static {}, Lcom/startapp/ua;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/startapp/b5;->e(J)V

    .line 39
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/startapp/b5;->b(J)V

    goto :goto_1

    .line 40
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Verification of downloaded cdn config failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v2

    .line 41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 42
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 53
    :goto_0
    :try_start_4
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_3

    .line 57
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    :cond_4
    throw v0
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)Z
    .locals 2

    .line 155
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 158
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "SHA256withRSA"

    .line 161
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/startapp/a5;->e()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 163
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 165
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 167
    invoke-static {p0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 70
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 72
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cdnconfig.txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    :goto_1
    if-eq v3, v6, :cond_1

    .line 77
    invoke-virtual {p0, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 81
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cdnconfig.txt.sig"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    :goto_2
    if-eq v3, v6, :cond_3

    .line 86
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 90
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 101
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 103
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 108
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 110
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x1

    .line 116
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/y4;->CONNECTIVITY_TEST_VERIFY_CDNCONFIG_SIGNATURE()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 117
    invoke-static {p0, v1}, Lcom/startapp/w1;->a(Ljava/io/ByteArrayOutputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v0

    :cond_5
    if-eqz v0, :cond_6

    .line 121
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 122
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 124
    const-class p0, Lcom/startapp/v1;

    invoke-static {v1, p0}, Lcom/startapp/r5;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/startapp/v1;

    if-eqz p0, :cond_6

    .line 127
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v1, v2}, Lcom/startapp/b5;->a(Ljava/util/Set;)V

    .line 133
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/startapp/v1;->ct:Lcom/startapp/w6;

    iget-object v3, v3, Lcom/startapp/w6;->cdn:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/startapp/b5;->b(Ljava/util/Set;)V

    .line 134
    iget-object v2, p0, Lcom/startapp/v1;->ct:Lcom/startapp/w6;

    iget-object v2, v2, Lcom/startapp/w6;->criteria:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/startapp/b5;->c(Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/startapp/v1;->ltr:Lcom/startapp/w6;

    iget-object v3, v3, Lcom/startapp/w6;->cdn:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/startapp/b5;->c(Ljava/util/Set;)V

    .line 138
    iget-object p0, p0, Lcom/startapp/v1;->ltr:Lcom/startapp/w6;

    iget-object p0, p0, Lcom/startapp/w6;->criteria:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/startapp/b5;->d(Ljava/lang/String;)V

    :cond_6
    return v0

    :catchall_2
    move-exception v2

    .line 139
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 142
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 149
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p0

    .line 151
    invoke-static {p0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 154
    :goto_6
    throw v2
.end method
