.class public Lcom/startapp/g0;
.super Lcom/startapp/l2;
.source "Sta"


# instance fields
.field public final a:Lcom/startapp/h0;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/startapp/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startapp/l2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/g0;->a:Lcom/startapp/h0;

    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget p1, p0, Lcom/startapp/g0;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/startapp/g0;->b:I

    if-ne p1, v0, :cond_7

    .line 3
    iget-boolean p1, p0, Lcom/startapp/g0;->c:Z

    if-nez p1, :cond_7

    .line 4
    iget-boolean p1, p0, Lcom/startapp/g0;->d:Z

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 5
    iput-boolean v0, p0, Lcom/startapp/g0;->d:Z

    .line 11
    iget-object p1, p0, Lcom/startapp/g0;->a:Lcom/startapp/h0;

    check-cast p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 12
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->h:Landroid/app/Application;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->g(Landroid/content/Context;)V

    .line 14
    iget-object p1, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->B:Lcom/startapp/jb;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/startapp/jb;->a()Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;->a()Lcom/startapp/sdk/triggeredlinks/AppEventsMetadata;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v2}, Lcom/startapp/sdk/triggeredlinks/AppEventsMetadata;->c()Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    const-string v3, "Launch"

    .line 20
    invoke-virtual {p1, v0, v2, v3}, Lcom/startapp/jb;->a(Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;Ljava/util/Map;Ljava/lang/String;)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/startapp/g0;->a:Lcom/startapp/h0;

    check-cast p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 22
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->h:Landroid/app/Application;

    if-eqz v0, :cond_4

    .line 23
    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->u()Lcom/startapp/sa;

    move-result-object v0

    .line 25
    iget-object v2, v0, Lcom/startapp/sa;->b:Lcom/startapp/r3;

    new-instance v3, Lcom/startapp/qa;

    invoke-direct {v3, v0}, Lcom/startapp/qa;-><init>(Lcom/startapp/sa;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    :cond_4
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->h:Landroid/app/Application;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->g(Landroid/content/Context;)V

    .line 28
    iget-object p1, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->B:Lcom/startapp/jb;

    if-eqz p1, :cond_7

    .line 29
    invoke-virtual {p1}, Lcom/startapp/jb;->a()Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {v0}, Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;->a()Lcom/startapp/sdk/triggeredlinks/AppEventsMetadata;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {v2}, Lcom/startapp/sdk/triggeredlinks/AppEventsMetadata;->a()Ljava/util/Map;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    const-string v2, "Active"

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lcom/startapp/jb;->a(Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;Ljava/util/Map;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/startapp/g0;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/startapp/g0;->b:I

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapp/g0;->c:Z

    .line 4
    iget v0, p0, Lcom/startapp/g0;->b:I

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/startapp/g0;->a:Lcom/startapp/h0;

    check-cast p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 10
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->h:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 11
    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->u()Lcom/startapp/sa;

    move-result-object v0

    .line 13
    iget-object v1, v0, Lcom/startapp/sa;->b:Lcom/startapp/r3;

    new-instance v2, Lcom/startapp/ra;

    invoke-direct {v2, v0}, Lcom/startapp/ra;-><init>(Lcom/startapp/sa;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    :cond_1
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->h:Landroid/app/Application;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->g(Landroid/content/Context;)V

    .line 16
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->B:Lcom/startapp/jb;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/startapp/jb;->a()Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1}, Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;->a()Lcom/startapp/sdk/triggeredlinks/AppEventsMetadata;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 19
    invoke-virtual {v3}, Lcom/startapp/sdk/triggeredlinks/AppEventsMetadata;->b()Ljava/util/Map;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    const-string v3, "Inactive"

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/startapp/jb;->a(Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;Ljava/util/Map;Ljava/lang/String;)V

    .line 23
    :cond_4
    iget-object p1, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->h:Landroid/app/Application;

    if-eqz p1, :cond_5

    .line 26
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->o()Lcom/startapp/i6;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/startapp/i6;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 31
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method
