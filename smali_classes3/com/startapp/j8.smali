.class public Lcom/startapp/j8;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/j8$k;,
        Lcom/startapp/j8$m;,
        Lcom/startapp/j8$g;,
        Lcom/startapp/j8$n;,
        Lcom/startapp/j8$l;,
        Lcom/startapp/j8$h;,
        Lcom/startapp/j8$o;,
        Lcom/startapp/j8$j;,
        Lcom/startapp/j8$p;,
        Lcom/startapp/j8$i;
    }
.end annotation


# static fields
.field private static final S:Ljava/lang/String; = "j8"

.field private static final T:Z = false

.field private static final U:I = 0x10

.field private static final V:I = 0x11

.field private static final W:I = 0x12

.field private static final X:I = 0x13


# instance fields
.field private A:Ljava/lang/reflect/Field;

.field private B:Ljava/lang/reflect/Method;

.field private C:Ljava/lang/reflect/Field;

.field private D:Ljava/lang/reflect/Field;

.field private E:Ljava/lang/reflect/Field;

.field private F:Ljava/lang/reflect/Field;

.field private G:Ljava/lang/reflect/Field;

.field private H:Ljava/lang/reflect/Method;

.field private I:Ljava/lang/reflect/Method;

.field private J:Ljava/lang/reflect/Method;

.field private K:Ljava/lang/reflect/Method;

.field private L:Ljava/lang/reflect/Method;

.field private M:Ljava/lang/reflect/Method;

.field private N:Ljava/lang/reflect/Method;

.field private O:Landroid/content/ContentResolver;

.field private P:[I

.field public final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/k8;",
            ">;"
        }
    .end annotation
.end field

.field private R:Z

.field public final a:Landroid/os/Handler;

.field private b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/startapp/j8$p;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/j8$p;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/net/ConnectivityManager;

.field private h:Lcom/startapp/j8$j;

.field private i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private j:Lcom/startapp/y6;

.field private k:Lcom/startapp/j8$k;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/reflect/Method;

.field private n:Ljava/lang/reflect/Method;

.field private o:Ljava/lang/reflect/Method;

.field private p:Ljava/lang/reflect/Method;

.field private q:Ljava/lang/reflect/Method;

.field private r:Ljava/lang/reflect/Method;

.field private s:Ljava/lang/reflect/Method;

.field private t:Ljava/lang/reflect/Method;

.field private u:Ljava/lang/reflect/Method;

.field private v:Ljava/lang/reflect/Method;

.field private w:Ljava/lang/reflect/Field;

.field private x:Ljava/lang/reflect/Field;

.field private y:Ljava/lang/reflect/Field;

