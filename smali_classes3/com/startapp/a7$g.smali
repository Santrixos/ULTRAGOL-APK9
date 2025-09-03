.class public Lcom/startapp/a7$g;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/a7;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/startapp/a7;


# direct methods
.method public constructor <init>(Lcom/startapp/a7;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/a7$g;->d:Lcom/startapp/a7;

    iput-object p2, p0, Lcom/startapp/a7$g;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/startapp/a7$g;->b:Z

    iput-object p4, p0, Lcom/startapp/a7$g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startapp/a7$g;->d:Lcom/startapp/a7;

    iget-object v1, p0, Lcom/startapp/a7$g;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/startapp/a7$g;->b:Z

    iget-object v3, p0, Lcom/startapp/a7$g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-boolean v4, v0, Lcom/startapp/a7;->o:Z

    if-nez v4, :cond_7

    const/4 v4, 0x1

    .line 3
    iput-boolean v4, v0, Lcom/startapp/a7;->g:Z

    .line 4
    iget-object v5, v0, Lcom/startapp/a7;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/startapp/sdk/adsbase/a;->b(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/startapp/a7;->a()V

    .line 10
    iget-object v5, v0, Lcom/startapp/a7;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    move-object v1, v3

    :cond_0
    const/4 v2, 0x0

    .line 11
    invoke-static {v5, v1, v2}, Lcom/startapp/sdk/adsbase/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, Lcom/startapp/a7;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/startapp/a7;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/startapp/a7;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    new-instance v1, Lcom/startapp/i4;

    sget-object v2, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {v1, v2}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v2, "Wrong package reached"

    .line 14
    iput-object v2, v1, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/startapp/a7;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Link: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/startapp/a7;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    iput-object v2, v1, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 17
    iget-object v2, v0, Lcom/startapp/a7;->f:Ljava/lang/String;

    .line 18
    iput-object v2, v1, Lcom/startapp/i4;->g:Ljava/lang/String;

    .line 19
    invoke-virtual {v1}, Lcom/startapp/i4;->a()V

    goto :goto_2

    .line 20
    :cond_1
    sget-object v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 21
    iget-object v1, v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->analytics:Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    .line 22
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->j()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "firstSucceededSmartRedirect"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, v0, Lcom/startapp/a7;->b:Lcom/startapp/sdk/adsbase/e;

    .line 23
    invoke-virtual {v1, v2, v4}, Lcom/startapp/sdk/adsbase/e;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 26
    :goto_0
    iget-object v1, v0, Lcom/startapp/a7;->l:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 27
    sget-object v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 28
    iget-object v1, v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->analytics:Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    .line 29
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->i()F

    move-result v1

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x42c80000    # 100.0f

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v4, :cond_5

    .line 34
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    float-to-double v6, v1

    cmpg-double v1, v4, v6

    if-gez v1, :cond_6

    .line 35
    :cond_5
    new-instance v1, Lcom/startapp/i4;

    sget-object v4, Lcom/startapp/j4;->n:Lcom/startapp/j4;

    invoke-direct {v1, v4}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    .line 36
    invoke-virtual {v0}, Lcom/startapp/a7;->b()Lorg/json/JSONArray;

    move-result-object v4

    .line 37
    iput-object v4, v1, Lcom/startapp/i4;->f:Ljava/lang/Object;

    .line 38
    iget-object v4, v0, Lcom/startapp/a7;->f:Ljava/lang/String;

    .line 39
    iput-object v4, v1, Lcom/startapp/i4;->g:Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Lcom/startapp/i4;->a()V

    .line 42
    iget-object v1, v0, Lcom/startapp/a7;->b:Lcom/startapp/sdk/adsbase/e;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object v1

    .line 43
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v4, v1, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    .line 49
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/startapp/a7;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 50
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 54
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-void
.end method
