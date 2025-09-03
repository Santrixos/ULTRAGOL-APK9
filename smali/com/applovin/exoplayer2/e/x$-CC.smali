.class public final synthetic Lcom/applovin/exoplayer2/e/x$-CC;
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
.method public static $default$a(Lcom/applovin/exoplayer2/e/x;Lcom/applovin/exoplayer2/k/g;IZ)I
    .locals 1
    .param p0, "_this"    # Lcom/applovin/exoplayer2/e/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/k/g;IZI)I

    move-result p1

    return p1
.end method

.method public static $default$a(Lcom/applovin/exoplayer2/e/x;Lcom/applovin/exoplayer2/l/y;I)V
    .locals 1
    .param p0, "_this"    # Lcom/applovin/exoplayer2/e/x;

    .line 0
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    return-void
.end method
