.class Lcom/solodroid/ads/sdk/format/AppOpenAdMob$1;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "AppOpenAdMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/AppOpenAdMob;->loadAd(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/AppOpenAdMob;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdMob$1;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadAdError"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdMob$1;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;->access$102(Lcom/solodroid/ads/sdk/format/AppOpenAdMob;Z)Z

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppOpenAd"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdMob$1;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;->access$002(Lcom/solodroid/ads/sdk/format/AppOpenAdMob;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 60
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdMob$1;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;->access$102(Lcom/solodroid/ads/sdk/format/AppOpenAdMob;Z)Z

    .line 61
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdMob$1;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;->access$202(Lcom/solodroid/ads/sdk/format/AppOpenAdMob;J)J

    const-string p1, "AppOpenAd"

    const-string v0, "onAdLoaded."

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ad"
        }
    .end annotation

    .line 51
    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0, p1}, Lcom/solodroid/ads/sdk/format/AppOpenAdMob$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    return-void
.end method
