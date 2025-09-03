.class public final synthetic Lcom/onesignal/influence/data/OSTrackerFactory$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/onesignal/influence/domain/OSInfluenceChannel;->values()[Lcom/onesignal/influence/domain/OSInfluenceChannel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/onesignal/influence/data/OSTrackerFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/onesignal/influence/domain/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/domain/OSInfluenceChannel;

    invoke-virtual {v1}, Lcom/onesignal/influence/domain/OSInfluenceChannel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/onesignal/influence/domain/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/domain/OSInfluenceChannel;

    invoke-virtual {v1}, Lcom/onesignal/influence/domain/OSInfluenceChannel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
