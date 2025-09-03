.class public Lcom/startapp/b7;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/b7$c;,
        Lcom/startapp/b7$b;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "b7"

.field private static final o:Z = false

.field private static final p:I = 0x7530

.field private static final q:Ljava/lang/String; = "p3insnir"

.field private static final r:Ljava/lang/String; = "P3INS_PFK_NIR_FIRSTCELLID_LATITUDE"

.field private static final s:Ljava/lang/String; = "P3INS_PFK_NIR_FIRSTCELLID_LONGITUDE"

.field private static final t:Ljava/lang/String; = "P3INS_PFK_NIR_FIRSTCELLID_GSMCELLID"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;

.field private c:Lcom/startapp/b5;

.field private d:Ljava/lang/String;

.field private e:Lcom/startapp/j8;

.field private f:Lcom/startapp/nd;

.field private g:Lcom/startapp/networkTest/controller/LocationController;

.field private h:Landroid/telephony/TelephonyManager;

.field private i:Lcom/startapp/b7$b;

.field private j:Lcom/startapp/b7$c;

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/startapp/b7;->k:I

    .line 12
    iput-object p1, p0, Lcom/startapp/b7;->b:Landroid/content/Context;

    .line 13
    new-instance v1, Lcom/startapp/b5;

    invoke-direct {v1, p1}, Lcom/startapp/b5;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/b7;->c:Lcom/startapp/b5;

    .line 14
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->PROJECT_ID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/b7;->d:Ljava/lang/String;

    const-string v1, "p3insnir"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/b7;->a:Landroid/content/SharedPreferences;

    const-string v0, "phone"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/startapp/b7;->h:Landroid/telephony/TelephonyManager;

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p1}, Lcom/startapp/p2;->i(Landroid/content/Context;)Lcom/startapp/x9;

    move-result-object p1

    iget p1, p1, Lcom/startapp/x9;->SubscriptionId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/startapp/b7;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/b7;->h:Landroid/telephony/TelephonyManager;

    .line 29
    :cond_0
    new-instance p1, Lcom/startapp/j8;

    iget-object v0, p0, Lcom/startapp/b7;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/startapp/j8;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapp/b7;->e:Lcom/startapp/j8;

    .line 30
    new-instance p1, Lcom/startapp/nd;

    iget-object v0, p0, Lcom/startapp/b7;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/startapp/nd;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapp/b7;->f:Lcom/startapp/nd;

    .line 31
    new-instance p1, Lcom/startapp/networkTest/controller/LocationController;

    iget-object v0, p0, Lcom/startapp/b7;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/startapp/networkTest/controller/LocationController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapp/b7;->g:Lcom/startapp/networkTest/controller/LocationController;

    .line 33
    new-instance p1, Lcom/startapp/b7$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/startapp/b7$c;-><init>(Lcom/startapp/b7;Lcom/startapp/b7$a;)V

    iput-object p1, p0, Lcom/startapp/b7;->j:Lcom/startapp/b7$c;

    .line 35
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/y4;->NIR_COLLECT_CELLINFO()Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapp/b7;->m:Z

    .line 36
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/y4;->NIR_COLLECT_CELLINFO_THRESHOLD()I

    move-result p1

    iput p1, p0, Lcom/startapp/b7;->l:I

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/startapp/b7;->l:I

    :cond_1
    return-void
.end method

.method private a()Lcom/startapp/networkTest/enums/voice/CallStates;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/startapp/b7;->h:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/startapp/b7;->b:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->d:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/startapp/b7;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 89
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->d:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 90
    :cond_1
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->a:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 92
    :cond_2
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->b:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 94
    :cond_3
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->c:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 100
    :cond_4
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->d:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0
.end method

