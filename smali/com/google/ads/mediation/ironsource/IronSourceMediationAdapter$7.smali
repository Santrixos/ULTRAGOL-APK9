.class Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$7;
.super Ljava/lang/Object;
.source "IronSourceMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;->onRewardedVideoAdRewarded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;

.field final synthetic val$reward:Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$IronSourceReward;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$IronSourceReward;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$7;->this$0:Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$7;->val$reward:Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$IronSourceReward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$7;->this$0:Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;->access$200(Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$7;->this$0:Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;->access$200(Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoComplete()V

    .line 321
    iget-object v0, p0, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$7;->this$0:Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;->access$200(Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$7;->val$reward:Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter$IronSourceReward;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_0
    return-void
.end method
