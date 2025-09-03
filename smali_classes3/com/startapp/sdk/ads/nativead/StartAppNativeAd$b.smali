.class public Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

.field public final synthetic b:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->b:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->a:Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->b:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapp/sdk/adsbase/Ad;->setErrorMessage(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->a:Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->b:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    .line 6
    iget-object v2, v1, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    .line 7
    invoke-static {v2, p1, v1, v0}, Lcom/startapp/j;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/Ad;Z)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->a:Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->b:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iput-boolean v0, p1, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->isLoading:Z

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->b:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->h()V

    return-void
.end method
