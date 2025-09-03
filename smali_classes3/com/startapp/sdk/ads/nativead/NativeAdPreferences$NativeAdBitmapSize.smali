.class public final enum Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeAdBitmapSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field public static final enum SIZE100X100:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field public static final enum SIZE150X150:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field public static final enum SIZE340X340:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field public static final enum SIZE72X72:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    const-string v1, "SIZE72X72"

    const/4 v2, 0x0

    const/16 v3, 0x48

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->SIZE72X72:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    .line 2
    new-instance v1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    const-string v3, "SIZE100X100"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v3, v4, v5, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->SIZE100X100:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    .line 3
    new-instance v3, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    const-string v5, "SIZE150X150"

    const/4 v6, 0x2

    const/16 v7, 0x96

    invoke-direct {v3, v5, v6, v7, v7}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->SIZE150X150:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    .line 4
    new-instance v5, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    const-string v7, "SIZE340X340"

    const/4 v8, 0x3

    const/16 v9, 0x154

    invoke-direct {v5, v7, v8, v9, v9}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->SIZE340X340:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->$VALUES:[Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->width:I

    .line 3
    iput p4, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->height:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-object p0
.end method

.method public static values()[Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->$VALUES:[Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    invoke-virtual {v0}, [Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;->width:I

    return v0
.end method