.method private a(Lcom/startapp/b7$b;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/startapp/b7;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/startapp/b7$b;->a:Ljava/lang/String;

    const-string v2, "P3INS_PFK_NIR_FIRSTCELLID_GSMCELLID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    iget-object v0, p0, Lcom/startapp/b7;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/startapp/b7$b;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    const-string v3, "P3INS_PFK_NIR_FIRSTCELLID_LATITUDE"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    iget-object v0, p0, Lcom/startapp/b7;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/startapp/b7$b;->c:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    const-string p1, "P3INS_PFK_NIR_FIRSTCELLID_LONGITUDE"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startapp/b7;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_NIR_FIRSTCELLID_GSMCELLID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/startapp/b7;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_NIR_FIRSTCELLID_LATITUDE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 4
    iget-object v0, p0, Lcom/startapp/b7;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_NIR_FIRSTCELLID_LONGITUDE"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 5
    new-instance v0, Lcom/startapp/b7$b;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/startapp/b7$b;-><init>(Lcom/startapp/b7;Ljava/lang/String;DD)V

    iput-object v0, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/networkTest/data/LocationInfo;Lcom/startapp/networkTest/enums/TriggerEvents;Z)Lcom/startapp/networkTest/results/NetworkInformationResult;
    .locals 12

    .line 2
    new-instance v0, Lcom/startapp/networkTest/results/NetworkInformationResult;

    iget-object v1, p0, Lcom/startapp/b7;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapp/b7;->c:Lcom/startapp/b5;

    invoke-virtual {v2}, Lcom/startapp/b5;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/results/NetworkInformationResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/startapp/b7;->g:Lcom/startapp/networkTest/controller/LocationController;

    invoke-virtual {p1}, Lcom/startapp/networkTest/controller/LocationController;->c()Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    .line 11
    :goto_0
    invoke-static {}, Lcom/startapp/ua;->e()Lcom/startapp/networkTest/data/TimeInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;

    .line 12
    iget-object v1, p1, Lcom/startapp/networkTest/data/TimeInfo;->TimestampTableau:Ljava/lang/String;

    iput-object v1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->Timestamp:Ljava/lang/String;

    .line 13
    iget-wide v1, p1, Lcom/startapp/networkTest/data/TimeInfo;->TimestampMillis:J

    iput-wide v1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->timestampMillis:J

    .line 14
    iget-object v1, v0, Lcom/startapp/networkTest/results/BaseResult;->GUID:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/startapp/u3;->a(Lcom/startapp/networkTest/data/TimeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->NirId:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/startapp/b7;->f:Lcom/startapp/nd;

    invoke-virtual {p1}, Lcom/startapp/nd;->c()Lcom/startapp/networkTest/data/WifiInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->WifiInfo:Lcom/startapp/networkTest/data/WifiInfo;

    .line 16
    iput-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->TriggerEvent:Lcom/startapp/networkTest/enums/TriggerEvents;

    .line 17
    iget-object p1, p0, Lcom/startapp/b7;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/startapp/p2;->h(Landroid/content/Context;)Lcom/startapp/networkTest/enums/ScreenStates;

    move-result-object p1

    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->ScreenState:Lcom/startapp/networkTest/enums/ScreenStates;

    .line 18
    invoke-direct {p0}, Lcom/startapp/b7;->a()Lcom/startapp/networkTest/enums/voice/CallStates;

    move-result-object p1

    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CallState:Lcom/startapp/networkTest/enums/voice/CallStates;

    .line 20
    iget-boolean p1, p0, Lcom/startapp/b7;->m:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/startapp/b7;->k:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/startapp/b7;->k:I

    iget p2, p0, Lcom/startapp/b7;->l:I

    rem-int/2addr p1, p2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    .line 21
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/startapp/b7;->e:Lcom/startapp/j8;

    invoke-virtual {p2}, Lcom/startapp/j8;->c()[Lcom/startapp/networkTest/data/radio/CellInfo;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CellInfo:Ljava/util/ArrayList;

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/startapp/b7;->e:Lcom/startapp/j8;

    invoke-virtual {p1}, Lcom/startapp/j8;->h()Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    const-string p1, ""

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object p2, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    if-nez p2, :cond_3

    .line 29
    invoke-direct {p0}, Lcom/startapp/b7;->d()V

    .line 32
    :cond_3
    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p2, p2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x7530

    if-nez p2, :cond_6

    .line 34
    iget-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    iget-wide p1, p1, Lcom/startapp/networkTest/data/LocationInfo;->LocationAge:J

    cmp-long p3, p1, v3

    if-gez p3, :cond_5

    iget-object p1, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/startapp/b7$b;->a:Ljava/lang/String;

    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p2, p2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 35
    :cond_4
    new-instance p1, Lcom/startapp/b7$b;

    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object v5, p2, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    iget-wide v6, p2, Lcom/startapp/networkTest/data/LocationInfo;->LocationLatitude:D

    iget-wide v8, p2, Lcom/startapp/networkTest/data/LocationInfo;->LocationLongitude:D

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/startapp/b7$b;-><init>(Lcom/startapp/b7;Ljava/lang/String;DD)V

    iput-object p1, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    .line 36
    iput-wide v1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CellIdDeltaDistance:D

    .line 37
    invoke-direct {p0, p1}, Lcom/startapp/b7;->a(Lcom/startapp/b7$b;)V

    .line 39
    :cond_5
    iget-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p1, p1, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    goto :goto_1

    .line 42
    :cond_6
    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p2, p2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 44
    iget-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    iget-wide p1, p1, Lcom/startapp/networkTest/data/LocationInfo;->LocationAge:J

    cmp-long p3, p1, v3

    if-gez p3, :cond_8

    iget-object p1, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/startapp/b7$b;->a:Ljava/lang/String;

    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p2, p2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 45
    :cond_7
    new-instance p1, Lcom/startapp/b7$b;

    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object v5, p2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationId:Ljava/lang/String;

    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    iget-wide v6, p2, Lcom/startapp/networkTest/data/LocationInfo;->LocationLatitude:D

    iget-wide v8, p2, Lcom/startapp/networkTest/data/LocationInfo;->LocationLongitude:D

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/startapp/b7$b;-><init>(Lcom/startapp/b7;Ljava/lang/String;DD)V

    iput-object p1, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    .line 46
    iput-wide v1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CellIdDeltaDistance:D

    .line 47
    invoke-direct {p0, p1}, Lcom/startapp/b7;->a(Lcom/startapp/b7$b;)V

    .line 49
    :cond_8
    iget-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p1, p1, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationId:Ljava/lang/String;

    :cond_9
    :goto_1
    move-object v3, p1

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p1, p1, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-wide/high16 p2, -0x4010000000000000L    # -1.0

    if-nez p1, :cond_a

    iget-wide v1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CellIdDeltaDistance:D

    cmpl-double p1, v1, p2

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/startapp/b7$b;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object v1, v1, Lcom/startapp/networkTest/data/RadioInfo;->GsmCellId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    iget-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p1, p1, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    iget-wide v1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CellIdDeltaDistance:D

    cmpl-double p1, v1, p2

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/startapp/b7$b;->a:Ljava/lang/String;

    iget-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object p2, p2, Lcom/startapp/networkTest/data/RadioInfo;->CdmaBaseStationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 55
    :cond_b
    iget-object p1, p0, Lcom/startapp/b7;->i:Lcom/startapp/b7$b;

    iget-wide v4, p1, Lcom/startapp/b7$b;->b:D

    iget-wide v6, p1, Lcom/startapp/b7$b;->c:D

    iget-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    iget-wide v8, p1, Lcom/startapp/networkTest/data/LocationInfo;->LocationLatitude:D

    iget-wide v10, p1, Lcom/startapp/networkTest/data/LocationInfo;->LocationLongitude:D

    invoke-static/range {v4 .. v11}, Lcom/startapp/s2;->a(DDDD)D

    move-result-wide p1

    iput-wide p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CellIdDeltaDistance:D

    .line 58
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/startapp/b7;->j:Lcom/startapp/b7$c;

    iget-object p1, p1, Lcom/startapp/b7$c;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 59
    iget-object p1, p0, Lcom/startapp/b7;->j:Lcom/startapp/b7$c;

    iget-object p2, p1, Lcom/startapp/b7$c;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevNirId:Ljava/lang/String;

    .line 60
    iget-object p2, p1, Lcom/startapp/b7$c;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevCellId:Ljava/lang/String;

    .line 61
    iget-object p2, p1, Lcom/startapp/b7$c;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevLAC:Ljava/lang/String;

    .line 62
    iget-object p2, p1, Lcom/startapp/b7$c;->d:Lcom/startapp/networkTest/enums/NetworkTypes;

    iput-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevNetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 63
    iget-object p2, p1, Lcom/startapp/b7$c;->e:Ljava/lang/String;

    iput-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevMCC:Ljava/lang/String;

    .line 64
    iget-object p2, p1, Lcom/startapp/b7$c;->f:Ljava/lang/String;

    iput-object p2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevMNC:Ljava/lang/String;

    .line 65
    iget p1, p1, Lcom/startapp/b7$c;->g:I

    iput p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevRXLevel:I

    .line 72
    :cond_d
    iget-object v1, p0, Lcom/startapp/b7;->j:Lcom/startapp/b7$c;

    iget-object v2, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->NirId:Ljava/lang/String;

    iget-object p1, v0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object v4, p1, Lcom/startapp/networkTest/data/RadioInfo;->GsmLAC:Ljava/lang/String;

    iget-object v5, p1, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    iget-object v6, p1, Lcom/startapp/networkTest/data/RadioInfo;->MCC:Ljava/lang/String;

    iget-object v7, p1, Lcom/startapp/networkTest/data/RadioInfo;->MNC:Ljava/lang/String;

    iget v8, p1, Lcom/startapp/networkTest/data/RadioInfo;->RXLevel:I

    invoke-virtual/range {v1 .. v8}, Lcom/startapp/b7$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/networkTest/enums/NetworkTypes;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/startapp/networkTest/enums/TriggerEvents;Z)Lcom/startapp/networkTest/results/NetworkInformationResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/b7;->g:Lcom/startapp/networkTest/controller/LocationController;

    invoke-virtual {v0}, Lcom/startapp/networkTest/controller/LocationController;->c()Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/startapp/b7;->a(Lcom/startapp/networkTest/data/LocationInfo;Lcom/startapp/networkTest/enums/TriggerEvents;Z)Lcom/startapp/networkTest/results/NetworkInformationResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/startapp/k8;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/startapp/b7;->e:Lcom/startapp/j8;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/startapp/j8;->a(Lcom/startapp/k8;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/startapp/networkTest/controller/LocationController$c;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/startapp/b7;->g:Lcom/startapp/networkTest/controller/LocationController;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController$c;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/startapp/j8;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/startapp/b7;->e:Lcom/startapp/j8;

    return-object v0
.end method

.method public b(Lcom/startapp/k8;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/b7;->e:Lcom/startapp/j8;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/startapp/j8;->b(Lcom/startapp/k8;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b7;->g:Lcom/startapp/networkTest/controller/LocationController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController$c;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b7;->g:Lcom/startapp/networkTest/controller/LocationController;

    sget-object v1, Lcom/startapp/networkTest/controller/LocationController$ProviderMode;->a:Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    invoke-virtual {v0, v1}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController$ProviderMode;)V

    .line 2
    iget-object v0, p0, Lcom/startapp/b7;->e:Lcom/startapp/j8;

    invoke-virtual {v0}, Lcom/startapp/j8;->x()V

    .line 3
    iget-object v0, p0, Lcom/startapp/b7;->f:Lcom/startapp/nd;

    invoke-virtual {v0}, Lcom/startapp/nd;->f()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/b7;->g:Lcom/startapp/networkTest/controller/LocationController;

    invoke-virtual {v0}, Lcom/startapp/networkTest/controller/LocationController;->f()V

    .line 2
    iget-object v0, p0, Lcom/startapp/b7;->e:Lcom/startapp/j8;

    invoke-virtual {v0}, Lcom/startapp/j8;->y()V

    .line 3
    iget-object v0, p0, Lcom/startapp/b7;->f:Lcom/startapp/nd;

    invoke-virtual {v0}, Lcom/startapp/nd;->g()V

    return-void
.end method
