.class public Lcom/solodroid/ads/sdk/gdpr/GDPR;
.super Ljava/lang/Object;
.source "GDPR.java"


# instance fields
.field activity:Landroid/app/Activity;

.field consentForm:Lcom/google/android/ump/ConsentForm;

.field private consentInformation:Lcom/google/android/ump/ConsentInformation;


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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic lambda$loadForm$4(Lcom/google/android/ump/FormError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "formError"
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$updateGDPRConsentStatus$1(Lcom/google/android/ump/FormError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "formError"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method synthetic lambda$loadForm$3$com-solodroid-ads-sdk-gdpr-GDPR(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "activity",
            "consentForm"
        }
    .end annotation

    .line 36
    iput-object p2, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR;->consentForm:Lcom/google/android/ump/ConsentForm;

    .line 37
    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 38
    new-instance v0, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda4;-><init>(Lcom/solodroid/ads/sdk/gdpr/GDPR;Landroid/app/Activity;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/ump/ConsentForm;->show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$null$2$com-solodroid-ads-sdk-gdpr-GDPR(Landroid/app/Activity;Lcom/google/android/ump/FormError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "activity",
            "formError"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/solodroid/ads/sdk/gdpr/GDPR;->loadForm(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$updateGDPRConsentStatus$0$com-solodroid-ads-sdk-gdpr-GDPR()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->isConsentFormAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/gdpr/GDPR;->loadForm(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public loadForm(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda2;-><init>(Lcom/solodroid/ads/sdk/gdpr/GDPR;Landroid/app/Activity;)V

    new-instance v1, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadConsentForm(Landroid/content/Context;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    return-void
.end method

.method public updateGDPRConsentStatus()V
    .locals 5

    .line 22
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 24
    iget-object v2, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda0;-><init>(Lcom/solodroid/ads/sdk/gdpr/GDPR;)V

    new-instance v4, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    const-string v0, "GDPR"

    const-string v1, "GDPR Funding choices is selected"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
