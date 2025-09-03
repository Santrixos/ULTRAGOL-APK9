.class Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;
.super Ljava/lang/Object;
.source "LegacyGDPR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GDPRForm"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field private consentForm:Lcom/google/ads/consent/ConsentForm;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->activity:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->displayConsentForm(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;)Lcom/google/ads/consent/ConsentForm;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->consentForm:Lcom/google/ads/consent/ConsentForm;

    return-object p0
.end method

.method private displayConsentForm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privacyPolicyUrl"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/google/ads/consent/ConsentForm$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->getUrlPrivacyPolicy(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/ads/consent/ConsentForm$Builder;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    .line 68
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm$Builder;->withPersonalizedAdsOption()Lcom/google/ads/consent/ConsentForm$Builder;

    .line 69
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm$Builder;->withNonPersonalizedAdsOption()Lcom/google/ads/consent/ConsentForm$Builder;

    .line 70
    new-instance p1, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm$1;

    invoke-direct {p1, p0}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm$1;-><init>(Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;)V

    invoke-virtual {v0, p1}, Lcom/google/ads/consent/ConsentForm$Builder;->withListener(Lcom/google/ads/consent/ConsentFormListener;)Lcom/google/ads/consent/ConsentForm$Builder;

    .line 94
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm$Builder;->build()Lcom/google/ads/consent/ConsentForm;

    move-result-object p1

    iput-object p1, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->consentForm:Lcom/google/ads/consent/ConsentForm;

    .line 95
    invoke-virtual {p1}, Lcom/google/ads/consent/ConsentForm;->load()V

    return-void
.end method

.method private getUrlPrivacyPolicy(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privacyPolicyUrl"
        }
    .end annotation

    .line 101
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GDPR"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
