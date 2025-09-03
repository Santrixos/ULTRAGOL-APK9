.class public interface abstract Lcom/google/ads/consent/ConsentInfoUpdateListener;
.super Ljava/lang/Object;
.source "ConsentInfoUpdateListener.java"


# virtual methods
.method public abstract onConsentInfoUpdated(Lcom/google/ads/consent/ConsentStatus;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consentStatus"
        }
    .end annotation
.end method

.method public abstract onFailedToUpdateConsentInfo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method
