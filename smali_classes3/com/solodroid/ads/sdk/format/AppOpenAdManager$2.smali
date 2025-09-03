.class Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "AppOpenAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;Ljava/lang/String;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appOpenAdUnitId:Ljava/lang/String;

.field final synthetic val$onShowAdCompleteListener:Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/AppOpenAdManager;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$appOpenAdUnitId",
            "val$activity",
            "val$onShowAdCompleteListener"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$onShowAdCompleteListener:Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;

    iput-object p3, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$appOpenAdUnitId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->access$002(Lcom/solodroid/ads/sdk/format/AppOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 138
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isShowingAd:Z

    const-string v0, "AppOpenAd"

    const-string v1, "onAdDismissedFullScreenContent."

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$onShowAdCompleteListener:Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;

    invoke-interface {v0}, Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;->onShowAdComplete()V

    .line 143
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$appOpenAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->loadAd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->access$002(Lcom/solodroid/ads/sdk/format/AppOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 150
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isShowingAd:Z

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToShowFullScreenContent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppOpenAd"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$onShowAdCompleteListener:Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;

    invoke-interface {p1}, Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;->onShowAdComplete()V

    .line 153
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->this$0:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;->val$appOpenAdUnitId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->loadAd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    const-string v0, "AppOpenAd"

    const-string v1, "onAdShowedFullScreenContent."

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
