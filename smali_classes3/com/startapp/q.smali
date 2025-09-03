.class public Lcom/startapp/q;
.super Ljava/lang/Object;
.source "Sta"


# direct methods
.method public static a(Lcom/startapp/n;)Lcom/startapp/k;
    .locals 0

    if-eqz p0, :cond_0

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/startapp/k;->a(Lcom/startapp/n;)Lcom/startapp/k;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/sdk/omsdk/AdVerification;Z)Lcom/startapp/n;
    .locals 9

    .line 11
    invoke-static {p0}, Lcom/startapp/q;->a(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/startapp/sdk/omsdk/AdVerification;->a()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_2

    .line 22
    :cond_1
    invoke-static {}, Lcom/startapp/u7;->a()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lcom/startapp/sdk/omsdk/AdVerification;->a()Ljava/util/List;

    move-result-object p0

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/omsdk/VerificationDetails;

    .line 26
    invoke-virtual {p1}, Lcom/startapp/sdk/omsdk/VerificationDetails;->c()Ljava/lang/String;

    move-result-object v1

    .line 27
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 29
    invoke-static {v1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p1}, Lcom/startapp/sdk/omsdk/VerificationDetails;->a()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/startapp/sdk/omsdk/VerificationDetails;->b()Ljava/lang/String;

    move-result-object p1

    const-string v3, "VendorKey is null or empty"

    .line 32
    invoke-static {v1, v3}, Lcom/startapp/se;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VerificationParameters is null or empty"

    invoke-static {p1, v3}, Lcom/startapp/se;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/startapp/hc;

    invoke-direct {v3, v1, v2, p1}, Lcom/startapp/hc;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p0, "Startio"

    const-string p1, "Name is null or empty"

    .line 34
    invoke-static {p0, p1}, Lcom/startapp/se;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "4.10.5"

    const-string v0, "Version is null or empty"

    invoke-static {p1, v0}, Lcom/startapp/se;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/startapp/y7;

    invoke-direct {v2, p0, p1}, Lcom/startapp/y7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "OM SDK JS script content is null"

    .line 35
    invoke-static {v4, p0}, Lcom/startapp/se;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/startapp/p;

    sget-object v8, Lcom/iab/omid/library/startio/adsession/AdSessionContextType;->b:Lcom/iab/omid/library/startio/adsession/AdSessionContextType;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/startapp/p;-><init>(Lcom/startapp/y7;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/startio/adsession/AdSessionContextType;)V

    const/4 p1, 0x1

    .line 36
    invoke-static {p0, p2, p1}, Lcom/startapp/q;->a(Lcom/startapp/p;ZZ)Lcom/startapp/n;

    move-result-object p0

    return-object p0

    .line 37
    :cond_4
    :goto_2
    new-instance p0, Lcom/startapp/i4;

    sget-object p1, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {p0, p1}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string p1, "OMSDK: Verification details can\'t be null!"

    .line 38
    iput-object p1, p0, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/startapp/i4;->a()V

    return-object v0
.end method

.method public static a(Landroid/webkit/WebView;)Lcom/startapp/n;
    .locals 11

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "Startio"

    const-string v1, "Name is null or empty"

    .line 8
    invoke-static {v0, v1}, Lcom/startapp/se;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4.10.5"

    const-string v2, "Version is null or empty"

    invoke-static {v1, v2}, Lcom/startapp/se;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/startapp/y7;

    invoke-direct {v4, v0, v1}, Lcom/startapp/y7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/startapp/p;

    sget-object v10, Lcom/iab/omid/library/startio/adsession/AdSessionContextType;->a:Lcom/iab/omid/library/startio/adsession/AdSessionContextType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v10}, Lcom/startapp/p;-><init>(Lcom/startapp/y7;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/startio/adsession/AdSessionContextType;)V

    const/4 p0, 0x0

    .line 10
    invoke-static {v0, p0, p0}, Lcom/startapp/q;->a(Lcom/startapp/p;ZZ)Lcom/startapp/n;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/startapp/p;ZZ)Lcom/startapp/n;
    .locals 6

    if-eqz p1, :cond_0

    .line 40
    sget-object p2, Lcom/iab/omid/library/startio/adsession/CreativeType;->d:Lcom/iab/omid/library/startio/adsession/CreativeType;

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/iab/omid/library/startio/adsession/CreativeType;->c:Lcom/iab/omid/library/startio/adsession/CreativeType;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/iab/omid/library/startio/adsession/CreativeType;->b:Lcom/iab/omid/library/startio/adsession/CreativeType;

    goto :goto_0

    :goto_1
    sget-object v2, Lcom/iab/omid/library/startio/adsession/ImpressionType;->b:Lcom/iab/omid/library/startio/adsession/ImpressionType;

    sget-object v3, Lcom/iab/omid/library/startio/adsession/Owner;->a:Lcom/iab/omid/library/startio/adsession/Owner;

    if-eqz p1, :cond_2

    move-object v4, v3

    goto :goto_2

    .line 43
    :cond_2
    sget-object p1, Lcom/iab/omid/library/startio/adsession/Owner;->b:Lcom/iab/omid/library/startio/adsession/Owner;

    move-object v4, p1

    :goto_2
    const/4 v5, 0x0

    .line 44
    sget-object p1, Lcom/iab/omid/library/startio/adsession/CreativeType;->a:Lcom/iab/omid/library/startio/adsession/CreativeType;

    if-eq v1, p1, :cond_4

    .line 45
    new-instance p1, Lcom/startapp/o;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/startapp/o;-><init>(Lcom/iab/omid/library/startio/adsession/CreativeType;Lcom/iab/omid/library/startio/adsession/ImpressionType;Lcom/iab/omid/library/startio/adsession/Owner;Lcom/iab/omid/library/startio/adsession/Owner;Z)V

    .line 46
    sget-object p2, Lcom/startapp/t7;->a:Lcom/startapp/qd;

    .line 47
    iget-boolean p2, p2, Lcom/startapp/qd;->a:Z

    if-eqz p2, :cond_3

    .line 48
    new-instance p2, Lcom/startapp/rd;

    invoke-direct {p2, p1, p0}, Lcom/startapp/rd;-><init>(Lcom/startapp/o;Lcom/startapp/p;)V

    return-object p2

    .line 49
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Method called before OM SDK activation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/startapp/t7;->a:Lcom/startapp/qd;

    .line 2
    iget-boolean v0, v0, Lcom/startapp/qd;->a:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/startapp/t7;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/startapp/n;)Lcom/startapp/g6;
    .locals 0

    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/startapp/g6;->a(Lcom/startapp/n;)Lcom/startapp/g6;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/startapp/sdk/omsdk/AdVerification;Z)Lcom/startapp/n;
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/startapp/q;->a(Landroid/content/Context;Lcom/startapp/sdk/omsdk/AdVerification;Z)Lcom/startapp/n;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/webkit/WebView;)Lcom/startapp/n;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/startapp/q;->a(Landroid/webkit/WebView;)Lcom/startapp/n;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
