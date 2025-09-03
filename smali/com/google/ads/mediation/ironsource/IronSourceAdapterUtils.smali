.class public Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;
.super Ljava/lang/Object;
.source "IronSourceAdapterUtils.java"


# static fields
.field static final ADAPTER_VERSION_NAME:Ljava/lang/String; = "310"

.field static final DEFAULT_INSTANCE_ID:Ljava/lang/String; = "0"

.field static final KEY_APP_KEY:Ljava/lang/String; = "appKey"

.field static final KEY_INSTANCE_ID:Ljava/lang/String; = "instanceId"

.field static final MEDIATION_NAME:Ljava/lang/String; = "AdMob"

.field static final TAG:Ljava/lang/String;

.field private static uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/google/ads/mediation/ironsource/IronSourceMediationAdapter;

    const-string v0, "IronSourceMediationAdapter"

    sput-object v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized sendEventOnUIThread(Ljava/lang/Runnable;)V
    .locals 3

    const-class v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->uiHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->uiHandler:Landroid/os/Handler;

    .line 51
    :cond_0
    sget-object v1, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
