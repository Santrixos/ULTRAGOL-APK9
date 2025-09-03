.class public Lcom/startapp/y3;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;

.field public final b:Lcom/startapp/ub;

.field public final c:Lcom/startapp/c6;

.field public final d:Lcom/startapp/g7;

.field public final e:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Lcom/startapp/z3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;Lcom/startapp/ub;Lcom/startapp/c6;Lcom/startapp/g7;Lcom/startapp/d3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;",
            "Lcom/startapp/ub;",
            "Lcom/startapp/c6;",
            "Lcom/startapp/g7;",
            "Lcom/startapp/d3<",
            "Lcom/startapp/z3;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/y3;->a:Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;

    .line 3
    iput-object p2, p0, Lcom/startapp/y3;->b:Lcom/startapp/ub;

    .line 4
    iput-object p3, p0, Lcom/startapp/y3;->c:Lcom/startapp/c6;

    .line 5
    iput-object p4, p0, Lcom/startapp/y3;->d:Lcom/startapp/g7;

    .line 6
    iput-object p5, p0, Lcom/startapp/y3;->e:Lcom/startapp/d3;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "?"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/startapp/y0;Lcom/startapp/b3;)Lcom/startapp/o7$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startapp/y0;",
            "Lcom/startapp/b3<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/startapp/o7$a;"
        }
    .end annotation

    const-string v0, "GET"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/startapp/y3;->a()Ljava/util/Map;

    move-result-object v2

    .line 2
    :try_start_0
    new-instance v3, Lcom/startapp/c7;

    invoke-direct {v3}, Lcom/startapp/c7;-><init>()V

    .line 3
    invoke-virtual {p2, v3}, Lcom/startapp/y0;->a(Lcom/startapp/m8;)V

    .line 4
    invoke-virtual {v3}, Lcom/startapp/c7;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/startapp/y3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/startapp/sdk/common/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    return-object v1

    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/startapp/y3;->b:Lcom/startapp/ub;

    .line 17
    iget-object p2, p2, Lcom/startapp/ub;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/startapp/y3;->b()Lcom/startapp/z3;

    move-result-object v3

    .line 19
    iget-boolean v3, v3, Lcom/startapp/z3;->a:Z

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 21
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v6

    .line 23
    iget-object v8, p0, Lcom/startapp/y3;->d:Lcom/startapp/g7;

    if-eqz v8, :cond_1

    .line 24
    new-instance v9, Lcom/startapp/n7;

    invoke-direct {v9, v8}, Lcom/startapp/n7;-><init>(Lcom/startapp/g7;)V

    goto :goto_1

    :cond_1
    move-object v9, v1

    .line 25
    :goto_1
    :try_start_1
    invoke-static {p1, v2, p2, v3}, Lcom/startapp/o7;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/startapp/o7$a;

    move-result-object p2

    if-eqz v9, :cond_2

    .line 33
    invoke-virtual {v9, v0, p1, v1}, Lcom/startapp/n7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V

    .line 34
    :cond_2
    iput-wide v4, p2, Lcom/startapp/o7$a;->d:J

    .line 35
    iput-wide v6, p2, Lcom/startapp/o7$a;->e:J

    .line 36
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v2

    .line 37
    iput-wide v2, p2, Lcom/startapp/o7$a;->f:J
    :try_end_1
    .catch Lcom/startapp/sdk/common/SDKException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p2

    if-eqz v9, :cond_3

    .line 38
    invoke-virtual {v9, v0, p1, p2}, Lcom/startapp/n7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 39
    :try_start_2
    invoke-interface {p3, p2}, Lcom/startapp/b3;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final a(Ljava/lang/String;Lcom/startapp/y0;[BZLcom/startapp/b3;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startapp/y0;",
            "[BZ",
            "Lcom/startapp/b3<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "POST"

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move-object p2, v1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/startapp/y3;->a()Ljava/util/Map;

    move-result-object p3

    .line 48
    :try_start_0
    new-instance v2, Lcom/startapp/p5;

    invoke-direct {v2}, Lcom/startapp/p5;-><init>()V

    .line 49
    invoke-virtual {p2, v2}, Lcom/startapp/y0;->a(Lcom/startapp/m8;)V
    :try_end_0
    .catch Lcom/startapp/sdk/common/SDKException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    iget-object p2, v2, Lcom/startapp/p5;->a:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 53
    invoke-virtual {p0}, Lcom/startapp/y3;->b()Lcom/startapp/z3;

    move-result-object v2

    .line 54
    iget-boolean v2, v2, Lcom/startapp/z3;->a:Z

    if-eqz v2, :cond_1

    .line 55
    :try_start_1
    sget-object v2, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 56
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    invoke-virtual {v3, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 59
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 60
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 61
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 62
    invoke-static {v2}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    goto :goto_1

    :catch_1
    move-exception p1

    .line 63
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    return-object v1

    :cond_2
    move-object p2, v1

    move-object p3, p2

    .line 87
    :goto_1
    iget-object v2, p0, Lcom/startapp/y3;->b:Lcom/startapp/ub;

    .line 88
    iget-object v2, v2, Lcom/startapp/ub;->a:Ljava/lang/String;

    .line 89
    iget-object v3, p0, Lcom/startapp/y3;->d:Lcom/startapp/g7;

    if-eqz v3, :cond_3

    .line 90
    new-instance v4, Lcom/startapp/n7;

    invoke-direct {v4, v3}, Lcom/startapp/n7;-><init>(Lcom/startapp/g7;)V

    goto :goto_2

    :cond_3
    move-object v4, v1

    .line 91
    :goto_2
    :try_start_2
    invoke-static {p1, p3, p2, v2, p4}, Lcom/startapp/o7;->a(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz v4, :cond_4

    .line 100
    invoke-virtual {v4, v0, p1, v1}, Lcom/startapp/n7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V

    :cond_4
    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const-string p2, ""
    :try_end_2
    .catch Lcom/startapp/sdk/common/SDKException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    return-object p2

    :catch_2
    move-exception p2

    if-eqz v4, :cond_6

    .line 107
    invoke-virtual {v4, v0, p1, p2}, Lcom/startapp/n7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V

    :cond_6
    if-eqz p5, :cond_7

    .line 108
    :try_start_3
    invoke-interface {p5, p2}, Lcom/startapp/b3;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 110
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-object v1
.end method

.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/startapp/y3;->b()Lcom/startapp/z3;

    move-result-object v1

    .line 114
    iget-boolean v1, v1, Lcom/startapp/z3;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/startapp/y3;->a:Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;

    invoke-virtual {v2}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->a()Lcom/startapp/t;

    move-result-object v2

    .line 116
    iget-object v1, v2, Lcom/startapp/t;->a:Ljava/lang/String;

    const-string v2, "UTF-8"

    .line 117
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 119
    invoke-static {v2}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    const-string v2, "device-id"

    .line 122
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/startapp/y3;->c:Lcom/startapp/c6;

    invoke-virtual {v1}, Lcom/startapp/i2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/b6;

    .line 126
    iget-object v1, v1, Lcom/startapp/b6;->c:Ljava/lang/String;

    const-string v2, "Accept-Language"

    .line 127
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lcom/startapp/z3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/y3;->e:Lcom/startapp/d3;

    invoke-interface {v0}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/z3;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/startapp/z3;->c:Lcom/startapp/z3;

    :goto_0
    return-object v0
.end method
