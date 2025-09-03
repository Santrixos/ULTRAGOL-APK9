.class public final enum Lcom/onesignal/influence/domain/OSInfluenceChannel;
.super Ljava/lang/Enum;
.source "OSInfluenceChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/influence/domain/OSInfluenceChannel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/influence/domain/OSInfluenceChannel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onesignal/influence/domain/OSInfluenceChannel;",
        "",
        "nameValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "equalsName",
        "",
        "otherName",
        "toString",
        "IAM",
        "NOTIFICATION",
        "Companion",
        "onesignal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/influence/domain/OSInfluenceChannel;

.field public static final Companion:Lcom/onesignal/influence/domain/OSInfluenceChannel$Companion;

.field public static final enum IAM:Lcom/onesignal/influence/domain/OSInfluenceChannel;

.field public static final enum NOTIFICATION:Lcom/onesignal/influence/domain/OSInfluenceChannel;


# instance fields
.field private final nameValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/onesignal/influence/domain/OSInfluenceChannel;

    new-instance v1, Lcom/onesignal/influence/domain/OSInfluenceChannel;

    const-string v2, "IAM"

    const/4 v3, 0x0

    const-string v4, "iam"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/onesignal/influence/domain/OSInfluenceChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/onesignal/influence/domain/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/domain/OSInfluenceChannel;

    aput-object v1, v0, v3

    new-instance v1, Lcom/onesignal/influence/domain/OSInfluenceChannel;

    const-string v2, "NOTIFICATION"

    const/4 v3, 0x1

    const-string v4, "notification"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/onesignal/influence/domain/OSInfluenceChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/onesignal/influence/domain/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/domain/OSInfluenceChannel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->$VALUES:[Lcom/onesignal/influence/domain/OSInfluenceChannel;

    new-instance v0, Lcom/onesignal/influence/domain/OSInfluenceChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/influence/domain/OSInfluenceChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->Companion:Lcom/onesignal/influence/domain/OSInfluenceChannel$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->nameValue:Ljava/lang/String;

    return-void
.end method

.method public static final fromString(Ljava/lang/String;)Lcom/onesignal/influence/domain/OSInfluenceChannel;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->Companion:Lcom/onesignal/influence/domain/OSInfluenceChannel$Companion;

    invoke-virtual {v0, p0}, Lcom/onesignal/influence/domain/OSInfluenceChannel$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/domain/OSInfluenceChannel;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/influence/domain/OSInfluenceChannel;
    .locals 1

    const-class v0, Lcom/onesignal/influence/domain/OSInfluenceChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/influence/domain/OSInfluenceChannel;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/influence/domain/OSInfluenceChannel;
    .locals 1

    sget-object v0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->$VALUES:[Lcom/onesignal/influence/domain/OSInfluenceChannel;

    invoke-virtual {v0}, [Lcom/onesignal/influence/domain/OSInfluenceChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/influence/domain/OSInfluenceChannel;

    return-object v0
.end method


# virtual methods
.method public final equalsName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "otherName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->nameValue:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->nameValue:Ljava/lang/String;

    return-object v0
.end method
