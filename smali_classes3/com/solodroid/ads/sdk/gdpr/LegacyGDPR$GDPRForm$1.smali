.class Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm$1;
.super Lcom/google/ads/consent/ConsentFormListener;
.source "LegacyGDPR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->displayConsentForm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm$1;->this$0:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;

    invoke-direct {p0}, Lcom/google/ads/consent/ConsentFormListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentFormClosed(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consentStatus",
            "userPrefersAdFree"
        }
    .end annotation

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Status : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GDPR"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConsentFormError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDescription"
        }
    .end annotation

    const-string v0, "GDPR"

    .line 91
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConsentFormLoaded()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm$1;->this$0:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->access$200(Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;)Lcom/google/ads/consent/ConsentForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm;->show()V

    return-void
.end method

.method public onConsentFormOpened()V
    .locals 0

    return-void
.end method
