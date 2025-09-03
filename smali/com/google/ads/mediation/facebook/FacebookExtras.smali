.class public Lcom/google/ads/mediation/facebook/FacebookExtras;
.super Ljava/lang/Object;
.source "FacebookExtras.java"


# static fields
.field public static final NATIVE_BANNER:Ljava/lang/String; = "native_banner"

.field private static _nativeBanner:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 3

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    sget-boolean v1, Lcom/google/ads/mediation/facebook/FacebookExtras;->_nativeBanner:Z

    const-string v2, "native_banner"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setNativeBanner(Z)Lcom/google/ads/mediation/facebook/FacebookExtras;
    .locals 0

    .line 11
    sput-boolean p1, Lcom/google/ads/mediation/facebook/FacebookExtras;->_nativeBanner:Z

    return-object p0
.end method
