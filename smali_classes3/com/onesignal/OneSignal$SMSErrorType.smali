.class public final enum Lcom/onesignal/OneSignal$SMSErrorType;
.super Ljava/lang/Enum;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SMSErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/OneSignal$SMSErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/OneSignal$SMSErrorType;

.field public static final enum INVALID_OPERATION:Lcom/onesignal/OneSignal$SMSErrorType;

.field public static final enum NETWORK:Lcom/onesignal/OneSignal$SMSErrorType;

.field public static final enum REQUIRES_SMS_AUTH:Lcom/onesignal/OneSignal$SMSErrorType;

.field public static final enum VALIDATION:Lcom/onesignal/OneSignal$SMSErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 285
    new-instance v0, Lcom/onesignal/OneSignal$SMSErrorType;

    const-string v1, "VALIDATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$SMSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/OneSignal$SMSErrorType;->VALIDATION:Lcom/onesignal/OneSignal$SMSErrorType;

    new-instance v1, Lcom/onesignal/OneSignal$SMSErrorType;

    const-string v3, "REQUIRES_SMS_AUTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/OneSignal$SMSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/OneSignal$SMSErrorType;->REQUIRES_SMS_AUTH:Lcom/onesignal/OneSignal$SMSErrorType;

    new-instance v3, Lcom/onesignal/OneSignal$SMSErrorType;

    const-string v5, "INVALID_OPERATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/OneSignal$SMSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/onesignal/OneSignal$SMSErrorType;->INVALID_OPERATION:Lcom/onesignal/OneSignal$SMSErrorType;

    new-instance v5, Lcom/onesignal/OneSignal$SMSErrorType;

    const-string v7, "NETWORK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/onesignal/OneSignal$SMSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/onesignal/OneSignal$SMSErrorType;->NETWORK:Lcom/onesignal/OneSignal$SMSErrorType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/onesignal/OneSignal$SMSErrorType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 284
    sput-object v7, Lcom/onesignal/OneSignal$SMSErrorType;->$VALUES:[Lcom/onesignal/OneSignal$SMSErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/OneSignal$SMSErrorType;
    .locals 1

    .line 284
    const-class v0, Lcom/onesignal/OneSignal$SMSErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/OneSignal$SMSErrorType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/OneSignal$SMSErrorType;
    .locals 1

    .line 284
    sget-object v0, Lcom/onesignal/OneSignal$SMSErrorType;->$VALUES:[Lcom/onesignal/OneSignal$SMSErrorType;

    invoke-virtual {v0}, [Lcom/onesignal/OneSignal$SMSErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/OneSignal$SMSErrorType;

    return-object v0
.end method
