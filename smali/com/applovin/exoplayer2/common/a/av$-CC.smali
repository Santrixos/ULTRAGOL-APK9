.class public final synthetic Lcom/applovin/exoplayer2/common/a/av$-CC;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic $default$a(Lcom/applovin/exoplayer2/common/a/av;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p0, "_this"    # Lcom/applovin/exoplayer2/common/a/av;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 0
    invoke-interface {p0, p1}, Lcom/applovin/exoplayer2/common/a/av;->c(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic $default$b(Lcom/applovin/exoplayer2/common/a/av;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lcom/applovin/exoplayer2/common/a/av;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 0
    invoke-interface {p0, p1}, Lcom/applovin/exoplayer2/common/a/av;->c(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method
