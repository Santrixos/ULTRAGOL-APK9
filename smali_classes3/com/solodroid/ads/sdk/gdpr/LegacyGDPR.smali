.class public Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;
.super Ljava/lang/Object;
.source "LegacyGDPR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static getBundleAd(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-static {p0}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->getConsentStatus()Lcom/google/ads/consent/ConsentStatus;

    move-result-object p0

    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    invoke-virtual {p0, v1}, Lcom/google/ads/consent/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "npa"

    const-string v1, "1"

    .line 28
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public updateLegacyGDPRConsentStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adMobPublisherId",
            "privacyPolicyUrl"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 38
    new-instance p1, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;

    invoke-direct {p1, p0, p2}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;-><init>(Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/consent/ConsentInformation;->requestConsentInfoUpdate([Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V

    const-string p1, "GDPR"

    const-string p2, "Legacy GDPR is selected"

    .line 54
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
