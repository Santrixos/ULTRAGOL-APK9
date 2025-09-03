.class public final synthetic Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/solodroid/ads/sdk/gdpr/GDPR;


# direct methods
.method public synthetic constructor <init>(Lcom/solodroid/ads/sdk/gdpr/GDPR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda0;->f$0:Lcom/solodroid/ads/sdk/gdpr/GDPR;

    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda0;->f$0:Lcom/solodroid/ads/sdk/gdpr/GDPR;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/gdpr/GDPR;->lambda$updateGDPRConsentStatus$0$com-solodroid-ads-sdk-gdpr-GDPR()V

    return-void
.end method
