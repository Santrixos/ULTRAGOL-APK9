.class public final synthetic Lcom/applovin/exoplayer2/d/f$-CC;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$d(Lcom/applovin/exoplayer2/d/f;)Z
    .locals 1
    .param p0, "_this"    # Lcom/applovin/exoplayer2/d/f;

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)V
    .locals 1

    .line 0
    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/d/f;->a(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/applovin/exoplayer2/d/f;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_2
    return-void
.end method
