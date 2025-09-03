.class Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;
.super Ljava/lang/Object;
.source "LegacyGDPR.java"

# interfaces
.implements Lcom/google/ads/consent/ConsentInfoUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;->updateLegacyGDPRConsentStatus(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;

.field final synthetic val$privacyPolicyUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$privacyPolicyUrl"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;->this$0:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;->val$privacyPolicyUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentInfoUpdated(Lcom/google/ads/consent/ConsentStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consentStatus"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    if-ne p1, v0, :cond_0

    .line 43
    new-instance p1, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;

    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;->this$0:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;-><init>(Landroid/app/Activity;Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;)V

    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$1;->val$privacyPolicyUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;->access$100(Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR$GDPRForm;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailedToUpdateConsentInfo(Ljava/lang/String;)V
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

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
