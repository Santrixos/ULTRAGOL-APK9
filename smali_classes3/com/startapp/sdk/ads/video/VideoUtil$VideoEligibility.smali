.class public final enum Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/sdk/ads/video/VideoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoEligibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

.field public static final enum b:Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

.field public static final enum c:Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

.field public static final enum d:Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

.field public static final synthetic e:[Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;


# instance fields
.field private desctiption:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    const-string v1, "ELIGIBLE"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->a:Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    .line 2
    new-instance v1, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    const-string v3, "INELIGIBLE_NO_STORAGE"

    const/4 v4, 0x1

    const-string v5, "Not enough storage for video"

    invoke-direct {v1, v3, v4, v5}, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->b:Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    .line 3
    new-instance v3, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    const-string v5, "INELIGIBLE_MISSING_ACTIVITY"

    const/4 v6, 0x2

    const-string v7, "OverlayActivity not declared in AndroidManifest.xml"

    invoke-direct {v3, v5, v6, v7}, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->c:Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    .line 4
    new-instance v5, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    const-string v7, "INELIGIBLE_ERRORS_THRESHOLD_REACHED"

    const/4 v8, 0x3

    const-string v9, "Video errors threshold reached."

    invoke-direct {v5, v7, v8, v9}, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->d:Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->e:[Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->desctiption:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    return-object p0
.end method

.method public static values()[Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->e:[Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    invoke-virtual {v0}, [Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoUtil$VideoEligibility;->desctiption:Ljava/lang/String;

    return-object v0
.end method
