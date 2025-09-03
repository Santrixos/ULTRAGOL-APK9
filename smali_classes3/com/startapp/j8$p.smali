.class public Lcom/startapp/j8$p;
.super Landroid/telephony/PhoneStateListener;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Field;

.field private b:I

.field public final synthetic c:Lcom/startapp/j8;


# direct methods
.method public constructor <init>(Lcom/startapp/j8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    .line 2
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/startapp/j8$p;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/startapp/j8;I)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    .line 5
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 14
    iput p2, p0, Lcom/startapp/j8$p;->b:I

    .line 17
    :try_start_0
    const-class p1, Lcom/startapp/j8$p;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "mSubId"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/j8$p;->a:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 19
    iget-object p1, p0, Lcom/startapp/j8$p;->a:Ljava/lang/reflect/Field;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/telephony/CellLocation;I)V
    .locals 5

    .line 442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 444
    new-instance v2, Lcom/startapp/j8$h;

    iget-object v3, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/startapp/j8$h;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    .line 445
    iput-object p1, v2, Lcom/startapp/j8$h;->a:Landroid/telephony/CellLocation;

    .line 446
    iput-wide v0, v2, Lcom/startapp/j8$h;->b:J

    .line 447
    iget-object v0, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->b(Lcom/startapp/j8;)Lcom/startapp/j8$j;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/startapp/j8$j;->a(ILcom/startapp/j8$h;)V

    .line 449
    iget-object v0, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    iget-object v0, v0, Lcom/startapp/j8;->a:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/g9;

    new-instance v2, Lcom/startapp/j8$p$b;

    invoke-direct {v2, p0, p1, p2}, Lcom/startapp/j8$p$b;-><init>(Lcom/startapp/j8$p;Landroid/telephony/CellLocation;I)V

    invoke-direct {v1, v2}, Lcom/startapp/g9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/telephony/ServiceState;I)V
    .locals 5

    .line 54
    new-instance v0, Lcom/startapp/j8$n;

    iget-object v1, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/j8$n;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x19

    if-lt v1, v4, :cond_6

    .line 59
    iget-object v1, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v1}, Lcom/startapp/j8;->c(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v1}, Lcom/startapp/j8;->c(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :goto_0
    iput-object v1, v0, Lcom/startapp/j8$n;->f:Lcom/startapp/networkTest/enums/ThreeStateShort;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 64
    invoke-static {v1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 67
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/startapp/j8$n;->f:Lcom/startapp/networkTest/enums/ThreeStateShort;

    sget-object v4, Lcom/startapp/networkTest/enums/ThreeStateShort;->c:Lcom/startapp/networkTest/enums/ThreeStateShort;

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v1}, Lcom/startapp/j8;->d(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v1}, Lcom/startapp/j8;->d(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v1, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :goto_2
    iput-object v1, v0, Lcom/startapp/j8$n;->f:Lcom/startapp/networkTest/enums/ThreeStateShort;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 73
    invoke-static {v1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 77
    :cond_3
    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_6

    .line 81
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDuplexMode()I

    move-result v1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    .line 90
    sget-object v1, Lcom/startapp/networkTest/enums/DuplexMode;->a:Lcom/startapp/networkTest/enums/DuplexMode;

    goto :goto_4

    .line 91
    :cond_4
    sget-object v1, Lcom/startapp/networkTest/enums/DuplexMode;->c:Lcom/startapp/networkTest/enums/DuplexMode;

    goto :goto_4

    .line 92
    :cond_5
    sget-object v1, Lcom/startapp/networkTest/enums/DuplexMode;->b:Lcom/startapp/networkTest/enums/DuplexMode;

    .line 102
    :goto_4
    iput-object v1, v0, Lcom/startapp/j8$n;->c:Lcom/startapp/networkTest/enums/DuplexMode;

    .line 105
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result v1

    iput v1, v0, Lcom/startapp/j8$n;->e:I

    .line 112
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/startapp/networkTest/enums/ThreeStateShort;->a:Lcom/startapp/networkTest/enums/ThreeStateShort;

    goto :goto_5

    :cond_7
    sget-object v1, Lcom/startapp/networkTest/enums/ThreeStateShort;->b:Lcom/startapp/networkTest/enums/ThreeStateShort;

    :goto_5
    iput-object v1, v0, Lcom/startapp/j8$n;->d:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 116
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v3, :cond_a

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    .line 130
    sget-object v1, Lcom/startapp/networkTest/enums/ServiceStates;->a:Lcom/startapp/networkTest/enums/ServiceStates;

    goto :goto_6

    .line 131
    :cond_8
    sget-object v1, Lcom/startapp/networkTest/enums/ServiceStates;->e:Lcom/startapp/networkTest/enums/ServiceStates;

    goto :goto_6

    .line 132
    :cond_9
    sget-object v1, Lcom/startapp/networkTest/enums/ServiceStates;->b:Lcom/startapp/networkTest/enums/ServiceStates;

    goto :goto_6

    .line 138
    :cond_a
    sget-object v1, Lcom/startapp/networkTest/enums/ServiceStates;->d:Lcom/startapp/networkTest/enums/ServiceStates;

    goto :goto_6

    .line 139
    :cond_b
    sget-object v1, Lcom/startapp/networkTest/enums/ServiceStates;->c:Lcom/startapp/networkTest/enums/ServiceStates;

    .line 151
    :goto_6
    iput-object v1, v0, Lcom/startapp/j8$n;->a:Lcom/startapp/networkTest/enums/ServiceStates;

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/j8$n;->b:J

    .line 155
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/j7;->c(Ljava/lang/String;)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v2}, Lcom/startapp/j8;->b(Lcom/startapp/j8;)Lcom/startapp/j8$j;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/startapp/j8$j;->a(ILcom/startapp/j8$n;)V

    .line 158
    iget-object v0, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->b(Lcom/startapp/j8;)Lcom/startapp/j8$j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/startapp/j8$j;->a(I[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)V

    .line 164
    iget-object v0, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    iget-object v0, v0, Lcom/startapp/j8;->a:Landroid/os/Handler;

    new-instance v1, Lcom/startapp/g9;

    new-instance v2, Lcom/startapp/j8$p$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/startapp/j8$p$a;-><init>(Lcom/startapp/j8$p;Landroid/telephony/ServiceState;I)V

    invoke-direct {v1, v2}, Lcom/startapp/g9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/telephony/SignalStrength;I)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 165
    sget-object v0, Lcom/startapp/networkTest/data/RadioInfo;->INVALID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 172
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 179
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 180
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 181
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 184
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->e(Lcom/startapp/j8;)Landroid/util/SparseArray;

    move-result-object v0

    move/from16 v20, v4

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->e(Lcom/startapp/j8;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 188
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->f(Lcom/startapp/j8;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 191
    :cond_1
    sget-object v21, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 194
    :try_start_0
    iget-object v4, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v4}, Lcom/startapp/j8;->e(Lcom/startapp/j8;)Landroid/util/SparseArray;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v4}, Lcom/startapp/j8;->g(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 195
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->g(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v4}, Lcom/startapp/j8;->f(Lcom/startapp/j8;)Landroid/telephony/TelephonyManager;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v24, v6

    move/from16 v22, v7

    const/4 v6, 0x1

    :try_start_1
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v23, 0x0

    aput-object v25, v7, v23

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    invoke-static {v0}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v0

    goto :goto_1

    :cond_2
    move/from16 v24, v6

    move/from16 v22, v7

    const/4 v6, 0x1

    .line 198
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/startapp/j8;->d(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move-object/from16 v21, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v24, v6

    move/from16 v22, v7

    const/4 v6, 0x1

    .line 203
    :goto_2
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v24, v6

    move/from16 v22, v7

    const/4 v6, 0x1

    .line 204
    :goto_3
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_4
    move-object/from16 v0, v21

    .line 208
    sget-object v4, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    if-ne v0, v4, :cond_3

    .line 209
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->b(Lcom/startapp/j8;)Lcom/startapp/j8$j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/startapp/j8$j;->b(I)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    move-result-object v0

    .line 210
    iget-object v4, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-virtual {v4, v0}, Lcom/startapp/j8;->b([Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v0

    .line 212
    :cond_3
    invoke-static {v0}, Lcom/startapp/j8;->b(Lcom/startapp/networkTest/enums/NetworkTypes;)Lcom/startapp/networkTest/enums/NetworkGenerations;

    move-result-object v4

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v0, v7, :cond_a

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellSignalStrength;

    .line 221
    sget-object v6, Lcom/startapp/networkTest/enums/NetworkGenerations;->a:Lcom/startapp/networkTest/enums/NetworkGenerations;

    move-object/from16 v25, v0

    if-ne v4, v6, :cond_4

    instance-of v0, v7, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v0, :cond_4

    .line 223
    check-cast v7, Landroid/telephony/CellSignalStrengthGsm;

    .line 224
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v5

    :goto_6
    move v0, v5

    move v12, v0

    :goto_7
    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v18, v22

    move/from16 v17, v24

    const/16 v21, 0x1

    goto/16 :goto_8

    .line 231
    :cond_4
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkGenerations;->b:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v4, v0, :cond_6

    instance-of v0, v7, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v0, :cond_6

    .line 233
    check-cast v7, Landroid/telephony/CellSignalStrengthWcdma;

    .line 234
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v12

    .line 235
    sget-object v0, Lcom/startapp/networkTest/data/RadioInfo;->INVALID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v5, v0, :cond_5

    move v5, v12

    :cond_5
    move v0, v5

    goto :goto_7

    .line 243
    :cond_6
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkGenerations;->c:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v4, v0, :cond_7

    instance-of v0, v7, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v0, :cond_7

    .line 245
    check-cast v7, Landroid/telephony/CellSignalStrengthLte;

    .line 246
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v5

    .line 248
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getCqi()I

    move-result v6

    .line 249
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v0

    .line 250
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result v8

    .line 251
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v9

    .line 252
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result v10

    move v12, v5

    move/from16 v7, v19

    const/16 v21, 0x1

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v18

    move/from16 v18, v0

    move v0, v12

    goto :goto_8

    .line 258
    :cond_7
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkGenerations;->d:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v4, v0, :cond_8

    instance-of v0, v7, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v0, :cond_8

    .line 260
    check-cast v7, Landroid/telephony/CellSignalStrengthNr;

    .line 261
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result v5

    .line 263
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getCsiRsrp()I

    move-result v14

    .line 264
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getCsiRsrq()I

    move-result v15

    .line 265
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getCsiSinr()I

    move-result v16

    .line 266
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v17

    .line 267
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrq()I

    move-result v18

    .line 268
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result v19

    goto/16 :goto_6

    :cond_8
    if-ne v4, v6, :cond_9

    .line 274
    instance-of v0, v7, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v0, :cond_9

    .line 276
    check-cast v7, Landroid/telephony/CellSignalStrengthCdma;

    .line 277
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v0

    .line 278
    invoke-virtual {v7}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v5

    move/from16 v20, v0

    goto/16 :goto_6

    :cond_9
    move-object/from16 v0, v25

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_a
    move v0, v5

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v18, v22

    move/from16 v17, v24

    const/16 v21, 0x0

    :goto_8
    if-nez v21, :cond_1c

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 294
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->h(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/startapp/networkTest/enums/NetworkGenerations;->b:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v4, v0, :cond_b

    .line 296
    :try_start_2
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->h(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 298
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 302
    :cond_b
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    if-nez v0, :cond_c

    .line 305
    sget-object v19, Lcom/startapp/networkTest/data/RadioInfo;->INVALID:Ljava/lang/Integer;

    move/from16 v21, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v13, v8, :cond_d

    move v8, v13

    goto :goto_b

    :cond_c
    move/from16 v21, v8

    :cond_d
    if-gez v0, :cond_e

    goto :goto_a

    .line 314
    :cond_e
    invoke-static {v0}, Lcom/startapp/j8;->a(I)I

    move-result v0

    goto :goto_a

    :cond_f
    move/from16 v21, v8

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v8

    move/from16 v20, v8

    :goto_a
    move v8, v13

    move v13, v0

    .line 323
    :goto_b
    :try_start_3
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->j(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 324
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->j(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v19, v8

    move/from16 v22, v9

    const/4 v8, 0x0

    :try_start_4
    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v12, v0

    goto :goto_d

    :catchall_3
    move-exception v0

    goto :goto_c

    :cond_10
    move/from16 v19, v8

    move/from16 v22, v9

    goto :goto_d

    :catchall_4
    move-exception v0

    move/from16 v19, v8

    move/from16 v22, v9

    .line 326
    :goto_c
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 330
    :goto_d
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkGenerations;->c:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v4, v0, :cond_17

    .line 334
    :try_start_5
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->k(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 335
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->k(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    .line 337
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 341
    :cond_11
    :goto_e
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->l(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 343
    :try_start_6
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->l(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    .line 345
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 350
    :cond_12
    :goto_f
    :try_start_7
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->m(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 351
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->m(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move/from16 v17, v0

    goto :goto_10

    :catchall_7
    move-exception v0

    .line 353
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 358
    :cond_13
    :goto_10
    :try_start_8
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->n(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 359
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->n(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move/from16 v18, v0

    goto :goto_11

    :catchall_8
    move-exception v0

    .line 361
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 366
    :cond_14
    :goto_11
    :try_start_9
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->o(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 367
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->o(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    .line 369
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_15
    move/from16 v9, v22

    .line 374
    :goto_12
    :try_start_a
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->p(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 375
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->p(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    move/from16 v22, v9

    const/4 v8, 0x0

    :try_start_b
    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move v8, v0

    goto :goto_15

    :catchall_a
    move-exception v0

    goto :goto_13

    :cond_16
    move/from16 v22, v9

    goto :goto_14

    :catchall_b
    move-exception v0

    move/from16 v22, v9

    .line 377
    :goto_13
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_17
    :goto_14
    move/from16 v8, v21

    :goto_15
    move/from16 v9, v22

    .line 381
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkGenerations;->d:Lcom/startapp/networkTest/enums/NetworkGenerations;

    if-ne v4, v0, :cond_1a

    .line 383
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->q(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 385
    :try_start_c
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->q(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_16

    :catchall_c
    move-exception v0

    .line 387
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 390
    :cond_18
    :goto_16
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->r(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 392
    :try_start_d
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->r(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_17

    :catchall_d
    move-exception v0

    .line 394
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 397
    :cond_19
    :goto_17
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->s(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 399
    :try_start_e
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->s(Lcom/startapp/j8;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    move/from16 v16, v0

    goto :goto_18

    :catchall_e
    move-exception v0

    .line 401
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 409
    :cond_1a
    :goto_18
    :try_start_f
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->u(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 410
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->u(Lcom/startapp/j8;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception v0

    .line 412
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_19
    move/from16 v3, v16

    move/from16 v0, v17

    move/from16 v2, v18

    move/from16 v4, v19

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v16, v11

    move/from16 v11, v20

    goto :goto_1a

    :cond_1c
    move/from16 v21, v8

    move/from16 v22, v9

    move v4, v13

    move/from16 v3, v16

    move/from16 v2, v18

    move v13, v0

    move/from16 v18, v7

    move/from16 v16, v11

    move/from16 v0, v17

    move/from16 v11, v20

    move/from16 v17, v6

    .line 416
    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide/from16 v19, v6

    .line 418
    new-instance v6, Lcom/startapp/j8$o;

    iget-object v7, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    const/4 v1, 0x0

    invoke-direct {v6, v7, v1}, Lcom/startapp/j8$o;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    .line 419
    iput v11, v6, Lcom/startapp/j8$o;->c:I

    .line 420
    iput v13, v6, Lcom/startapp/j8$o;->a:I

    .line 421
    iput v12, v6, Lcom/startapp/j8$o;->b:I

    .line 423
    iput v0, v6, Lcom/startapp/j8$o;->d:I

    .line 424
    iput v2, v6, Lcom/startapp/j8$o;->e:I

    .line 425
    iput v8, v6, Lcom/startapp/j8$o;->f:I

    .line 426
    iput v9, v6, Lcom/startapp/j8$o;->g:I

    .line 427
    iput v10, v6, Lcom/startapp/j8$o;->h:I

    .line 429
    iput v14, v6, Lcom/startapp/j8$o;->l:I

    .line 430
    iput v15, v6, Lcom/startapp/j8$o;->m:I

    .line 431
    iput v3, v6, Lcom/startapp/j8$o;->n:I

    .line 432
    iput v5, v6, Lcom/startapp/j8$o;->o:I

    move/from16 v1, v17

    .line 433
    iput v1, v6, Lcom/startapp/j8$o;->p:I

    move/from16 v1, v18

    .line 434
    iput v1, v6, Lcom/startapp/j8$o;->q:I

    .line 436
    iput v4, v6, Lcom/startapp/j8$o;->j:I

    move/from16 v11, v16

    .line 438
    iput v11, v6, Lcom/startapp/j8$o;->i:I

    move-wide/from16 v0, v19

    .line 440
    iput-wide v0, v6, Lcom/startapp/j8$o;->k:J

    move-object/from16 v1, p0

    .line 441
    iget-object v0, v1, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->b(Lcom/startapp/j8;)Lcom/startapp/j8$j;

    move-result-object v0

    move/from16 v2, p2

    invoke-virtual {v0, v2, v6}, Lcom/startapp/j8$j;->a(ILcom/startapp/j8$o;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0, p1}, Lcom/startapp/j8;->a(Lcom/startapp/j8;Ljava/util/List;)Ljava/util/List;

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_5

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 17
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/telephony/CellInfoNr;

    if-eqz v1, :cond_1

    .line 19
    check-cast v0, Landroid/telephony/CellInfoNr;

    .line 20
    invoke-virtual {v0}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    .line 21
    instance-of v2, v1, Landroid/telephony/CellIdentityNr;

    if-eqz v2, :cond_1

    .line 23
    check-cast v1, Landroid/telephony/CellIdentityNr;

    const/4 v2, 0x0

    .line 27
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    const/4 v3, 0x0

    .line 30
    :goto_1
    invoke-static {v4}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 32
    :goto_2
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v4

    .line 33
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v6

    .line 34
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v1

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v4, v7

    if-nez v3, :cond_2

    const-wide/16 v4, -0x1

    :cond_2
    const/4 v3, -0x1

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_3

    const/4 v6, -0x1

    :cond_3
    if-ne v1, v7, :cond_4

    const/4 v1, -0x1

    .line 47
    :cond_4
    new-instance v3, Lcom/startapp/j8$l;

    iget-object v7, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lcom/startapp/j8$l;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    .line 48
    iput-wide v4, v3, Lcom/startapp/j8$l;->a:J

    .line 49
    iput v6, v3, Lcom/startapp/j8$l;->b:I

    .line 50
    iput v1, v3, Lcom/startapp/j8$l;->c:I

    .line 51
    invoke-virtual {v0}, Landroid/telephony/CellInfoNr;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/startapp/j8$l;->d:J

    .line 53
    iget-object v0, p0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    invoke-static {v0}, Lcom/startapp/j8;->b(Lcom/startapp/j8;)Lcom/startapp/j8$j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/startapp/j8$j;->a(Ljava/lang/String;Lcom/startapp/j8$l;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$p;->a:Ljava/lang/reflect/Field;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    if-eq v0, v1, :cond_1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 10
    :cond_1
    iget v0, p0, Lcom/startapp/j8$p;->b:I

    :cond_2
    return v0
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/startapp/j8$p;->a(Ljava/util/List;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startapp/j8$p;->a()I

    move-result v0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/startapp/j8$p;->a(Landroid/telephony/CellLocation;I)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startapp/j8$p;->a()I

    move-result v0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/startapp/j8$p;->a(Landroid/telephony/ServiceState;I)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startapp/j8$p;->a()I

    move-result v0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/startapp/j8$p;->a(Landroid/telephony/SignalStrength;I)V

    return-void
.end method