.field private z:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v0, "phone"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    .line 6
    invoke-direct {p0}, Lcom/startapp/j8;->z()V

    .line 8
    iget-object p1, p0, Lcom/startapp/j8;->P:[I

    invoke-direct {p0, p1}, Lcom/startapp/j8;->a([I)V

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/startapp/j8;->w()V

    .line 14
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/startapp/j8;->a:Landroid/os/Handler;

    .line 15
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8;->Q:Ljava/util/List;

    .line 16
    new-instance p1, Lcom/startapp/y6;

    invoke-direct {p1}, Lcom/startapp/y6;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    .line 17
    new-instance p1, Lcom/startapp/j8$j;

    invoke-direct {p1, p0}, Lcom/startapp/j8$j;-><init>(Lcom/startapp/j8;)V

    iput-object p1, p0, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    .line 19
    iget-object p1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/j8;->O:Landroid/content/ContentResolver;

    .line 21
    invoke-direct {p0}, Lcom/startapp/j8;->s()V

    .line 22
    invoke-direct {p0}, Lcom/startapp/j8;->t()V

    .line 23
    invoke-direct {p0}, Lcom/startapp/j8;->u()V

    .line 24
    invoke-direct {p0}, Lcom/startapp/j8;->r()V

    .line 25
    invoke-direct {p0}, Lcom/startapp/j8;->v()V

    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/startapp/j8;->c(I)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/startapp/networkTest/enums/PreferredNetworkTypes;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 409
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 411
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "preferred_network_mode"

    .line 412
    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    .line 413
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 414
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 415
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 416
    invoke-static {v2}, Lcom/startapp/j8;->e(I)Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 419
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/startapp/networkTest/enums/NetworkTypes;)Lcom/startapp/networkTest/enums/CellNetworkTypes;
    .locals 1

    .line 290
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkTypes;->c:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne p0, v0, :cond_0

    .line 291
    sget-object p0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->e:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    return-object p0

    .line 294
    :cond_0
    invoke-static {p0}, Lcom/startapp/j8;->b(Lcom/startapp/networkTest/enums/NetworkTypes;)Lcom/startapp/networkTest/enums/NetworkGenerations;

    move-result-object p0

    .line 295
    sget-object v0, Lcom/startapp/j8$f;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 305
    sget-object p0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->f:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    return-object p0

    .line 306
    :cond_1
    sget-object p0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->d:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    return-object p0

    .line 307
    :cond_2
    sget-object p0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->c:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    return-object p0

    .line 308
    :cond_3
    sget-object p0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->b:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    return-object p0

    .line 309
    :cond_4
    sget-object p0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->a:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/startapp/networkTest/enums/NetworkTypes;
    .locals 2

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "CDMA - EvDo rev. B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CDMA - EvDo rev. A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "CDMA - EvDo rev. 0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "CDMA - eHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "CDMA - 1xRTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "IWLAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "HSUPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "HSPAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "HSDPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "iDEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "HSPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "GPRS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_d
    const-string v0, "EDGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_e
    const-string v0, "CDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_f
    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_10
    const-string v0, "GSM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_11
    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_12
    const-string v0, "TD_SCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_13
    const-string v0, "LTE_CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 192
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 193
    :pswitch_0
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->g:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 194
    :pswitch_1
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->f:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 195
    :pswitch_2
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->e:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 196
    :pswitch_3
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->h:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 197
    :pswitch_4
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->b:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 231
    :pswitch_5
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->u:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 232
    :pswitch_6
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->m:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 233
    :pswitch_7
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->l:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 234
    :pswitch_8
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->k:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 240
    :pswitch_9
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->n:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 244
    :pswitch_a
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->r:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 245
    :pswitch_b
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->j:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 246
    :pswitch_c
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->i:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 247
    :pswitch_d
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->d:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 248
    :pswitch_e
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->c:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 272
    :pswitch_f
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->o:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 276
    :pswitch_10
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->s:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 284
    :pswitch_11
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->q:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 285
    :pswitch_12
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->t:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 289
    :pswitch_13
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->p:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x798f2fe0 -> :sswitch_13
        -0x36280a07 -> :sswitch_12
        0x9c4 -> :sswitch_11
        0x114e1 -> :sswitch_10
        0x127bd -> :sswitch_f
        0x1f7db5 -> :sswitch_e
        0x2065bd -> :sswitch_d
        0x217cea -> :sswitch_c
        0x21fc3c -> :sswitch_b
        0x27cf17 -> :sswitch_a
        0x30c2e4 -> :sswitch_9
        0x41d604a -> :sswitch_8
        0x41d8b94 -> :sswitch_7
        0x41da01b -> :sswitch_6
        0x42d658b -> :sswitch_5
        0x31d85d6d -> :sswitch_4
        0x349f5145 -> :sswitch_3
        0x353c9e01 -> :sswitch_2
        0x353c9e12 -> :sswitch_1
        0x353c9e13 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method private a(Landroid/content/Context;I)Lcom/startapp/networkTest/enums/PreferredNetworkTypes;
    .locals 3

    .line 398
    sget-object v0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->a:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    .line 400
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 402
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 404
    invoke-static {p1}, Lcom/startapp/j8;->e(I)Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 406
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static a(Lcom/startapp/networkTest/data/RadioInfo;)Lcom/startapp/networkTest/enums/radio/SignalStrengths;
    .locals 11

    if-nez p0, :cond_0

    .line 310
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->a:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 312
    :cond_0
    iget v0, p0, Lcom/startapp/networkTest/data/RadioInfo;->RXLevel:I

    .line 313
    iget-object v1, p0, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    invoke-static {v1}, Lcom/startapp/j8;->b(Lcom/startapp/networkTest/enums/NetworkTypes;)Lcom/startapp/networkTest/enums/NetworkGenerations;

    move-result-object v1

    .line 316
    sget-object v2, Lcom/startapp/networkTest/enums/NetworkGenerations;->d:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v1, v2, :cond_1

    .line 317
    iget p0, p0, Lcom/startapp/networkTest/data/RadioInfo;->NrCsiRsrp:I

    const/4 v3, -0x1

    if-ge p0, v3, :cond_1

    move v0, p0

    :cond_1
    if-nez v0, :cond_2

    .line 323
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->a:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 325
    :cond_2
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Lcom/startapp/y4;->STATSMANAGER_SIGNAL_STRENGTH_MAPPING_2G()[I

    move-result-object v3

    .line 327
    invoke-virtual {p0}, Lcom/startapp/y4;->STATSMANAGER_SIGNAL_STRENGTH_MAPPING_3G()[I

    move-result-object v4

    .line 328
    invoke-virtual {p0}, Lcom/startapp/y4;->STATSMANAGER_SIGNAL_STRENGTH_MAPPING_4G()[I

    move-result-object v5

    .line 329
    invoke-virtual {p0}, Lcom/startapp/y4;->STATSMANAGER_SIGNAL_STRENGTH_MAPPING_5G()[I

    move-result-object p0

    .line 332
    sget-object v6, Lcom/startapp/networkTest/enums/NetworkGenerations;->a:Lcom/startapp/networkTest/enums/NetworkGenerations;

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v1, v6, :cond_7

    .line 334
    aget p0, v3, v10

    if-lt v0, p0, :cond_3

    .line 335
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->f:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 336
    :cond_3
    aget p0, v3, v9

    if-lt v0, p0, :cond_4

    .line 337
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->e:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 338
    :cond_4
    aget p0, v3, v8

    if-lt v0, p0, :cond_5

    .line 339
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->d:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 340
    :cond_5
    aget p0, v3, v7

    if-lt v0, p0, :cond_6

    .line 341
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->c:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 343
    :cond_6
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->b:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 349
    :cond_7
    sget-object v3, Lcom/startapp/networkTest/enums/NetworkGenerations;->b:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v1, v3, :cond_c

    .line 351
    aget p0, v4, v10

    if-lt v0, p0, :cond_8

    .line 352
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->f:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 353
    :cond_8
    aget p0, v4, v9

    if-lt v0, p0, :cond_9

    .line 354
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->e:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 355
    :cond_9
    aget p0, v4, v8

    if-lt v0, p0, :cond_a

    .line 356
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->d:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 357
    :cond_a
    aget p0, v4, v7

    if-lt v0, p0, :cond_b

    .line 358
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->c:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 360
    :cond_b
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->b:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 365
    :cond_c
    sget-object v3, Lcom/startapp/networkTest/enums/NetworkGenerations;->c:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v1, v3, :cond_11

    .line 367
    aget p0, v5, v10

    if-lt v0, p0, :cond_d

    .line 368
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->f:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 369
    :cond_d
    aget p0, v5, v9

    if-lt v0, p0, :cond_e

    .line 370
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->e:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 371
    :cond_e
    aget p0, v5, v8

    if-lt v0, p0, :cond_f

    .line 372
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->d:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 373
    :cond_f
    aget p0, v5, v7

    if-lt v0, p0, :cond_10

    .line 374
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->c:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 376
    :cond_10
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->b:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    :cond_11
    if-ne v1, v2, :cond_16

    .line 383
    aget v1, p0, v10

    if-lt v0, v1, :cond_12

    .line 384
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->f:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 385
    :cond_12
    aget v1, p0, v9

    if-lt v0, v1, :cond_13

    .line 386
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->e:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 387
    :cond_13
    aget v1, p0, v8

    if-lt v0, v1, :cond_14

    .line 388
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->d:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 389
    :cond_14
    aget p0, p0, v7

    if-lt v0, p0, :cond_15

    .line 390
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->c:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 392
    :cond_15
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->b:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0

    .line 397
    :cond_16
    sget-object p0, Lcom/startapp/networkTest/enums/radio/SignalStrengths;->a:Lcom/startapp/networkTest/enums/radio/SignalStrengths;

    return-object p0
.end method

.method public static synthetic a(Lcom/startapp/j8;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/startapp/j8;->l:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V
    .locals 4

    .line 78
    check-cast p1, Landroid/telephony/CellInfoCdma;

    .line 80
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->isRegistered()Z

    move-result v0

    iput-boolean v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->IsRegistered:Z

    .line 81
    sget-object v0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->a:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    iput-object v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellNetworkType:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    .line 82
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getTimeStamp()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellInfoAge:J

    .line 84
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object p3

    .line 85
    invoke-virtual {p3}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaBaseStationLatitude:I

    .line 86
    invoke-virtual {p3}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaBaseStationLongitude:I

    .line 87
    invoke-virtual {p3}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p4

    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    .line 88
    invoke-virtual {p3}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaSystemId:I

    .line 90
    :cond_0
    invoke-virtual {p3}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p4

    if-eq p4, v0, :cond_1

    .line 91
    invoke-virtual {p3}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaNetworkId:I

    .line 93
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p4

    if-eq p4, v0, :cond_2

    .line 94
    invoke-virtual {p3}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaBaseStationId:I

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Dbm:I

    .line 99
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaDbm:I

    .line 100
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaEcio:I

    .line 101
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->EvdoDbm:I

    .line 102
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->EvdoEcio:I

    .line 103
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result p1

    iput p1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->EvdoSnr:I

    return-void
.end method

.method private a([I)V
    .locals 5

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/j8;->f:Ljava/util/ArrayList;

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 8
    iget-object v3, p0, Lcom/startapp/j8;->f:Ljava/util/ArrayList;

    new-instance v4, Lcom/startapp/j8$p;

    invoke-direct {v4, p0, v2}, Lcom/startapp/j8$p;-><init>(Lcom/startapp/j8;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/startapp/j8;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startapp/j8;->R:Z

    return p0
.end method

.method public static synthetic a(Lcom/startapp/j8;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/startapp/j8;->R:Z

    return p1
.end method

.method private a(Lcom/startapp/networkTest/data/radio/CellInfo;Lcom/startapp/networkTest/data/RadioInfo;)Z
    .locals 3

    const/4 v0, 0x0

    .line 139
    :try_start_0
    iget-object v1, p2, Lcom/startapp/networkTest/data/RadioInfo;->MCC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/startapp/networkTest/data/RadioInfo;->MNC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/startapp/networkTest/data/radio/CellInfo;->IsRegistered:Z

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/startapp/networkTest/data/radio/CellInfo;->Mcc:I

    iget-object v2, p2, Lcom/startapp/networkTest/data/RadioInfo;->MCC:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/startapp/networkTest/data/radio/CellInfo;->Mnc:I

    iget-object v2, p2, Lcom/startapp/networkTest/data/RadioInfo;->MNC:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 140
    iget v1, p2, Lcom/startapp/networkTest/data/RadioInfo;->SubscriptionId:I

    invoke-virtual {p0, v1}, Lcom/startapp/j8;->i(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v1

    .line 141
    sget-object v2, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v1, v2, :cond_0

    .line 142
    iget-object v1, p2, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    :cond_0
    if-eq v1, v2, :cond_1

    .line 144
    iget-object p1, p1, Lcom/startapp/networkTest/data/radio/CellInfo;->CellNetworkType:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    invoke-static {v1}, Lcom/startapp/j8;->a(Lcom/startapp/networkTest/enums/NetworkTypes;)Lcom/startapp/networkTest/enums/CellNetworkTypes;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static synthetic a(Lcom/startapp/j8;[I)[I
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/startapp/j8;->P:[I

    return-object p1
.end method

.method private static b(I)I
    .locals 1

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    const/4 v0, -0x5

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5b

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x74

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/startapp/j8;)Lcom/startapp/j8$j;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    return-object p0
.end method

.method public static b(Lcom/startapp/networkTest/enums/NetworkTypes;)Lcom/startapp/networkTest/enums/NetworkGenerations;
    .locals 1

    .line 47
    sget-object v0, Lcom/startapp/j8$f;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 82
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkGenerations;->e:Lcom/startapp/networkTest/enums/NetworkGenerations;

    return-object p0

    .line 83
    :pswitch_0
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkGenerations;->d:Lcom/startapp/networkTest/enums/NetworkGenerations;

    return-object p0

    .line 84
    :pswitch_1
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkGenerations;->c:Lcom/startapp/networkTest/enums/NetworkGenerations;

    return-object p0

    .line 85
    :pswitch_2
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkGenerations;->b:Lcom/startapp/networkTest/enums/NetworkGenerations;

    return-object p0

    .line 86
    :pswitch_3
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkGenerations;->a:Lcom/startapp/networkTest/enums/NetworkGenerations;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/startapp/j8;->k:Lcom/startapp/j8$k;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/startapp/j8$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/startapp/j8$k;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    iput-object v0, p0, Lcom/startapp/j8;->k:Lcom/startapp/j8$k;

    .line 10
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/startapp/j8;->k:Lcom/startapp/j8$k;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/startapp/j8;->k:Lcom/startapp/j8$k;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/startapp/j8;->k:Lcom/startapp/j8$k;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V
    .locals 4

    .line 13
    check-cast p1, Landroid/telephony/CellInfoGsm;

    .line 15
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->isRegistered()Z

    move-result v0

    iput-boolean v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->IsRegistered:Z

    .line 16
    sget-object v0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->a:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    iput-object v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellNetworkType:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    .line 17
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getTimeStamp()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellInfoAge:J

    .line 19
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p3

    .line 20
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result p4

    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    .line 21
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Mcc:I

    .line 23
    :cond_0
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result p4

    if-eq p4, v0, :cond_1

    .line 24
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Mnc:I

    .line 26
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p4

    if-eq p4, v0, :cond_2

    .line 27
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Cid:I

    int-to-long v1, p4

    .line 28
    iput-wide v1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellId:J

    .line 30
    :cond_2
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p4

    if-eq p4, v0, :cond_3

    .line 31
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Lac:I

    .line 33
    :cond_3
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result p4

    if-eq p4, v0, :cond_4

    .line 34
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Psc:I

    .line 36
    :cond_4
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p4, v1, :cond_6

    .line 37
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result p4

    if-eq p4, v0, :cond_5

    .line 38
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Arfcn:I

    .line 40
    :cond_5
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result p4

    if-eq p4, v0, :cond_6

    .line 41
    invoke-virtual {p3}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->GsmBsic:I

    .line 45
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p1

    iput p1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Dbm:I

    return-void
.end method

.method public static synthetic b(Lcom/startapp/j8;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startapp/j8;->d(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/startapp/j8;[I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/startapp/j8;->a([I)V

    return-void
.end method

.method private b(Z)V
    .locals 0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/startapp/j8;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static c(I)I
    .locals 1

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x71

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lcom/startapp/j8;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->C:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/startapp/j8;->k:Lcom/startapp/j8$k;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private c(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V
    .locals 4

    .line 57
    check-cast p1, Landroid/telephony/CellInfoLte;

    .line 59
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->isRegistered()Z

    move-result v0

    iput-boolean v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->IsRegistered:Z

    .line 60
    sget-object v0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->c:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    iput-object v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellNetworkType:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    .line 61
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getTimeStamp()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellInfoAge:J

    .line 63
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p3

    .line 64
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result p4

    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    .line 65
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Mcc:I

    .line 67
    :cond_0
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result p4

    if-eq p4, v0, :cond_1

    .line 68
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Mnc:I

    .line 70
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p4

    if-eq p4, v0, :cond_2

    .line 71
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Cid:I

    int-to-long v1, p4

    .line 72
    iput-wide v1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellId:J

    .line 74
    :cond_2
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p4

    if-eq p4, v0, :cond_3

    .line 75
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LtePci:I

    .line 77
    :cond_3
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p4

    if-eq p4, v0, :cond_4

    .line 78
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteTac:I

    .line 80
    :cond_4
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p4, v1, :cond_5

    .line 82
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 83
    invoke-virtual {p3}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Arfcn:I

    .line 85
    invoke-static {p3}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a(I)Lcom/startapp/d6;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 87
    iget v1, p3, Lcom/startapp/d6;->band:I

    iput v1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteBand:I

    .line 88
    iget v1, p3, Lcom/startapp/d6;->upload_earfcn:I

    iput v1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteUploadEarfcn:I

    .line 89
    iget v1, p3, Lcom/startapp/d6;->download_earfcn:I

    iput v1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteDownloadEarfcn:I

    .line 90
    iget v1, p3, Lcom/startapp/d6;->upload_frequency:F

    iput v1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteUploadFrequency:F

    .line 91
    iget p3, p3, Lcom/startapp/d6;->download_frequency:F

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteDonwloadFrequency:F

    .line 96
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Dbm:I

    .line 98
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result p3

    if-eq p3, v0, :cond_6

    .line 99
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteTimingAdvance:I

    :cond_6
    const/16 p3, 0x1d

    if-lt p4, p3, :cond_8

    .line 103
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getCqi()I

    move-result p3

    if-eq p3, v0, :cond_7

    .line 105
    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteCqi:I

    .line 107
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRssnr:I

    .line 108
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRsrq:I

    .line 109
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result p1

    iput p1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRssi:I

    goto :goto_3

    .line 111
    :cond_8
    iget-object p3, p0, Lcom/startapp/j8;->G:Ljava/lang/reflect/Field;

    if-eqz p3, :cond_9

    .line 113
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    if-eq p3, v0, :cond_9

    .line 115
    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteCqi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 118
    invoke-static {p3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 121
    :cond_9
    :goto_0
    iget-object p3, p0, Lcom/startapp/j8;->E:Ljava/lang/reflect/Field;

    if-eqz p3, :cond_a

    .line 123
    :try_start_1
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRsrq:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p3

    .line 125
    invoke-static {p3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 128
    :cond_a
    :goto_1
    iget-object p3, p0, Lcom/startapp/j8;->F:Ljava/lang/reflect/Field;

    if-eqz p3, :cond_b

    .line 130
    :try_start_2
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRssnr:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    .line 132
    invoke-static {p3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 135
    :cond_b
    :goto_2
    iget-object p3, p0, Lcom/startapp/j8;->D:Ljava/lang/reflect/Field;

    if-eqz p3, :cond_c

    .line 137
    :try_start_3
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRssi:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 139
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public static synthetic c(Lcom/startapp/j8;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/startapp/j8;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/startapp/j8;->i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/startapp/j8;->i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_9

    const/16 p1, 0x101

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v1, 0x111

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    const/16 v1, 0x511

    goto :goto_0

    :cond_3
    const/16 v1, 0x101

    .line 25
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/startapp/j8;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 26
    iget-object v0, p0, Lcom/startapp/j8;->e:Lcom/startapp/j8$p;

    if-nez v0, :cond_5

    .line 27
    new-instance v0, Lcom/startapp/j8$p;

    invoke-direct {v0, p0}, Lcom/startapp/j8$p;-><init>(Lcom/startapp/j8;)V

    iput-object v0, p0, Lcom/startapp/j8;->e:Lcom/startapp/j8$p;

    .line 30
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/startapp/j8;->e:Lcom/startapp/j8$p;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 33
    iget-object v0, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/startapp/j8;->e:Lcom/startapp/j8$p;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_2

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/startapp/j8;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/j8$p;

    const/4 v3, 0x0

    .line 40
    iget-object v4, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 41
    iget-object v3, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/startapp/j8$p;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    :cond_7
    if-nez v3, :cond_8

    .line 44
    iget-object v3, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    .line 47
    :cond_8
    :try_start_1
    invoke-virtual {v3, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    .line 49
    invoke-static {v4}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {v3, v2, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method public static d(I)Lcom/startapp/networkTest/enums/NetworkTypes;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 101
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 102
    :pswitch_0
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->q:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 103
    :pswitch_1
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->p:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 104
    :pswitch_2
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->u:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 105
    :pswitch_3
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->t:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 106
    :pswitch_4
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->s:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 107
    :pswitch_5
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->l:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 108
    :pswitch_6
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->h:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 128
    :pswitch_7
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->o:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 129
    :pswitch_8
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->g:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 141
    :pswitch_9
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->n:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 142
    :pswitch_a
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->j:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 148
    :pswitch_b
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->m:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 149
    :pswitch_c
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->k:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 150
    :pswitch_d
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->b:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 160
    :pswitch_e
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->f:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 161
    :pswitch_f
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->e:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 162
    :pswitch_10
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->c:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 188
    :pswitch_11
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->r:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 189
    :pswitch_12
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->d:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    .line 199
    :pswitch_13
    sget-object p0, Lcom/startapp/networkTest/enums/NetworkTypes;->i:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static synthetic d(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->B:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private d(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V
    .locals 4

    .line 30
    check-cast p1, Landroid/telephony/CellInfoNr;

    .line 32
    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->isRegistered()Z

    move-result v0

    iput-boolean v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->IsRegistered:Z

    .line 33
    sget-object v0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->d:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    iput-object v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellNetworkType:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    .line 34
    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getTimeStamp()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellInfoAge:J

    .line 36
    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p3

    .line 37
    instance-of p4, p3, Landroid/telephony/CellIdentityNr;

    if-eqz p4, :cond_1

    .line 39
    check-cast p3, Landroid/telephony/CellIdentityNr;

    .line 40
    invoke-virtual {p3}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Arfcn:I

    .line 41
    invoke-virtual {p3}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LtePci:I

    .line 42
    invoke-virtual {p3}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->LteTac:I

    .line 43
    invoke-virtual {p3}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellId:J

    .line 45
    invoke-virtual {p3}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p3}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Mcc:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 49
    invoke-static {p4}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p3}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 54
    :try_start_1
    invoke-virtual {p3}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Mnc:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p3

    .line 56
    invoke-static {p3}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 62
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object p1

    .line 63
    instance-of p3, p1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz p3, :cond_2

    .line 65
    check-cast p1, Landroid/telephony/CellSignalStrengthNr;

    .line 66
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Dbm:I

    .line 67
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getCsiRsrp()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->NrCsiRsrp:I

    .line 68
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getCsiRsrq()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->NrCsiRsrq:I

    .line 69
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getCsiSinr()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->NrCsiSinr:I

    .line 70
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->NrSsRsrp:I

    .line 71
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrq()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->NrSsRsrq:I

    .line 72
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result p1

    iput p1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->NrSsSinr:I

    :cond_2
    return-void
.end method

.method private d(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/startapp/j8;->i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/startapp/j8;->i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/startapp/j8;->e:Lcom/startapp/j8$p;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/startapp/j8;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/j8$p;

    const/4 v2, 0x0

    .line 22
    iget-object v3, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 23
    iget-object v2, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/startapp/j8$p;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    :cond_2
    if-nez v2, :cond_3

    .line 26
    iget-object v2, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    .line 29
    :cond_3
    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static synthetic e(Lcom/startapp/j8;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method private static e(I)Lcom/startapp/networkTest/enums/PreferredNetworkTypes;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 32
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->a:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 33
    :pswitch_0
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->I:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 34
    :pswitch_1
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->H:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 35
    :pswitch_2
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->G:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 36
    :pswitch_3
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->F:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 37
    :pswitch_4
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->E:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 38
    :pswitch_5
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->D:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 39
    :pswitch_6
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->C:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 40
    :pswitch_7
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->B:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 41
    :pswitch_8
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->A:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 42
    :pswitch_9
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->z:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 43
    :pswitch_a
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->y:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 44
    :pswitch_b
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->x:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 45
    :pswitch_c
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->w:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 46
    :pswitch_d
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->v:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 47
    :pswitch_e
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->u:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 48
    :pswitch_f
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->t:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 49
    :pswitch_10
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->s:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 50
    :pswitch_11
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->r:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 51
    :pswitch_12
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->q:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 52
    :pswitch_13
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->p:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 53
    :pswitch_14
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->o:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 54
    :pswitch_15
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->n:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 55
    :pswitch_16
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->m:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 56
    :pswitch_17
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->l:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 57
    :pswitch_18
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->k:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 58
    :pswitch_19
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->j:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 59
    :pswitch_1a
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->i:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 60
    :pswitch_1b
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->h:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 61
    :pswitch_1c
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->g:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 62
    :pswitch_1d
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->f:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 63
    :pswitch_1e
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->e:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 64
    :pswitch_1f
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->d:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 65
    :pswitch_20
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->c:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    .line 66
    :pswitch_21
    sget-object p0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->b:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method private e(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V
    .locals 4

    .line 2
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    .line 4
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->isRegistered()Z

    move-result v0

    iput-boolean v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->IsRegistered:Z

    .line 5
    sget-object v0, Lcom/startapp/networkTest/enums/CellNetworkTypes;->b:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    iput-object v0, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellNetworkType:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    .line 6
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getTimeStamp()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellInfoAge:J

    .line 8
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result p4

    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    .line 10
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Mcc:I

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result p4

    if-eq p4, v0, :cond_1

    .line 13
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Mnc:I

    .line 15
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p4

    if-eq p4, v0, :cond_2

    .line 16
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Cid:I

    int-to-long v1, p4

    .line 17
    iput-wide v1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->CellId:J

    .line 19
    :cond_2
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p4

    if-eq p4, v0, :cond_3

    .line 20
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Lac:I

    .line 22
    :cond_3
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p4

    if-eq p4, v0, :cond_4

    .line 23
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p4

    iput p4, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Psc:I

    .line 25
    :cond_4
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p4, v1, :cond_5

    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result p4

    if-eq p4, v0, :cond_5

    .line 26
    invoke-virtual {p3}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result p3

    iput p3, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Arfcn:I

    .line 29
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p1

    iput p1, p2, Lcom/startapp/networkTest/data/radio/CellInfo;->Dbm:I

    return-void
.end method

.method public static synthetic f(Lcom/startapp/j8;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private static f(I)Lcom/startapp/networkTest/enums/CellConnectionStatus;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 3
    sget-object p0, Lcom/startapp/networkTest/enums/CellConnectionStatus;->d:Lcom/startapp/networkTest/enums/CellConnectionStatus;

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/startapp/networkTest/enums/CellConnectionStatus;->c:Lcom/startapp/networkTest/enums/CellConnectionStatus;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/startapp/networkTest/enums/CellConnectionStatus;->b:Lcom/startapp/networkTest/enums/CellConnectionStatus;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lcom/startapp/networkTest/enums/CellConnectionStatus;->a:Lcom/startapp/networkTest/enums/CellConnectionStatus;

    return-object p0
.end method

.method public static synthetic g(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->K:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static synthetic h(Lcom/startapp/j8;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->w:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static synthetic i(Lcom/startapp/j8;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->P:[I

    return-object p0
.end method

.method public static synthetic j(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->m:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static synthetic k(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->o:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private k(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    invoke-virtual {v0, p1}, Lcom/startapp/y6;->getSimInfoSubId(I)Lcom/startapp/x9;

    move-result-object p1

    iget p1, p1, Lcom/startapp/x9;->SubscriptionId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic l(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->n:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static synthetic m(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->q:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private m()Z
    .locals 5

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-ge v0, v4, :cond_1

    .line 3
    iget-object v0, p0, Lcom/startapp/j8;->O:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/startapp/j8;->O:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static synthetic n(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->r:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static synthetic o(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->s:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static synthetic p(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->t:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static synthetic q(Lcom/startapp/j8;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->y:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private q()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/j8$g;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_e

    iget-object v1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    .line 5
    iget-object v1, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 6
    array-length v2, v1

    if-lez v2, :cond_e

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_e

    aget-object v5, v1, v4

    .line 9
    iget-object v6, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 10
    invoke-virtual {v6, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 12
    new-instance v7, Lcom/startapp/j8$g;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/startapp/j8$g;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    .line 14
    iget-object v8, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 15
    iget-object v9, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 17
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x4

    .line 18
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "ims"

    .line 19
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v10, 0x1

    .line 20
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "supl"

    .line 21
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v10, 0x9

    .line 22
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "xcap"

    .line 23
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v10, 0x2

    .line 24
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "dun"

    .line 25
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v10, 0x5

    .line 26
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "cbs"

    .line 27
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v10, 0x3

    .line 28
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "fota"

    .line 29
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v10, 0xa

    .line 30
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "emergency"

    .line 31
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v10, 0x7

    .line 32
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "ia"

    .line 33
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_7
    invoke-virtual {v6, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "mms"

    .line 35
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v10, 0x8

    .line 36
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "rcs"

    .line 37
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/16 v10, 0x17

    .line 38
    invoke-virtual {v6, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "mcx"

    .line 39
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v10, ","

    .line 41
    invoke-static {v10, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/startapp/j8$g;->d:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 44
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/startapp/j8$g;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    iput v9, v7, Lcom/startapp/j8$g;->a:I

    .line 46
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-static {v8}, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->a(Landroid/net/NetworkInfo$DetailedState;)Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    move-result-object v8

    iput-object v8, v7, Lcom/startapp/j8$g;->k:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    :cond_b
    if-eqz v5, :cond_c

    .line 50
    invoke-static {v6}, Lcom/startapp/b0;->a(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/startapp/j8$g;->e:Ljava/lang/String;

    .line 51
    invoke-static {v6}, Lcom/startapp/b0;->b(Landroid/net/NetworkCapabilities;)I

    move-result v6

    iput v6, v7, Lcom/startapp/j8$g;->g:I

    .line 52
    invoke-static {v5}, Lcom/startapp/b0;->a(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/startapp/j8$g;->f:Ljava/lang/String;

    .line 54
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 57
    :try_start_0
    invoke-static {v5}, Lcom/startapp/eb;->b(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/startapp/j8$g;->h:J

    .line 58
    invoke-static {v5}, Lcom/startapp/eb;->a(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/startapp/j8$g;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 60
    invoke-static {v6}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 62
    :goto_1
    iput-object v5, v7, Lcom/startapp/j8$g;->j:Ljava/lang/String;

    .line 66
    :cond_c
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    return-object v0
.end method

.method public static synthetic r(Lcom/startapp/j8;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->z:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 5
    :try_start_0
    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    const-string v2, "mSignalStrength"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->D:Ljava/lang/reflect/Field;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    :try_start_1
    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    const-string v2, "mRsrq"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->E:Ljava/lang/reflect/Field;

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 14
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 17
    :goto_1
    :try_start_2
    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    const-string v2, "mRssnr"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->F:Ljava/lang/reflect/Field;

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 20
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 23
    :goto_2
    :try_start_3
    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    const-string v2, "mCqi"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->G:Ljava/lang/reflect/Field;

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_3
    return-void
.end method

.method public static synthetic s(Lcom/startapp/j8;)Ljava/lang/reflect/Field;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->A:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private s()V
    .locals 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 4
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    const-string v1, "mIsUsingCarrierAggregation"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->C:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 14
    :try_start_1
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v1, "isUsingCarrierAggregation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->B:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 16
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private t()V
    .locals 4

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    .line 5
    :try_start_0
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v2, "getLteSignalStrength"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->n:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    :try_start_1
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v2, "getLteCqi"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->q:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 17
    :goto_1
    :try_start_2
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v2, "getLteRsrp"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->r:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 23
    :goto_2
    :try_start_3
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v2, "getLteRsrq"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->s:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 29
    :goto_3
    :try_start_4
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v2, "getLteRssnr"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->t:Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 35
    :goto_4
    :try_start_5
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v2, "getLteDbm"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->o:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 41
    :goto_5
    :try_start_6
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v2, "getDbm"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->m:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 49
    :cond_0
    :goto_6
    :try_start_7
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v2, "getGsmEcno"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->p:Ljava/lang/reflect/Method;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_7
    const/4 v0, 0x1

    .line 56
    :try_start_8
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "mWcdmaRscp"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->w:Ljava/lang/reflect/Field;

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v1

    .line 59
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 62
    :goto_8
    :try_start_9
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "mWcdmaEcio"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->x:Ljava/lang/reflect/Field;

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 69
    :goto_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 71
    :try_start_a
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "mNrRsrp"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->y:Ljava/lang/reflect/Field;

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception v1

    .line 74
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 77
    :goto_a
    :try_start_b
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "mNrRsrq"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->z:Ljava/lang/reflect/Field;

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception v1

    .line 80
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 83
    :goto_b
    :try_start_c
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "mNrRssnr"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->A:Ljava/lang/reflect/Field;

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_c

    :catchall_c
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_c
    return-void
.end method

.method public static synthetic t(Lcom/startapp/j8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startapp/j8;->z()V

    return-void
.end method

.method public static synthetic u(Lcom/startapp/j8;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->p:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private u()V
    .locals 7

    const-string v0, "getVoiceNetworkType"

    const-string v1, "getDataEnabled"

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/startapp/j8;->H:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 4
    invoke-static {v3}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x1

    .line 9
    :try_start_1
    iget-object v4, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->I:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 11
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 15
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "isNetworkRoaming"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->J:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 17
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 21
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getNetworkType"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->K:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    .line 23
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 27
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getNetworkOperatorName"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->L:Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    .line 29
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 33
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getNetworkOperator"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->M:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v1

    .line 35
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 39
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getNetworkOperatorForSubscription"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/j8;->N:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v1

    .line 41
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 46
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    iput-object v1, p0, Lcom/startapp/j8;->u:Ljava/lang/reflect/Method;

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v1

    .line 52
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 56
    :cond_0
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iput-object v0, p0, Lcom/startapp/j8;->v:Ljava/lang/reflect/Method;

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_8
    return-void
.end method

.method public static synthetic v(Lcom/startapp/j8;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    return-object p0
.end method

.method private v()V
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/startapp/j8$a;

    invoke-direct {v0, p0}, Lcom/startapp/j8$a;-><init>(Lcom/startapp/j8;)V

    iput-object v0, p0, Lcom/startapp/j8;->i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    :cond_0
    return-void
.end method

.method private w()V
    .locals 4

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/startapp/j8;->P:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    aget v1, v1, v0

    iget-object v3, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic w(Lcom/startapp/j8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startapp/j8;->w()V

    return-void
.end method

.method private z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/p2;->f(Landroid/content/Context;)Lcom/startapp/y6;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    .line 2
    iget-object v0, v0, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/startapp/x9;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/x9;

    .line 3
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 5
    aget-object v3, v0, v2

    .line 6
    iget v3, v3, Lcom/startapp/x9;->SubscriptionId:I

    .line 7
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-object v1, p0, Lcom/startapp/j8;->P:[I

    return-void
.end method


# virtual methods
.method public a([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/ThreeStateShort;
    .locals 5

    if-eqz p1, :cond_1

    .line 426
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 428
    iget-object v3, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Domain:Ljava/lang/String;

    const-string v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    iget-object p1, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_1
    sget-object p1, Lcom/startapp/networkTest/enums/ThreeStateShort;->c:Lcom/startapp/networkTest/enums/ThreeStateShort;

    return-object p1
.end method

.method public a(Lcom/startapp/k8;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/startapp/j8;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/startapp/j8;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/startapp/j8;->a:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/g9;

    new-instance v2, Lcom/startapp/j8$d;

    invoke-direct {v2, p0, p1}, Lcom/startapp/j8$d;-><init>(Lcom/startapp/j8;Lcom/startapp/k8;)V

    invoke-direct {v1, v2}, Lcom/startapp/g9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a()[Lcom/startapp/networkTest/data/radio/ApnInfo;
    .locals 7

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-direct {p0}, Lcom/startapp/j8;->q()Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/j8$g;

    .line 110
    new-instance v3, Lcom/startapp/networkTest/data/radio/ApnInfo;

    invoke-direct {v3}, Lcom/startapp/networkTest/data/radio/ApnInfo;-><init>()V

    .line 111
    iget-object v4, v2, Lcom/startapp/j8$g;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->Apn:Ljava/lang/String;

    .line 112
    iget-wide v4, v2, Lcom/startapp/j8$g;->h:J

    iput-wide v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->TxBytes:J

    .line 113
    iget-wide v4, v2, Lcom/startapp/j8$g;->i:J

    iput-wide v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->RxBytes:J

    .line 114
    iget-object v4, v2, Lcom/startapp/j8$g;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->ApnTypes:Ljava/lang/String;

    .line 115
    iget-object v4, v2, Lcom/startapp/j8$g;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->Capabilities:Ljava/lang/String;

    .line 116
    iget v4, v2, Lcom/startapp/j8$g;->g:I

    iput v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->SubscriptionId:I

    .line 117
    iget-object v4, v2, Lcom/startapp/j8$g;->f:Ljava/lang/String;

    iput-object v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->PcscfAddresses:Ljava/lang/String;

    .line 118
    iget-object v4, v2, Lcom/startapp/j8$g;->k:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    iput-object v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 119
    iget v4, v2, Lcom/startapp/j8$g;->a:I

    invoke-static {v4}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v4

    iput-object v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 120
    iget-object v4, p0, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    iget v5, v2, Lcom/startapp/j8$g;->g:I

    iget-object v6, v2, Lcom/startapp/j8$g;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/startapp/j8$j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->Reason:Ljava/lang/String;

    .line 122
    iget-object v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->ApnTypes:Ljava/lang/String;

    const-string v5, "ims"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    iget v2, v2, Lcom/startapp/j8$g;->g:I

    invoke-virtual {v4, v2}, Lcom/startapp/j8$j;->c(I)Lcom/startapp/j8$m;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    iget v4, v2, Lcom/startapp/j8$m;->a:I

    iput v4, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->SamsungSipError:I

    .line 126
    iget-object v2, v2, Lcom/startapp/j8$m;->b:Ljava/lang/String;

    iput-object v2, v3, Lcom/startapp/networkTest/data/radio/ApnInfo;->SamsungImsServices:Ljava/lang/String;

    .line 130
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/startapp/networkTest/data/radio/ApnInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/data/radio/ApnInfo;

    return-object v0
.end method

.method public a(Z)[Lcom/startapp/networkTest/data/radio/CellInfo;
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x1d

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    goto/16 :goto_4

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v3, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_c

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_c

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/startapp/j8;->l:Ljava/util/List;

    if-nez p1, :cond_4

    .line 21
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/startapp/j8;->l:Ljava/util/List;

    if-eqz p1, :cond_3

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/startapp/j8;->l:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object p1, v4

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    new-array p1, v1, [Lcom/startapp/networkTest/data/radio/CellInfo;

    return-object p1

    .line 37
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 41
    new-instance v5, Lcom/startapp/networkTest/data/radio/CellInfo;

    invoke-direct {v5}, Lcom/startapp/networkTest/data/radio/CellInfo;-><init>()V

    .line 43
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_6

    .line 44
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v7

    invoke-static {v7}, Lcom/startapp/j8;->f(I)Lcom/startapp/networkTest/enums/CellConnectionStatus;

    move-result-object v7

    iput-object v7, v5, Lcom/startapp/networkTest/data/radio/CellInfo;->CellConnectionStatus:Lcom/startapp/networkTest/enums/CellConnectionStatus;

    .line 47
    :cond_6
    instance-of v7, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v7, :cond_7

    .line 49
    invoke-direct {p0, v1, v5, v3, v4}, Lcom/startapp/j8;->b(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V

    goto :goto_3

    .line 51
    :cond_7
    instance-of v7, v1, Landroid/telephony/CellInfoLte;

    if-eqz v7, :cond_8

    .line 53
    invoke-direct {p0, v1, v5, v3, v4}, Lcom/startapp/j8;->c(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V

    goto :goto_3

    .line 55
    :cond_8
    instance-of v7, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v7, :cond_9

    .line 57
    invoke-direct {p0, v1, v5, v3, v4}, Lcom/startapp/j8;->e(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V

    goto :goto_3

    .line 59
    :cond_9
    instance-of v7, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v7, :cond_a

    .line 61
    invoke-direct {p0, v1, v5, v3, v4}, Lcom/startapp/j8;->a(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V

    goto :goto_3

    :cond_a
    if-lt v6, v2, :cond_b

    .line 63
    instance-of v6, v1, Landroid/telephony/CellInfoNr;

    if-eqz v6, :cond_b

    .line 66
    :try_start_1
    invoke-direct {p0, v1, v5, v3, v4}, Lcom/startapp/j8;->d(Landroid/telephony/CellInfo;Lcom/startapp/networkTest/data/radio/CellInfo;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 68
    invoke-static {v1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 72
    :cond_b
    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/startapp/networkTest/data/radio/CellInfo;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/startapp/networkTest/data/radio/CellInfo;

    return-object p1

    :cond_d
    :goto_4
    new-array p1, v1, [Lcom/startapp/networkTest/data/radio/CellInfo;

    return-object p1
.end method

.method public b([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/NetworkTypes;
    .locals 5

    if-eqz p1, :cond_1

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 94
    iget-object v3, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Domain:Ljava/lang/String;

    const-string v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    iget-object p1, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->NetworkTechnology:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/j8;->a(Ljava/lang/String;)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    sget-object p1, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object p1
.end method

.method public b()Lcom/startapp/y6;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    return-object v0
.end method

.method public b(Lcom/startapp/k8;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/startapp/j8;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/startapp/j8;->a:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/g9;

    new-instance v2, Lcom/startapp/j8$e;

    invoke-direct {v2, p0, p1}, Lcom/startapp/j8$e;-><init>(Lcom/startapp/j8;Lcom/startapp/k8;)V

    invoke-direct {v1, v2}, Lcom/startapp/g9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public c([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_1

    .line 140
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 142
    iget-object v3, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Domain:Ljava/lang/String;

    const-string v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->TransportType:Ljava/lang/String;

    const-string v4, "WWAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object p1, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->NrState:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown"

    return-object p1
.end method

.method public c()[Lcom/startapp/networkTest/data/radio/CellInfo;
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/startapp/j8;->a(Z)[Lcom/startapp/networkTest/data/radio/CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/startapp/networkTest/enums/ConnectionTypes;
    .locals 3

    .line 73
    sget-object v0, Lcom/startapp/networkTest/enums/ConnectionTypes;->a:Lcom/startapp/networkTest/enums/ConnectionTypes;

    .line 75
    iget-object v1, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 77
    iget-object v1, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 80
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lcom/startapp/networkTest/enums/ConnectionTypes;->c:Lcom/startapp/networkTest/enums/ConnectionTypes;

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/startapp/networkTest/enums/ConnectionTypes;->b:Lcom/startapp/networkTest/enums/ConnectionTypes;

    goto :goto_0

    .line 98
    :cond_2
    sget-object v0, Lcom/startapp/networkTest/enums/ConnectionTypes;->f:Lcom/startapp/networkTest/enums/ConnectionTypes;

    goto :goto_0

    .line 99
    :cond_3
    sget-object v0, Lcom/startapp/networkTest/enums/ConnectionTypes;->e:Lcom/startapp/networkTest/enums/ConnectionTypes;

    goto :goto_0

    .line 100
    :cond_4
    sget-object v0, Lcom/startapp/networkTest/enums/ConnectionTypes;->d:Lcom/startapp/networkTest/enums/ConnectionTypes;

    :cond_5
    :goto_0
    return-object v0
.end method

.method public d([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/ThreeStateShort;
    .locals 5

    if-eqz p1, :cond_1

    .line 200
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 202
    iget-object v3, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Domain:Ljava/lang/String;

    const-string v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->TransportType:Ljava/lang/String;

    const-string v4, "WWAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    iget-object p1, v2, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->NrAvailable:Lcom/startapp/networkTest/enums/ThreeStateShort;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    sget-object p1, Lcom/startapp/networkTest/enums/ThreeStateShort;->c:Lcom/startapp/networkTest/enums/ThreeStateShort;

    return-object p1
.end method

.method public e()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "[",
            "Lcom/startapp/networkTest/data/radio/ApnInfo;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/threads/ThreadManager;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/startapp/j8$c;

    invoke-direct {v1, p0}, Lcom/startapp/j8$c;-><init>(Lcom/startapp/j8;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "[",
            "Lcom/startapp/networkTest/data/radio/CellInfo;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/threads/ThreadManager;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/startapp/j8$b;

    invoke-direct {v1, p0}, Lcom/startapp/j8$b;-><init>(Lcom/startapp/j8;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/startapp/networkTest/data/RadioInfo;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v1, p0

    .line 2
    new-instance v2, Lcom/startapp/networkTest/data/RadioInfo;

    invoke-direct {v2}, Lcom/startapp/networkTest/data/RadioInfo;-><init>()V

    .line 4
    iget-object v0, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_22

    .line 7
    iget-object v0, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/startapp/j8;->a(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    if-eqz v0, :cond_0

    .line 10
    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->PreferredNetwork:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 15
    :try_start_0
    iget-object v0, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_1

    .line 29
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->e:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    .line 43
    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->b:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    goto :goto_0

    .line 31
    :cond_2
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->d:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    goto :goto_0

    .line 34
    :cond_3
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->c:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    goto :goto_0

    .line 37
    :cond_4
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->a:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 51
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/startapp/j8;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/startapp/networkTest/enums/FlightModeStates;->b:Lcom/startapp/networkTest/enums/FlightModeStates;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/startapp/networkTest/enums/FlightModeStates;->c:Lcom/startapp/networkTest/enums/FlightModeStates;

    :goto_1
    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->FlightMode:Lcom/startapp/networkTest/enums/FlightModeStates;

    .line 54
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->a:Lcom/startapp/networkTest/enums/ThreeState;

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataEnabled:Lcom/startapp/networkTest/enums/ThreeState;

    .line 55
    iget-object v0, v1, Lcom/startapp/j8;->H:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 57
    :try_start_1
    iget-object v6, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->b:Lcom/startapp/networkTest/enums/ThreeState;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->c:Lcom/startapp/networkTest/enums/ThreeState;

    :goto_2
    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataEnabled:Lcom/startapp/networkTest/enums/ThreeState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 64
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    const-string v7, "mobile_data"

    if-lt v0, v6, :cond_9

    .line 66
    :try_start_2
    iget-object v0, v1, Lcom/startapp/j8;->O:Landroid/content/ContentResolver;

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 67
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->b:Lcom/startapp/networkTest/enums/ThreeState;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->c:Lcom/startapp/networkTest/enums/ThreeState;

    :goto_3
    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataEnabled:Lcom/startapp/networkTest/enums/ThreeState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 73
    :cond_9
    :try_start_3
    iget-object v0, v1, Lcom/startapp/j8;->O:Landroid/content/ContentResolver;

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 74
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->b:Lcom/startapp/networkTest/enums/ThreeState;

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->c:Lcom/startapp/networkTest/enums/ThreeState;

    :goto_4
    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataEnabled:Lcom/startapp/networkTest/enums/ThreeState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 82
    :goto_5
    iget-object v0, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    iput-boolean v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->IsRoaming:Z

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/j8;->o()Lcom/startapp/networkTest/enums/ThreeStateShort;

    move-result-object v0

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->IsMetered:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/j8;->n()Lcom/startapp/networkTest/enums/ThreeStateShort;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/f2;->a(Lcom/startapp/networkTest/enums/ThreeStateShort;)I

    move-result v0

    iput v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->IsVpn:I

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/j8;->d()Lcom/startapp/networkTest/enums/ConnectionTypes;

    move-result-object v0

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->ConnectionType:Lcom/startapp/networkTest/enums/ConnectionTypes;

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v0, v6, :cond_b

    iget-object v0, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/c8;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 96
    :cond_b
    :try_start_4
    iget-object v0, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v0

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 98
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 103
    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->OperatorName:Ljava/lang/String;

    .line 106
    iget-object v0, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_d

    .line 108
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->MCC:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MNC:Ljava/lang/String;

    :cond_d
    const/4 v0, -0x1

    .line 112
    invoke-virtual {v1, v0}, Lcom/startapp/j8;->g(I)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    move-result-object v4

    .line 115
    iget-object v6, v1, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v6, v0}, Lcom/startapp/j8$j;->a(I)Lcom/startapp/j8$h;

    move-result-object v6

    if-nez v6, :cond_e

    .line 117
    new-instance v6, Lcom/startapp/j8$h;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/startapp/j8$h;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    .line 119
    :cond_e
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-ge v7, v8, :cond_f

    iget-object v7, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    iget-object v7, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_11

    .line 120
    :cond_10
    iget-object v5, v6, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    if-nez v5, :cond_12

    .line 121
    iget-object v5, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    iput-object v5, v6, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    goto :goto_7

    .line 124
    :cond_11
    iput-boolean v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->MissingPermission:Z

    .line 127
    :cond_12
    :goto_7
    iget-object v5, v6, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    const-wide/16 v7, 0x0

    const v9, 0x7fffffff

    const-wide/32 v10, 0x7fffffff

    const-string v12, ""

    if-eqz v5, :cond_16

    .line 128
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v13, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 129
    iget-object v5, v6, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 130
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmLAC:Ljava/lang/String;

    .line 131
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    .line 132
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->PrimaryScramblingCode:Ljava/lang/String;

    goto :goto_8

    .line 133
    :cond_13
    iget-object v5, v6, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v13, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 134
    iget-object v5, v6, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .line 135
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationId:Ljava/lang/String;

    .line 136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationLatitude:Ljava/lang/String;

    .line 137
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationLongitude:Ljava/lang/String;

    .line 138
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaNetworkId:Ljava/lang/String;

    .line 139
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaSystemId:Ljava/lang/String;

    .line 141
    :cond_14
    :goto_8
    iget-wide v13, v6, Lcom/startapp/j8$h;->b:J

    cmp-long v5, v13, v7

    if-lez v5, :cond_18

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-wide v5, v6, Lcom/startapp/j8$h;->b:J

    sub-long/2addr v13, v5

    cmp-long v5, v13, v10

    if-lez v5, :cond_15

    const v5, 0x7fffffff

    goto :goto_9

    :cond_15
    long-to-int v5, v13

    .line 143
    :goto_9
    iput v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellIdAge:I

    goto :goto_b

    :cond_16
    if-eqz v4, :cond_18

    .line 148
    array-length v5, v4

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_18

    aget-object v13, v4, v6

    .line 149
    iget-object v14, v13, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Domain:Ljava/lang/String;

    const-string v15, "CS"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 150
    iget-object v14, v13, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->CellId:Ljava/lang/String;

    iput-object v14, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    .line 151
    iget-object v15, v13, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Tac:Ljava/lang/String;

    iput-object v15, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmLAC:Ljava/lang/String;

    .line 152
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_17

    .line 153
    iget v13, v13, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Age:I

    iput v13, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellIdAge:I

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 160
    :cond_18
    :goto_b
    iget-object v5, v1, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v5, v0}, Lcom/startapp/j8$j;->d(I)Lcom/startapp/j8$n;

    move-result-object v5

    .line 163
    iget-object v6, v5, Lcom/startapp/j8$n;->a:Lcom/startapp/networkTest/enums/ServiceStates;

    iput-object v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->ServiceState:Lcom/startapp/networkTest/enums/ServiceStates;

    .line 165
    iget-object v6, v5, Lcom/startapp/j8$n;->c:Lcom/startapp/networkTest/enums/DuplexMode;

    iput-object v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->DuplexMode:Lcom/startapp/networkTest/enums/DuplexMode;

    .line 167
    iget-object v6, v5, Lcom/startapp/j8$n;->d:Lcom/startapp/networkTest/enums/ThreeStateShort;

    iput-object v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->ManualSelection:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 169
    iget-object v6, v5, Lcom/startapp/j8$n;->f:Lcom/startapp/networkTest/enums/ThreeStateShort;

    iput-object v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 171
    iget v6, v5, Lcom/startapp/j8$n;->e:I

    iput v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->ARFCN:I

    .line 173
    iget-wide v13, v5, Lcom/startapp/j8$n;->b:J

    cmp-long v6, v13, v7

    if-lez v6, :cond_1a

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v13, v5, Lcom/startapp/j8$n;->b:J

    sub-long/2addr v6, v13

    cmp-long v5, v6, v10

    if-lez v5, :cond_19

    const v5, 0x7fffffff

    goto :goto_c

    :cond_19
    long-to-int v5, v6

    .line 175
    :goto_c
    iput v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->ServiceStateAge:I

    .line 178
    :cond_1a
    invoke-virtual {v1, v4}, Lcom/startapp/j8;->c([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->NrState:Ljava/lang/String;

    .line 179
    invoke-virtual {v1, v4}, Lcom/startapp/j8;->d([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/ThreeStateShort;

    move-result-object v5

    iput-object v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->NrAvailable:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 181
    iget-object v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    sget-object v6, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v5, v6, :cond_1b

    .line 182
    invoke-virtual {v1, v4}, Lcom/startapp/j8;->b([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v5

    iput-object v5, v2, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 186
    :cond_1b
    iget-object v5, v1, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v5, v0}, Lcom/startapp/j8$j;->e(I)Lcom/startapp/j8$o;

    move-result-object v5

    .line 188
    iget v6, v5, Lcom/startapp/j8$o;->j:I

    iput v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->RSCP:I

    .line 189
    iget v6, v5, Lcom/startapp/j8$o;->c:I

    iput v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaEcIo:I

    .line 190
    iget v6, v5, Lcom/startapp/j8$o;->a:I

    iput v6, v2, Lcom/startapp/networkTest/data/RadioInfo;->RXLevel:I

    .line 191
    iget v7, v5, Lcom/startapp/j8$o;->b:I

    iput v7, v2, Lcom/startapp/networkTest/data/RadioInfo;->NativeDbm:I

    .line 194
    iget v7, v5, Lcom/startapp/j8$o;->i:I

    iput v7, v2, Lcom/startapp/networkTest/data/RadioInfo;->EcN0:I

    .line 195
    iget v7, v5, Lcom/startapp/j8$o;->d:I

    iput v7, v2, Lcom/startapp/networkTest/data/RadioInfo;->LteCqi:I

    .line 196
    iget v7, v5, Lcom/startapp/j8$o;->e:I

    iput v7, v2, Lcom/startapp/networkTest/data/RadioInfo;->LteRsrp:I

    .line 197
    iget v8, v5, Lcom/startapp/j8$o;->g:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->LteRsrq:I

    .line 198
    iget v8, v5, Lcom/startapp/j8$o;->f:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->LteRssnr:I

    .line 199
    iget v8, v5, Lcom/startapp/j8$o;->h:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->LteRssi:I

    .line 202
    iget v8, v5, Lcom/startapp/j8$o;->l:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->NrCsiRsrp:I

    .line 203
    iget v8, v5, Lcom/startapp/j8$o;->m:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->NrCsiRsrq:I

    .line 204
    iget v8, v5, Lcom/startapp/j8$o;->n:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->NrCsiSinr:I

    .line 205
    iget v8, v5, Lcom/startapp/j8$o;->o:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->NrSsRsrp:I

    .line 206
    iget v8, v5, Lcom/startapp/j8$o;->p:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->NrSsRsrq:I

    .line 207
    iget v8, v5, Lcom/startapp/j8$o;->q:I

    iput v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->NrSsSinr:I

    .line 210
    iget-object v8, v2, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    sget-object v13, Lcom/startapp/networkTest/enums/NetworkTypes;->o:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-eq v8, v13, :cond_1c

    sget-object v13, Lcom/startapp/networkTest/enums/NetworkTypes;->p:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v8, v13, :cond_1d

    :cond_1c
    if-le v6, v0, :cond_1d

    .line 211
    iput v7, v2, Lcom/startapp/networkTest/data/RadioInfo;->RXLevel:I

    .line 214
    :cond_1d
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkTypes;->p:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v8, v0, :cond_1e

    .line 215
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 218
    :cond_1e
    iget-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    sget-object v6, Lcom/startapp/networkTest/enums/ThreeStateShort;->c:Lcom/startapp/networkTest/enums/ThreeStateShort;

    if-ne v0, v6, :cond_1f

    .line 219
    invoke-virtual {v1, v4}, Lcom/startapp/j8;->a([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/ThreeStateShort;

    move-result-object v0

    iput-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 222
    :cond_1f
    iget-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    sget-object v4, Lcom/startapp/networkTest/enums/NetworkTypes;->q:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v0, v4, :cond_20

    .line 227
    :try_start_5
    iget-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MCC:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    .line 228
    :try_start_6
    iget-object v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->MNC:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    .line 230
    :goto_d
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 232
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v3, v1, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v3, v0}, Lcom/startapp/j8$j;->a(Ljava/lang/String;)Lcom/startapp/j8$l;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/startapp/j8$l;->a:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/startapp/j8$l;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmLAC:Ljava/lang/String;

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/startapp/j8$l;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/startapp/networkTest/data/RadioInfo;->PrimaryScramblingCode:Ljava/lang/String;

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v6, v0, Lcom/startapp/j8$l;->d:J

    const-wide/32 v12, 0xf4240

    div-long/2addr v6, v12

    sub-long/2addr v3, v6

    long-to-int v0, v3

    iput v0, v2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellIdAge:I

    .line 246
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v5, Lcom/startapp/j8$o;->k:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v10

    if-lez v0, :cond_21

    goto :goto_f

    :cond_21
    long-to-int v9, v3

    .line 247
    :goto_f
    iput v9, v2, Lcom/startapp/networkTest/data/RadioInfo;->RXLevelAge:I

    :cond_22
    return-object v2
.end method

.method public g(I)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;
    .locals 9

    .line 248
    iget-object v0, p0, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v0, p1}, Lcom/startapp/j8$j;->b(I)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 252
    iget-object v2, p0, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v2, p1}, Lcom/startapp/j8$j;->d(I)Lcom/startapp/j8$n;

    move-result-object p1

    .line 254
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz p1, :cond_1

    .line 256
    iget-wide v4, p1, Lcom/startapp/j8$n;->b:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/startapp/j8$n;->b:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    const v4, 0x7fffffff

    goto :goto_1

    :cond_0
    long-to-int v4, v4

    .line 258
    :goto_1
    iput v4, v3, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Age:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-array p1, v1, [Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    return-object p1
.end method

.method public h()Lcom/startapp/networkTest/data/RadioInfo;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    iget v0, v0, Lcom/startapp/y6;->DefaultDataSimId:I

    invoke-virtual {p0, v0}, Lcom/startapp/j8;->h(I)Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Lcom/startapp/networkTest/data/RadioInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/RadioInfo;-><init>()V

    return-object v0
.end method

.method public h(I)Lcom/startapp/networkTest/data/RadioInfo;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2f

    .line 8
    invoke-direct/range {p0 .. p1}, Lcom/startapp/j8;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v0, v4, :cond_2f

    iget-object v0, v1, Lcom/startapp/j8;->P:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_16

    .line 12
    :cond_0
    new-instance v4, Lcom/startapp/networkTest/data/RadioInfo;

    invoke-direct {v4}, Lcom/startapp/networkTest/data/RadioInfo;-><init>()V

    .line 14
    iput v2, v4, Lcom/startapp/networkTest/data/RadioInfo;->SubscriptionId:I

    .line 15
    iget-object v0, v1, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    iget v5, v0, Lcom/startapp/y6;->DefaultVoiceSimId:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v4, Lcom/startapp/networkTest/data/RadioInfo;->IsDefaultVoiceSim:Z

    .line 16
    iget v0, v0, Lcom/startapp/y6;->DefaultDataSimId:I

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->IsDefaultDataSim:Z

    .line 19
    iget-object v0, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/startapp/j8;->a(Landroid/content/Context;I)Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->PreferredNetwork:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    .line 21
    sget-object v5, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;->a:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    if-ne v0, v5, :cond_3

    .line 22
    iget-object v0, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/startapp/j8;->a(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    .line 23
    iget-object v5, v1, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    invoke-virtual {v5, v2}, Lcom/startapp/y6;->getSimInfoSubId(I)Lcom/startapp/x9;

    move-result-object v5

    iget v5, v5, Lcom/startapp/x9;->SimSlotIndex:I

    .line 24
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    if-eqz v0, :cond_3

    .line 26
    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->PreferredNetwork:Lcom/startapp/networkTest/enums/PreferredNetworkTypes;

    .line 30
    :cond_3
    iget-object v0, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2e

    .line 33
    iget-object v0, v1, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 34
    iget-object v0, v1, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v8, v0

    goto :goto_2

    :cond_4
    move-object v8, v5

    :goto_2
    const/4 v9, 0x3

    .line 39
    :try_start_0
    iget-object v0, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_7

    const/4 v10, 0x2

    if-eq v0, v10, :cond_6

    if-eq v0, v9, :cond_5

    .line 53
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->e:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    .line 67
    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    goto :goto_3

    .line 54
    :cond_5
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->b:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    goto :goto_3

    .line 55
    :cond_6
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->d:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    goto :goto_3

    .line 58
    :cond_7
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->c:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    goto :goto_3

    .line 61
    :cond_8
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->a:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 75
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/startapp/j8;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/startapp/networkTest/enums/FlightModeStates;->b:Lcom/startapp/networkTest/enums/FlightModeStates;

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/startapp/networkTest/enums/FlightModeStates;->c:Lcom/startapp/networkTest/enums/FlightModeStates;

    :goto_4
    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->FlightMode:Lcom/startapp/networkTest/enums/FlightModeStates;

    .line 78
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->a:Lcom/startapp/networkTest/enums/ThreeState;

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataEnabled:Lcom/startapp/networkTest/enums/ThreeState;

    if-eqz v8, :cond_b

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-lt v0, v10, :cond_b

    .line 81
    :try_start_1
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->b:Lcom/startapp/networkTest/enums/ThreeState;

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->c:Lcom/startapp/networkTest/enums/ThreeState;

    :goto_5
    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataEnabled:Lcom/startapp/networkTest/enums/ThreeState;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 85
    :cond_b
    iget-object v0, v1, Lcom/startapp/j8;->I:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    .line 87
    :try_start_2
    iget-object v10, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 88
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->b:Lcom/startapp/networkTest/enums/ThreeState;

    goto :goto_6

    :cond_c
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->c:Lcom/startapp/networkTest/enums/ThreeState;

    :goto_6
    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MobileDataEnabled:Lcom/startapp/networkTest/enums/ThreeState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    if-eqz v8, :cond_e

    .line 96
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    iput-boolean v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->IsRoaming:Z

    goto :goto_8

    .line 97
    :cond_e
    iget-object v0, v1, Lcom/startapp/j8;->J:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    .line 99
    :try_start_3
    iget-object v10, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->IsRoaming:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    .line 101
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 106
    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/j8;->o()Lcom/startapp/networkTest/enums/ThreeStateShort;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->IsMetered:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/j8;->n()Lcom/startapp/networkTest/enums/ThreeStateShort;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/f2;->a(Lcom/startapp/networkTest/enums/ThreeStateShort;)I

    move-result v0

    iput v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->IsVpn:I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/j8;->d()Lcom/startapp/networkTest/enums/ConnectionTypes;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->ConnectionType:Lcom/startapp/networkTest/enums/ConnectionTypes;

    if-eqz v8, :cond_11

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1e

    if-lt v0, v10, :cond_10

    iget-object v0, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/c8;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 117
    :cond_10
    :try_start_4
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 118
    invoke-static {v0}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 120
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 122
    :cond_11
    iget-object v0, v1, Lcom/startapp/j8;->K:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_12

    .line 124
    :try_start_5
    iget-object v10, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    .line 127
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_12
    :goto_9
    if-eqz v8, :cond_13

    .line 133
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->OperatorName:Ljava/lang/String;

    goto :goto_a

    .line 135
    :cond_13
    iget-object v0, v1, Lcom/startapp/j8;->L:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    .line 137
    :try_start_6
    iget-object v10, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-static {v0}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->OperatorName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    .line 140
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_14
    :goto_a
    const-string v10, ""

    if-eqz v8, :cond_15

    .line 147
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 148
    :cond_15
    iget-object v0, v1, Lcom/startapp/j8;->N:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_16

    .line 150
    :try_start_7
    iget-object v8, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v0, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    .line 152
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 154
    :cond_16
    iget-object v0, v1, Lcom/startapp/j8;->M:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    .line 156
    :try_start_8
    iget-object v8, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v0, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_17
    :goto_b
    move-object v0, v10

    .line 161
    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x4

    if-le v8, v11, :cond_18

    .line 162
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->MCC:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MNC:Ljava/lang/String;

    .line 166
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/startapp/j8;->g(I)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    move-result-object v0

    .line 169
    iget-object v8, v1, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v8, v2}, Lcom/startapp/j8$j;->a(I)Lcom/startapp/j8$h;

    move-result-object v8

    if-nez v8, :cond_19

    .line 171
    new-instance v8, Lcom/startapp/j8$h;

    invoke-direct {v8, v1, v5}, Lcom/startapp/j8$h;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    .line 173
    :cond_19
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-ge v5, v9, :cond_1a

    iget-object v5, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    iget-object v5, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v5, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, v1, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v9, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v5, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1c

    .line 174
    :cond_1b
    iget-object v5, v8, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    if-nez v5, :cond_1d

    .line 175
    iget-object v5, v1, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    iput-object v5, v8, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    goto :goto_d

    .line 178
    :cond_1c
    iput-boolean v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->MissingPermission:Z

    .line 181
    :cond_1d
    :goto_d
    iget-object v5, v8, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    const-wide/16 v11, 0x0

    const-wide/32 v13, 0x7fffffff

    if-eqz v5, :cond_22

    .line 182
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v9, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 183
    iget-object v5, v8, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmLAC:Ljava/lang/String;

    .line 185
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/startapp/networkTest/data/RadioInfo;->PrimaryScramblingCode:Ljava/lang/String;

    goto :goto_e

    .line 187
    :cond_1e
    iget-object v5, v8, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v9, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 188
    iget-object v5, v8, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationId:Ljava/lang/String;

    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationLatitude:Ljava/lang/String;

    .line 191
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationLongitude:Ljava/lang/String;

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/startapp/networkTest/data/RadioInfo;->CdmaNetworkId:Ljava/lang/String;

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/startapp/networkTest/data/RadioInfo;->CdmaSystemId:Ljava/lang/String;

    .line 195
    :cond_1f
    :goto_e
    iget-wide v6, v8, Lcom/startapp/j8$h;->b:J

    cmp-long v15, v6, v11

    if-lez v15, :cond_21

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v15, v10

    iget-wide v9, v8, Lcom/startapp/j8$h;->b:J

    sub-long/2addr v6, v9

    cmp-long v8, v6, v13

    if-lez v8, :cond_20

    const v7, 0x7fffffff

    goto :goto_f

    :cond_20
    long-to-int v7, v6

    .line 197
    :goto_f
    iput v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellIdAge:I

    goto :goto_11

    :cond_21
    move-object v15, v10

    goto :goto_11

    :cond_22
    move-object v15, v10

    if-eqz v0, :cond_24

    .line 202
    array-length v6, v0

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_24

    aget-object v8, v0, v7

    .line 203
    iget-object v9, v8, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Domain:Ljava/lang/String;

    const-string v10, "CS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 204
    iget-object v9, v8, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->CellId:Ljava/lang/String;

    iput-object v9, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    .line 205
    iget-object v10, v8, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Tac:Ljava/lang/String;

    iput-object v10, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmLAC:Ljava/lang/String;

    .line 206
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_23

    .line 207
    iget v8, v8, Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;->Age:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellIdAge:I

    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 214
    :cond_24
    :goto_11
    iget-object v6, v1, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v6, v2}, Lcom/startapp/j8$j;->d(I)Lcom/startapp/j8$n;

    move-result-object v6

    .line 217
    iget-object v7, v6, Lcom/startapp/j8$n;->a:Lcom/startapp/networkTest/enums/ServiceStates;

    iput-object v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->ServiceState:Lcom/startapp/networkTest/enums/ServiceStates;

    .line 219
    iget-object v7, v6, Lcom/startapp/j8$n;->c:Lcom/startapp/networkTest/enums/DuplexMode;

    iput-object v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->DuplexMode:Lcom/startapp/networkTest/enums/DuplexMode;

    .line 221
    iget-object v7, v6, Lcom/startapp/j8$n;->d:Lcom/startapp/networkTest/enums/ThreeStateShort;

    iput-object v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->ManualSelection:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 223
    iget-object v7, v6, Lcom/startapp/j8$n;->f:Lcom/startapp/networkTest/enums/ThreeStateShort;

    iput-object v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 225
    iget v7, v6, Lcom/startapp/j8$n;->e:I

    iput v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->ARFCN:I

    .line 227
    iget-wide v7, v6, Lcom/startapp/j8$n;->b:J

    cmp-long v9, v7, v11

    if-lez v9, :cond_26

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/startapp/j8$n;->b:J

    sub-long/2addr v7, v9

    cmp-long v6, v7, v13

    if-lez v6, :cond_25

    const v6, 0x7fffffff

    goto :goto_12

    :cond_25
    long-to-int v6, v7

    .line 229
    :goto_12
    iput v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->ServiceStateAge:I

    .line 232
    :cond_26
    invoke-virtual {v1, v0}, Lcom/startapp/j8;->c([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->NrState:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v0}, Lcom/startapp/j8;->d([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/ThreeStateShort;

    move-result-object v6

    iput-object v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->NrAvailable:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 235
    iget-object v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    sget-object v7, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v6, v7, :cond_27

    .line 236
    invoke-virtual {v1, v0}, Lcom/startapp/j8;->b([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v6

    iput-object v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 240
    :cond_27
    iget-object v6, v1, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v6, v2}, Lcom/startapp/j8$j;->e(I)Lcom/startapp/j8$o;

    move-result-object v2

    .line 242
    iget v6, v2, Lcom/startapp/j8$o;->j:I

    iput v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->RSCP:I

    .line 243
    iget v6, v2, Lcom/startapp/j8$o;->c:I

    iput v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->CdmaEcIo:I

    .line 244
    iget v6, v2, Lcom/startapp/j8$o;->a:I

    iput v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->RXLevel:I

    .line 245
    iget v7, v2, Lcom/startapp/j8$o;->b:I

    iput v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->NativeDbm:I

    .line 248
    iget v7, v2, Lcom/startapp/j8$o;->i:I

    iput v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->EcN0:I

    .line 249
    iget v7, v2, Lcom/startapp/j8$o;->d:I

    iput v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->LteCqi:I

    .line 250
    iget v7, v2, Lcom/startapp/j8$o;->e:I

    iput v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->LteRsrp:I

    .line 251
    iget v8, v2, Lcom/startapp/j8$o;->g:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->LteRsrq:I

    .line 252
    iget v8, v2, Lcom/startapp/j8$o;->f:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->LteRssnr:I

    .line 253
    iget v8, v2, Lcom/startapp/j8$o;->h:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->LteRssi:I

    .line 256
    iget v8, v2, Lcom/startapp/j8$o;->l:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->NrCsiRsrp:I

    .line 257
    iget v8, v2, Lcom/startapp/j8$o;->m:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->NrCsiRsrq:I

    .line 258
    iget v8, v2, Lcom/startapp/j8$o;->n:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->NrCsiSinr:I

    .line 259
    iget v8, v2, Lcom/startapp/j8$o;->o:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->NrSsRsrp:I

    .line 260
    iget v8, v2, Lcom/startapp/j8$o;->p:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->NrSsRsrq:I

    .line 261
    iget v8, v2, Lcom/startapp/j8$o;->q:I

    iput v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->NrSsSinr:I

    .line 264
    iget-object v8, v4, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    sget-object v9, Lcom/startapp/networkTest/enums/NetworkTypes;->o:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-eq v8, v9, :cond_28

    sget-object v9, Lcom/startapp/networkTest/enums/NetworkTypes;->p:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v8, v9, :cond_29

    :cond_28
    if-le v6, v3, :cond_29

    .line 265
    iput v7, v4, Lcom/startapp/networkTest/data/RadioInfo;->RXLevel:I

    .line 268
    :cond_29
    sget-object v3, Lcom/startapp/networkTest/enums/NetworkTypes;->p:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v8, v3, :cond_2a

    .line 269
    sget-object v3, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    iput-object v3, v4, Lcom/startapp/networkTest/data/RadioInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 272
    :cond_2a
    iget-object v3, v4, Lcom/startapp/networkTest/data/RadioInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    sget-object v6, Lcom/startapp/networkTest/enums/ThreeStateShort;->c:Lcom/startapp/networkTest/enums/ThreeStateShort;

    if-ne v3, v6, :cond_2b

    .line 273
    invoke-virtual {v1, v0}, Lcom/startapp/j8;->a([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/ThreeStateShort;

    move-result-object v0

    iput-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->CarrierAggregation:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 276
    :cond_2b
    iget-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    sget-object v3, Lcom/startapp/networkTest/enums/NetworkTypes;->q:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v0, v3, :cond_2c

    .line 281
    :try_start_9
    iget-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MCC:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    .line 282
    :try_start_a
    iget-object v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->MNC:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    goto :goto_13

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    .line 284
    :goto_13
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    .line 286
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v3, v1, Lcom/startapp/j8;->h:Lcom/startapp/j8$j;

    invoke-virtual {v3, v0}, Lcom/startapp/j8$j;->a(Ljava/lang/String;)Lcom/startapp/j8$l;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/startapp/j8$l;->a:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/startapp/j8$l;->b:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmLAC:Ljava/lang/String;

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/startapp/j8$l;->c:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/startapp/networkTest/data/RadioInfo;->PrimaryScramblingCode:Ljava/lang/String;

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/startapp/j8$l;->d:J

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    sub-long/2addr v5, v7

    long-to-int v0, v5

    iput v0, v4, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellIdAge:I

    .line 300
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v2, v2, Lcom/startapp/j8$o;->k:J

    sub-long/2addr v5, v2

    cmp-long v0, v5, v13

    if-lez v0, :cond_2d

    const v6, 0x7fffffff

    goto :goto_15

    :cond_2d
    long-to-int v6, v5

    .line 301
    :goto_15
    iput v6, v4, Lcom/startapp/networkTest/data/RadioInfo;->RXLevelAge:I

    :cond_2e
    return-object v4

    .line 302
    :cond_2f
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/j8;->g()Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/startapp/networkTest/data/RadioInfo;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    iget v0, v0, Lcom/startapp/y6;->DefaultSmsSimId:I

    invoke-virtual {p0, v0}, Lcom/startapp/j8;->h(I)Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Lcom/startapp/networkTest/data/RadioInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/RadioInfo;-><init>()V

    return-object v0
.end method

.method public i(I)Lcom/startapp/networkTest/enums/NetworkTypes;
    .locals 4

    .line 8
    invoke-direct {p0, p1}, Lcom/startapp/j8;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/c8;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/startapp/j8;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p1

    .line 14
    invoke-static {p1}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/startapp/j8;->v:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 20
    :try_start_1
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 21
    invoke-static {p1}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/j8;->k()Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object p1

    return-object p1
.end method

.method public j()Lcom/startapp/networkTest/data/RadioInfo;
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/startapp/j8;->j:Lcom/startapp/y6;

    iget v0, v0, Lcom/startapp/y6;->DefaultVoiceSimId:I

    invoke-virtual {p0, v0}, Lcom/startapp/j8;->h(I)Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Lcom/startapp/networkTest/data/RadioInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/RadioInfo;-><init>()V

    return-object v0
.end method

.method public j(I)Z
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/startapp/j8;->J:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p0}, Lcom/startapp/j8;->p()Z

    move-result p1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/j8;->p()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public k()Lcom/startapp/networkTest/enums/NetworkTypes;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/c8;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    .line 9
    invoke-static {v0}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/startapp/j8;->u:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 16
    invoke-static {v0}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()Lcom/startapp/networkTest/enums/ThreeStateShort;
    .locals 3

    .line 2
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeStateShort;->c:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    .line 11
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public o()Lcom/startapp/networkTest/enums/ThreeStateShort;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/startapp/j8;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :goto_0
    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeStateShort;->c:Lcom/startapp/networkTest/enums/ThreeStateShort;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/startapp/j8;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/startapp/j8;->c(Z)V

    .line 2
    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/startapp/j8;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/startapp/j8;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/startapp/j8;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/startapp/j8;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
