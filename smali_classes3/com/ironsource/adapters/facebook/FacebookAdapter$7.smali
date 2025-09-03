.class synthetic Lcom/ironsource/adapters/facebook/FacebookAdapter$7;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$adapters$facebook$FacebookAdapter$InitState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 280
    invoke-static {}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->values()[Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->$SwitchMap$com$ironsource$adapters$facebook$FacebookAdapter$InitState:[I

    :try_start_0
    sget-object v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->$SwitchMap$com$ironsource$adapters$facebook$FacebookAdapter$InitState:[I

    sget-object v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->$SwitchMap$com$ironsource$adapters$facebook$FacebookAdapter$InitState:[I

    sget-object v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter$7;->$SwitchMap$com$ironsource$adapters$facebook$FacebookAdapter$InitState:[I

    sget-object v1, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter$InitState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
