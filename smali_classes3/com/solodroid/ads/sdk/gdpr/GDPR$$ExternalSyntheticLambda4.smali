.class public final synthetic Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# instance fields
.field public final synthetic f$0:Lcom/solodroid/ads/sdk/gdpr/GDPR;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/solodroid/ads/sdk/gdpr/GDPR;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda4;->f$0:Lcom/solodroid/ads/sdk/gdpr/GDPR;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda4;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onConsentFormDismissed(Lcom/google/android/ump/FormError;)V
    .locals 2

    iget-object v0, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda4;->f$0:Lcom/solodroid/ads/sdk/gdpr/GDPR;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/gdpr/GDPR$$ExternalSyntheticLambda4;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/solodroid/ads/sdk/gdpr/GDPR;->lambda$null$2$com-solodroid-ads-sdk-gdpr-GDPR(Landroid/app/Activity;Lcom/google/android/ump/FormError;)V

    return-void
.end method
