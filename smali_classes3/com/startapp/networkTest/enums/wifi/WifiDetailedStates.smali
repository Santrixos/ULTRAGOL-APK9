.class public final enum Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum b:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum c:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum d:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum e:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum f:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum g:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum h:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum i:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum j:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum k:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum l:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum m:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public static final enum n:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field private static final synthetic o:[Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->a:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v3, "IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->b:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v5, "SCANNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->c:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v7, "CONNECTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->d:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 21
    new-instance v7, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v9, "AUTHENTICATING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->e:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 27
    new-instance v9, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v11, "OBTAINING_IPADDR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->f:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 32
    new-instance v11, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v13, "CONNECTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->g:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 37
    new-instance v13, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v15, "SUSPENDED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->h:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 42
    new-instance v15, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v14, "DISCONNECTING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->i:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 47
    new-instance v14, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v12, "DISCONNECTED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->j:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 52
    new-instance v12, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v10, "FAILED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->k:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 57
    new-instance v10, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v8, "BLOCKED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->l:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 62
    new-instance v8, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v6, "VERIFYING_POOR_LINK"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->m:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 67
    new-instance v6, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const-string v4, "CAPTIVE_PORTAL_CHECK"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->n:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 68
    sput-object v4, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->o:[Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/net/NetworkInfo$DetailedState;)Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;
    .locals 2

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates$a;->a:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 26
    sget-object v0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->m:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    invoke-virtual {p0, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 27
    :pswitch_0
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->h:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 28
    :pswitch_1
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->c:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 29
    :pswitch_2
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->f:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 30
    :pswitch_3
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->b:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 31
    :pswitch_4
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->k:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 32
    :pswitch_5
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->i:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 33
    :pswitch_6
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->j:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 34
    :pswitch_7
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->d:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 35
    :pswitch_8
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->g:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 36
    :pswitch_9
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->l:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 37
    :pswitch_a
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->e:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    .line 62
    :cond_0
    sget-object v0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->n:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    invoke-virtual {p0, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    .line 66
    :cond_1
    sget-object p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->a:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->o:[Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-object v0
.end method
