.class Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;
.super Ljava/lang/Object;
.source "IronSourceAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/ironsource/IronSourceAdapter;

.field final synthetic val$loadError:Lcom/google/android/gms/ads/AdError;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;Lcom/google/android/gms/ads/AdError;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;->this$0:Lcom/google/ads/mediation/ironsource/IronSourceAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;->val$loadError:Lcom/google/android/gms/ads/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;->this$0:Lcom/google/ads/mediation/ironsource/IronSourceAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->access$100(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;->this$0:Lcom/google/ads/mediation/ironsource/IronSourceAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->access$100(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;->this$0:Lcom/google/ads/mediation/ironsource/IronSourceAdapter;

    iget-object v2, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;->val$loadError:Lcom/google/android/gms/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method
