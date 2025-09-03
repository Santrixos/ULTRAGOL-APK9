.class public Lcom/startapp/sdk/ads/video/VideoMode$c;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/ads/video/VideoMode;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/sdk/ads/video/VideoMode;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/video/VideoMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/VideoMode$c;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$c;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object v0, v0, Lcom/startapp/sdk/ads/video/VideoMode;->O:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$c;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    .line 3
    iget-object v0, v0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/startapp/q7;->c:Lcom/startapp/g6;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/startapp/g6;->a:Lcom/startapp/rd;

    invoke-static {v1}, Lcom/startapp/se;->a(Lcom/startapp/rd;)V

    iget-object v0, v0, Lcom/startapp/g6;->a:Lcom/startapp/rd;

    .line 6
    iget-object v0, v0, Lcom/startapp/rd;->e:Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;

    .line 7
    sget-object v1, Lcom/startapp/re;->a:Lcom/startapp/re;

    invoke-virtual {v0}, Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;->c()Landroid/webkit/WebView;

    move-result-object v0

    const-string v2, "bufferStart"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/startapp/re;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$c;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object v0, v0, Lcom/startapp/sdk/ads/video/VideoMode;->o0:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/sdk/ads/video/VideoMode$c$a;

    invoke-direct {v1, p0}, Lcom/startapp/sdk/ads/video/VideoMode$c$a;-><init>(Lcom/startapp/sdk/ads/video/VideoMode$c;)V

    .line 9
    sget-object v2, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 10
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->G()Lcom/startapp/sdk/adsbase/VideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/VideoConfig;->c()J

    move-result-wide v2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 25
    iget-object v1, p0, Lcom/startapp/sdk/ads/video/VideoMode$c;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {v1}, Lcom/startapp/sdk/ads/video/VideoMode;->Q()V

    .line 27
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
