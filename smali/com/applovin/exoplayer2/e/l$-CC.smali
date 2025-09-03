.class public final synthetic Lcom/applovin/exoplayer2/e/l$-CC;
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
.method public static $default$a(Lcom/applovin/exoplayer2/e/l;Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;
    .locals 0
    .param p0, "_this"    # Lcom/applovin/exoplayer2/e/l;

    .line 0
    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/l;->createExtractors()[Lcom/applovin/exoplayer2/e/h;

    move-result-object p1

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/applovin/exoplayer2/e/l;->a:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method

.method public static synthetic a()[Lcom/applovin/exoplayer2/e/h;
    .locals 1

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    return-object v0
.end method
