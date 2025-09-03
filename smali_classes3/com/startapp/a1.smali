.class public Lcom/startapp/a1;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final c:Ljava/lang/String; = "a1"


# instance fields
.field private a:Landroid/os/BatteryManager;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "batterymanager"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/startapp/a1;->a:Landroid/os/BatteryManager;

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/startapp/a1;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/startapp/networkTest/data/BatteryInfo;)V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/startapp/a1;->a:Landroid/os/BatteryManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 167
    iput v0, p1, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryCapacity:I

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/startapp/a1;->a:Landroid/os/BatteryManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 172
    iput v0, p1, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryCurrent:I

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/startapp/a1;->a:Landroid/os/BatteryManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 177
    iput-wide v0, p1, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryRemainingEnergy:J

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Lcom/startapp/networkTest/data/BatteryInfo;
    .locals 9

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/startapp/a1;->b:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    new-instance v0, Lcom/startapp/networkTest/data/BatteryInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/BatteryInfo;-><init>()V

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 12
    iput-boolean v2, v0, Lcom/startapp/networkTest/data/BatteryInfo;->MissingPermission:Z

    return-object v0

    :cond_0
    const-string v3, "status"

    .line 17
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 18
    sget-object v4, Lcom/startapp/networkTest/enums/BatteryStatusStates;->c:Lcom/startapp/networkTest/enums/BatteryStatusStates;

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v3, v8, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 30
    :cond_1
    sget-object v4, Lcom/startapp/networkTest/enums/BatteryStatusStates;->b:Lcom/startapp/networkTest/enums/BatteryStatusStates;

    goto :goto_1

    .line 33
    :cond_2
    sget-object v4, Lcom/startapp/networkTest/enums/BatteryStatusStates;->e:Lcom/startapp/networkTest/enums/BatteryStatusStates;

    goto :goto_1

    .line 34
    :cond_3
    sget-object v4, Lcom/startapp/networkTest/enums/BatteryStatusStates;->d:Lcom/startapp/networkTest/enums/BatteryStatusStates;

    goto :goto_1

    .line 35
    :cond_4
    sget-object v4, Lcom/startapp/networkTest/enums/BatteryStatusStates;->a:Lcom/startapp/networkTest/enums/BatteryStatusStates;

    .line 47
    :goto_1
    iput-object v4, v0, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryStatus:Lcom/startapp/networkTest/enums/BatteryStatusStates;

    const-string v3, "plugged"

    const/4 v4, -0x1

    .line 50
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_7

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_5

    .line 63
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;->c:Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;

    goto :goto_2

    .line 64
    :cond_5
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;->d:Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;

    goto :goto_2

    .line 65
    :cond_6
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;->b:Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;

    goto :goto_2

    .line 66
    :cond_7
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;->a:Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;

    .line 78
    :goto_2
    iput-object v2, v0, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryChargePlug:Lcom/startapp/networkTest/enums/BatteryChargePlugTypes;

    const-string v2, "level"

    .line 81
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    .line 82
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    .line 83
    iput v2, v0, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryLevel:F

    const-string v2, "health"

    .line 86
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v8, :cond_c

    if-eq v2, v6, :cond_b

    if-eq v2, v7, :cond_a

    if-eq v2, v5, :cond_9

    const/4 v3, 0x7

    if-eq v2, v3, :cond_8

    .line 106
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryHealthStates;->f:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    goto :goto_3

    .line 107
    :cond_8
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryHealthStates;->a:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    goto :goto_3

    .line 116
    :cond_9
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryHealthStates;->d:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    goto :goto_3

    .line 117
    :cond_a
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryHealthStates;->b:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    goto :goto_3

    .line 126
    :cond_b
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryHealthStates;->e:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    goto :goto_3

    .line 127
    :cond_c
    sget-object v2, Lcom/startapp/networkTest/enums/BatteryHealthStates;->c:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    .line 140
    :goto_3
    iput-object v2, v0, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryHealth:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    const-string v2, "temperature"

    .line 143
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v4, :cond_d

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v2, v2

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryTemp:Ljava/lang/String;

    :cond_d
    const-string v2, "voltage"

    .line 148
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v4, :cond_e

    .line 150
    iput v2, v0, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryVoltage:I

    :cond_e
    const-string v2, "technology"

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryTechnology:Ljava/lang/String;

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_f

    .line 157
    :try_start_1
    invoke-direct {p0, v0}, Lcom/startapp/a1;->a(Lcom/startapp/networkTest/data/BatteryInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 159
    invoke-static {v1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_f
    :goto_4
    return-object v0
.end method
