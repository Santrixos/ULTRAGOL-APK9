.class public Lcom/startapp/sdk/ads/video/VideoMode$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/ads/video/VideoMode;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Lcom/startapp/sdk/ads/video/VideoMode;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/video/VideoMode;ILandroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->c:Lcom/startapp/sdk/ads/video/VideoMode;

    iput p2, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->a:I

    iput-object p3, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->c:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->K:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface;

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/video/VideoMode;->O()V

    .line 4
    iget v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->a:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->c:Lcom/startapp/sdk/ads/video/VideoMode;

    .line 5
    iget-object v2, v1, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    if-eqz v2, :cond_2

    int-to-float v0, v0

    .line 6
    iget-boolean v1, v1, Lcom/startapp/sdk/ads/video/VideoMode;->P:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    :goto_0
    iget-object v2, v2, Lcom/startapp/q7;->c:Lcom/startapp/g6;

    if-eqz v2, :cond_2

    cmpg-float v3, v0, v3

    if-lez v3, :cond_1

    .line 8
    invoke-virtual {v2, v1}, Lcom/startapp/g6;->a(F)V

    iget-object v3, v2, Lcom/startapp/g6;->a:Lcom/startapp/rd;

    invoke-static {v3}, Lcom/startapp/se;->a(Lcom/startapp/rd;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v4, "duration"

    invoke-static {v3, v4, v0}, Lcom/startapp/de;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "mediaPlayerVolume"

    invoke-static {v3, v1, v0}, Lcom/startapp/de;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/startapp/xe;->a()Lcom/startapp/xe;

    move-result-object v0

    .line 9
    iget v0, v0, Lcom/startapp/xe;->a:F

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "deviceVolume"

    invoke-static {v3, v1, v0}, Lcom/startapp/de;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/startapp/g6;->a:Lcom/startapp/rd;

    .line 11
    iget-object v0, v0, Lcom/startapp/rd;->e:Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;

    .line 12
    sget-object v1, Lcom/startapp/re;->a:Lcom/startapp/re;

    invoke-virtual {v0}, Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;->c()Landroid/webkit/WebView;

    move-result-object v0

    const-string v2, "start"

    invoke-virtual {v1, v0, v2, v3}, Lcom/startapp/re;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Media duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->c:Lcom/startapp/sdk/ads/video/VideoMode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->W:Z

    .line 15
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/video/VideoMode;->Q()V

    .line 17
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/startapp/sdk/ads/video/VideoMode$a;->c:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object v1, v1, Lcom/startapp/sdk/ads/video/VideoMode;->v0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
