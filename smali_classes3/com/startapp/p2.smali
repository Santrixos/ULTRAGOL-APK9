.class public Lcom/startapp/p2;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final a:Ljava/lang/String; = "p2"

.field private static final b:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 8

    const-string v0, "_size"

    const/4 v1, 0x0

    .line 6
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-wide/16 p0, 0x0

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p0

    .line 28
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 30
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr p0, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide p0

    :catchall_0
    move-exception p0

    .line 41
    :try_start_2
    invoke-static {p0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 p0, -0x1

    if-eqz v1, :cond_3

    .line 46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide p0

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_4
    throw p0
.end method

.method public static a(Lcom/startapp/nd;)Lcom/startapp/db;
    .locals 3

    .line 49
    new-instance v0, Lcom/startapp/db;

    invoke-direct {v0}, Lcom/startapp/db;-><init>()V

    .line 51
    invoke-static {}, Lcom/startapp/eb;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/db;->MobileRxBytes:J

    .line 52
    invoke-static {}, Lcom/startapp/eb;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/db;->MobileTxBytes:J

    .line 53
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/db;->TotalRxBytes:J

    .line 54
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/db;->TotalTxBytes:J

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/startapp/nd;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/db;->WifiRxBytes:J

    .line 57
    invoke-virtual {p0}, Lcom/startapp/nd;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/db;->WifiTxBytes:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 60
    iput-wide v1, v0, Lcom/startapp/db;->WifiRxBytes:J

    .line 61
    iput-wide v1, v0, Lcom/startapp/db;->WifiTxBytes:J

    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lcom/startapp/l1;
    .locals 1

    .line 1
    new-instance p0, Lcom/startapp/l1;

    invoke-direct {p0}, Lcom/startapp/l1;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startapp/l1;->MissingPermission:Z

    return-object p0
.end method

.method public static a(ILandroid/content/Context;)Lcom/startapp/x9;
    .locals 0

    .line 62
    invoke-static {p1}, Lcom/startapp/p2;->f(Landroid/content/Context;)Lcom/startapp/y6;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p0}, Lcom/startapp/y6;->getSimInfoSubId(I)Lcom/startapp/x9;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 101
    :cond_0
    sget-object v0, Lcom/startapp/p2$a;->a:[I

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->SIMINFO_ICCID_RECORDTYPE()Lcom/startapp/networkTest/enums/AnonymizationLevel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    const-string v2, "*"

    const-string v3, "[\\d\\w]"

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 117
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 122
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static a(Landroid/content/Context;ILcom/startapp/x9;)V
    .locals 9

    const-string v0, "type"

    const-string v1, "apn"

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const-string v2, "content://telephony/carriers/preferapn/subId/"

    .line 68
    invoke-static {v2, p1}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "content://telephony/carriers/preferapn"

    :goto_0
    const/4 v2, 0x0

    .line 71
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 73
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    iput-object p1, p2, Lcom/startapp/x9;->Apn:Ljava/lang/String;

    .line 78
    iput-object v0, p2, Lcom/startapp/x9;->ApnTypes:Ljava/lang/String;

    .line 80
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_2

    :cond_1
    move-object v2, p0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 84
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_2

    .line 88
    :goto_3
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    .line 91
    invoke-static {p0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    return-void

    :catchall_3
    move-exception p0

    if-eqz v2, :cond_3

    .line 92
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    .line 95
    invoke-static {p1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 97
    :cond_3
    :goto_5
    throw p0
.end method

.method private static a()Z
    .locals 10

    const-string v0, "/system/app/Superuser.apk"

    const-string v1, "/sbin/su"

    const-string v2, "/system/bin/su"

    const-string v3, "/system/xbin/su"

    const-string v4, "/data/local/xbin/su"

    const-string v5, "/data/local/bin/su"

    const-string v6, "/system/sd/xbin/su"

    const-string v7, "/system/bin/failsafe/su"

    const-string v8, "/data/local/su"

    const-string v9, "/su/bin/su"

    .line 3
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, v0, v2

    .line 5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b(Landroid/content/Context;)Lcom/startapp/q2;
    .locals 10

    .line 1
    new-instance v0, Lcom/startapp/q2;

    invoke-direct {v0}, Lcom/startapp/q2;-><init>()V

    .line 3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/startapp/q2;->DeviceManufacturer:Ljava/lang/String;

    .line 4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/startapp/q2;->DeviceName:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/startapp/networkTest/enums/Os;->a:Lcom/startapp/networkTest/enums/Os;

    iput-object v1, v0, Lcom/startapp/q2;->OS:Lcom/startapp/networkTest/enums/Os;

    .line 6
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/startapp/q2;->OSVersion:Ljava/lang/String;

    .line 7
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Lcom/startapp/q2;->BuildFingerprint:Ljava/lang/String;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/q2;->DeviceUpTime:J

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/q2;->UserLocal:Ljava/lang/String;

    const-string v1, "phone"

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/q2;->SimOperator:Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/q2;->SimOperatorName:Ljava/lang/String;

    .line 18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    .line 19
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getTypeAllocationCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 21
    iput-object v4, v0, Lcom/startapp/q2;->TAC:Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getManufacturerCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 26
    iput-object v4, v0, Lcom/startapp/q2;->TAC:Ljava/lang/String;

    .line 32
    :cond_1
    :goto_0
    sget-object v4, Lcom/startapp/networkTest/enums/SimStates;->a:Lcom/startapp/networkTest/enums/SimStates;

    .line 33
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    if-eq v5, v7, :cond_5

    if-eq v5, v6, :cond_4

    const/4 v9, 0x4

    if-eq v5, v9, :cond_3

    const/4 v9, 0x5

    if-eq v5, v9, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    sget-object v4, Lcom/startapp/networkTest/enums/SimStates;->f:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_1

    .line 48
    :cond_3
    sget-object v4, Lcom/startapp/networkTest/enums/SimStates;->c:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_1

    .line 54
    :cond_4
    sget-object v4, Lcom/startapp/networkTest/enums/SimStates;->e:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_1

    .line 55
    :cond_5
    sget-object v4, Lcom/startapp/networkTest/enums/SimStates;->d:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_1

    .line 56
    :cond_6
    sget-object v4, Lcom/startapp/networkTest/enums/SimStates;->b:Lcom/startapp/networkTest/enums/SimStates;

    .line 74
    :goto_1
    iput-object v4, v0, Lcom/startapp/q2;->SimState:Lcom/startapp/networkTest/enums/SimStates;

    const/16 v4, 0x17

    if-lt v3, v4, :cond_7

    .line 79
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPhoneCount"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/startapp/q2;->PhoneCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 82
    invoke-static {v3}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 87
    :cond_7
    :goto_2
    sget-object v3, Lcom/startapp/networkTest/enums/PhoneTypes;->e:Lcom/startapp/networkTest/enums/PhoneTypes;

    .line 88
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_8

    goto :goto_3

    .line 96
    :cond_8
    sget-object v3, Lcom/startapp/networkTest/enums/PhoneTypes;->c:Lcom/startapp/networkTest/enums/PhoneTypes;

    goto :goto_3

    .line 97
    :cond_9
    sget-object v3, Lcom/startapp/networkTest/enums/PhoneTypes;->b:Lcom/startapp/networkTest/enums/PhoneTypes;

    goto :goto_3

    .line 100
    :cond_a
    sget-object v3, Lcom/startapp/networkTest/enums/PhoneTypes;->a:Lcom/startapp/networkTest/enums/PhoneTypes;

    goto :goto_3

    .line 106
    :cond_b
    sget-object v3, Lcom/startapp/networkTest/enums/PhoneTypes;->d:Lcom/startapp/networkTest/enums/PhoneTypes;

    .line 111
    :goto_3
    iput-object v3, v0, Lcom/startapp/q2;->PhoneType:Lcom/startapp/networkTest/enums/PhoneTypes;

    .line 114
    :cond_c
    invoke-static {}, Lcom/startapp/p2;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcom/startapp/q2;->IsRooted:Z

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-gt v1, v3, :cond_d

    const-string v1, "/proc/version"

    .line 118
    invoke-static {v1}, Lcom/startapp/v9;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_d
    const-string v1, "uname -a"

    .line 121
    invoke-static {v1}, Lcom/startapp/v9;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_4
    array-length v3, v1

    if-lez v3, :cond_e

    .line 125
    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/q2;->OsSystemVersion:Ljava/lang/String;

    .line 128
    :cond_e
    invoke-static {p0}, Lcom/startapp/p2;->a(Landroid/content/Context;)Lcom/startapp/l1;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/q2;->BluetoothInfo:Lcom/startapp/l1;

    .line 130
    invoke-static {p0}, Lcom/startapp/p2;->g(Landroid/content/Context;)Lcom/startapp/networkTest/enums/ThreeState;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/q2;->PowerSaveMode:Lcom/startapp/networkTest/enums/ThreeState;

    .line 132
    invoke-static {p0}, Lcom/startapp/p2;->f(Landroid/content/Context;)Lcom/startapp/y6;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/q2;->MultiSimInfo:Lcom/startapp/y6;

    .line 134
    invoke-static {p0}, Lcom/startapp/p2;->c(Landroid/content/Context;)Lcom/startapp/x3;

    move-result-object p0

    iput-object p0, v0, Lcom/startapp/q2;->HostAppInfo:Lcom/startapp/x3;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 141
    :cond_0
    sget-object v0, Lcom/startapp/p2$a;->a:[I

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->SIMINFO_IMSI_RECORDTYPE()Lcom/startapp/networkTest/enums/AnonymizationLevel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 156
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    const-string v2, "*"

    const-string v3, "[\\d\\w]"

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 157
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static b()Z
    .locals 2

    .line 135
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 137
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c(Landroid/content/Context;)Lcom/startapp/x3;
    .locals 10

    .line 1
    new-instance v0, Lcom/startapp/x3;

    invoke-direct {v0}, Lcom/startapp/x3;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/x3;->AppPackageName:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 11
    invoke-static {v3}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, v0, Lcom/startapp/x3;->AppTargetVersion:I

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/startapp/x3;->AppName:Ljava/lang/String;

    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 21
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v1}, Lcom/startapp/i0;->a(I)Lcom/startapp/networkTest/enums/AppCategoryTypes;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/x3;->AppCategory:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 27
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 30
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 31
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 32
    new-instance v7, Lcom/startapp/d0;

    invoke-direct {v7}, Lcom/startapp/d0;-><init>()V

    .line 33
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/startapp/d0;->Permission:Ljava/lang/String;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    .line 35
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 36
    invoke-static {p0}, Lcom/startapp/i0;->b(Landroid/content/Context;)Z

    move-result v6

    iput v6, v7, Lcom/startapp/d0;->IsGranted:I

    goto :goto_3

    .line 39
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-virtual {p0, v6, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iput v6, v7, Lcom/startapp/d0;->IsGranted:I

    .line 42
    :goto_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 45
    :try_start_2
    invoke-static {p0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 47
    :cond_4
    iput-object v1, v0, Lcom/startapp/x3;->AppPermissions:Ljava/util/ArrayList;

    return-object v0

    :catchall_2
    move-exception p0

    iput-object v1, v0, Lcom/startapp/x3;->AppPermissions:Ljava/util/ArrayList;

    .line 48
    throw p0
.end method

.method public static d(Landroid/content/Context;)Lcom/startapp/networkTest/enums/IdleStates;
    .locals 5

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/IdleStates;->a:Lcom/startapp/networkTest/enums/IdleStates;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    const-string v2, "power"

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_2

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isLightDeviceIdleMode"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    sget-object v0, Lcom/startapp/networkTest/enums/IdleStates;->c:Lcom/startapp/networkTest/enums/IdleStates;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 16
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 21
    :cond_0
    :goto_0
    sget-object v1, Lcom/startapp/networkTest/enums/IdleStates;->c:Lcom/startapp/networkTest/enums/IdleStates;

    if-eq v0, v1, :cond_2

    .line 22
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/startapp/networkTest/enums/IdleStates;->b:Lcom/startapp/networkTest/enums/IdleStates;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/startapp/networkTest/enums/IdleStates;->d:Lcom/startapp/networkTest/enums/IdleStates;

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/startapp/h6;
    .locals 5

    .line 1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 5
    new-instance p0, Lcom/startapp/h6;

    invoke-direct {p0}, Lcom/startapp/h6;-><init>()V

    .line 6
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iput-wide v1, p0, Lcom/startapp/h6;->MemoryFree:J

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 10
    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v3, p0, Lcom/startapp/h6;->MemoryTotal:J

    sub-long/2addr v3, v1

    .line 11
    iput-wide v3, p0, Lcom/startapp/h6;->MemoryUsed:J

    .line 14
    :cond_0
    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v0, :cond_1

    .line 15
    sget-object v0, Lcom/startapp/networkTest/enums/MemoryStates;->c:Lcom/startapp/networkTest/enums/MemoryStates;

    iput-object v0, p0, Lcom/startapp/h6;->MemoryState:Lcom/startapp/networkTest/enums/MemoryStates;

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lcom/startapp/networkTest/enums/MemoryStates;->b:Lcom/startapp/networkTest/enums/MemoryStates;

    iput-object v0, p0, Lcom/startapp/h6;->MemoryState:Lcom/startapp/networkTest/enums/MemoryStates;

    :goto_0
    return-object p0
.end method

.method public static f(Landroid/content/Context;)Lcom/startapp/y6;
    .locals 13

    .line 1
    new-instance v0, Lcom/startapp/y6;

    invoke-direct {v0}, Lcom/startapp/y6;-><init>()V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1b

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "telephony_subscription_service"

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_f

    .line 11
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v6

    iput v6, v0, Lcom/startapp/y6;->ActiveSimCount:I

    .line 12
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v6

    iput v6, v0, Lcom/startapp/y6;->ActiveSimCountMax:I

    .line 14
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 17
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/startapp/x9;

    .line 19
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 20
    new-instance v10, Lcom/startapp/x9;

    invoke-direct {v10}, Lcom/startapp/x9;-><init>()V

    .line 22
    :try_start_0
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 23
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/startapp/x9;->CarrierName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v11

    .line 26
    invoke-static {v11}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 29
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 30
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/startapp/x9;->CountryIso:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v11

    .line 33
    invoke-static {v11}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 36
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 37
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/startapp/p2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/startapp/x9;->IccId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v11

    .line 40
    invoke-static {v11}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 42
    :cond_2
    :goto_3
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v11

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_3

    const/4 v11, -0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v11

    :goto_4
    iput v11, v10, Lcom/startapp/x9;->Mcc:I

    .line 43
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v11

    if-ne v11, v12, :cond_4

    const/4 v11, -0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v11

    :goto_5
    iput v11, v10, Lcom/startapp/x9;->Mnc:I

    .line 44
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v11

    iput v11, v10, Lcom/startapp/x9;->SimSlotIndex:I

    .line 45
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    iput v11, v10, Lcom/startapp/x9;->SubscriptionId:I

    .line 46
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getDataRoaming()I

    move-result v9

    if-ne v9, v4, :cond_5

    const/4 v9, 0x1

    goto :goto_6

    :cond_5
    const/4 v9, 0x0

    :goto_6
    iput-boolean v9, v10, Lcom/startapp/x9;->DataRoaming:Z

    .line 47
    iget v9, v10, Lcom/startapp/x9;->SubscriptionId:I

    invoke-static {p0, v9, v10}, Lcom/startapp/p2;->a(Landroid/content/Context;ILcom/startapp/x9;)V

    .line 48
    aput-object v10, v7, v8

    add-int/2addr v8, v4

    goto/16 :goto_0

    .line 51
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    .line 58
    :cond_7
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDefaultDataSubscriptionId"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception v6

    .line 60
    invoke-static {v6}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_7
    if-nez v6, :cond_8

    .line 65
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getDefaultDataSubId"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v7

    .line 67
    invoke-static {v7}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    if-eqz v6, :cond_9

    :try_start_5
    new-array v7, v5, [Ljava/lang/Object;

    .line 72
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/startapp/y6;->DefaultDataSimId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v6

    .line 74
    invoke-static {v6}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 82
    :cond_9
    :goto_9
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDefaultSmsSubscriptionId"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_a

    :catch_2
    move-exception v6

    .line 84
    invoke-static {v6}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_a
    if-nez v6, :cond_a

    .line 89
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getDefaultSmsSubId"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_b

    :catch_3
    move-exception v7

    .line 91
    invoke-static {v7}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_a
    :goto_b
    if-eqz v6, :cond_b

    :try_start_8
    new-array v7, v5, [Ljava/lang/Object;

    .line 96
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/startapp/y6;->DefaultSmsSimId:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v6

    .line 98
    invoke-static {v6}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 106
    :cond_b
    :goto_c
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDefaultSubscriptionId"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_d

    :catch_4
    move-exception v6

    .line 108
    invoke-static {v6}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_d
    if-nez v6, :cond_c

    .line 113
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getDefaultSubId"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_e

    :catch_5
    move-exception v7

    .line 115
    invoke-static {v7}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_c
    :goto_e
    if-eqz v6, :cond_d

    :try_start_b
    new-array v7, v5, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/startapp/y6;->DefaultSimId:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v6

    .line 122
    invoke-static {v6}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 130
    :cond_d
    :goto_f
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDefaultVoiceSubscriptionId"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_10

    :catch_6
    move-exception v6

    .line 132
    invoke-static {v6}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_10
    if-nez v6, :cond_e

    .line 137
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getDefaultVoiceSubId"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_11

    :catch_7
    move-exception v7

    .line 139
    invoke-static {v7}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_e
    :goto_11
    if-eqz v6, :cond_f

    :try_start_e
    new-array v7, v5, [Ljava/lang/Object;

    .line 144
    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/startapp/y6;->DefaultVoiceSimId:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_12

    :catchall_6
    move-exception v1

    .line 146
    invoke-static {v1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_f
    :goto_12
    const-string v1, "phone"

    .line 152
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1b

    .line 158
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "getMultiSimConfiguration"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_13

    :catch_8
    move-exception v1

    .line 160
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_13
    if-eqz v1, :cond_17

    :try_start_10
    new-array v6, v5, [Ljava/lang/Object;

    .line 164
    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 165
    instance-of v6, v1, Ljava/lang/Enum;

    if-eqz v6, :cond_17

    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x20294c

    const/4 v8, 0x2

    if-eq v6, v7, :cond_12

    const v7, 0x20295e

    if-eq v6, v7, :cond_11

    const v7, 0x27713e

    if-eq v6, v7, :cond_10

    goto :goto_14

    :cond_10
    const-string v6, "TSTS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x2

    goto :goto_14

    :cond_11
    const-string v6, "DSDS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_12
    const-string v6, "DSDA"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x0

    :cond_13
    :goto_14
    if-eqz v2, :cond_16

    if-eq v2, v4, :cond_15

    if-eq v2, v8, :cond_14

    .line 178
    sget-object v1, Lcom/startapp/networkTest/enums/MultiSimVariants;->d:Lcom/startapp/networkTest/enums/MultiSimVariants;

    iput-object v1, v0, Lcom/startapp/y6;->MultiSimVariant:Lcom/startapp/networkTest/enums/MultiSimVariants;

    goto :goto_15

    .line 179
    :cond_14
    sget-object v1, Lcom/startapp/networkTest/enums/MultiSimVariants;->c:Lcom/startapp/networkTest/enums/MultiSimVariants;

    iput-object v1, v0, Lcom/startapp/y6;->MultiSimVariant:Lcom/startapp/networkTest/enums/MultiSimVariants;

    goto :goto_15

    .line 180
    :cond_15
    sget-object v1, Lcom/startapp/networkTest/enums/MultiSimVariants;->a:Lcom/startapp/networkTest/enums/MultiSimVariants;

    iput-object v1, v0, Lcom/startapp/y6;->MultiSimVariant:Lcom/startapp/networkTest/enums/MultiSimVariants;

    goto :goto_15

    .line 181
    :cond_16
    sget-object v1, Lcom/startapp/networkTest/enums/MultiSimVariants;->b:Lcom/startapp/networkTest/enums/MultiSimVariants;

    iput-object v1, v0, Lcom/startapp/y6;->MultiSimVariant:Lcom/startapp/networkTest/enums/MultiSimVariants;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_15

    :catchall_7
    move-exception v1

    .line 195
    invoke-static {v1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 199
    :cond_17
    :goto_15
    iget-object v1, v0, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/x9;

    .line 204
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getSimState"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_17

    :catch_9
    move-exception v6

    .line 206
    invoke-static {v6}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_17
    if-eqz v6, :cond_19

    :try_start_12
    new-array v7, v4, [Ljava/lang/Object;

    .line 210
    iget v8, v2, Lcom/startapp/x9;->SimSlotIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 242
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->a:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 243
    :pswitch_0
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->j:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 244
    :pswitch_1
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->i:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 245
    :pswitch_2
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->h:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 246
    :pswitch_3
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->g:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 247
    :pswitch_4
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->f:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 248
    :pswitch_5
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->c:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 254
    :pswitch_6
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->e:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 255
    :pswitch_7
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->d:Lcom/startapp/networkTest/enums/SimStates;

    goto :goto_18

    .line 256
    :pswitch_8
    sget-object v6, Lcom/startapp/networkTest/enums/SimStates;->b:Lcom/startapp/networkTest/enums/SimStates;

    .line 286
    :goto_18
    iput-object v6, v2, Lcom/startapp/x9;->SimState:Lcom/startapp/networkTest/enums/SimStates;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_19

    :catchall_8
    move-exception v6

    .line 288
    invoke-static {v6}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 295
    :cond_19
    :goto_19
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getSubscriberId"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_13} :catch_a

    goto :goto_1a

    :catch_a
    move-exception v6

    .line 297
    invoke-static {v6}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_1a
    if-eqz v6, :cond_1a

    :try_start_14
    new-array v7, v4, [Ljava/lang/Object;

    .line 301
    iget v8, v2, Lcom/startapp/x9;->SubscriptionId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 302
    invoke-static {v6}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/startapp/p2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/startapp/x9;->IMSI:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_1b

    :catchall_9
    move-exception v6

    .line 304
    invoke-static {v6}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 311
    :cond_1a
    :goto_1b
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getGroupIdLevel1"

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_1c

    :catch_b
    move-exception v6

    .line 313
    invoke-static {v6}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_1c
    if-eqz v6, :cond_18

    :try_start_16
    new-array v7, v4, [Ljava/lang/Object;

    .line 317
    iget v8, v2, Lcom/startapp/x9;->SubscriptionId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 318
    invoke-static {v6}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/startapp/x9;->GroupIdentifierLevel1:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    goto/16 :goto_16

    :catchall_a
    move-exception v2

    .line 320
    invoke-static {v2}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :cond_1b
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static g(Landroid/content/Context;)Lcom/startapp/networkTest/enums/ThreeState;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_powersaver_enable"

    .line 4
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p0, "1"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/startapp/networkTest/enums/ThreeState;->b:Lcom/startapp/networkTest/enums/ThreeState;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/startapp/networkTest/enums/ThreeState;->c:Lcom/startapp/networkTest/enums/ThreeState;

    :goto_0
    return-object p0

    .line 10
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 13
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 14
    sget-object p0, Lcom/startapp/networkTest/enums/ThreeState;->a:Lcom/startapp/networkTest/enums/ThreeState;

    return-object p0

    :cond_2
    const-string v0, "power"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_4

    .line 19
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/startapp/networkTest/enums/ThreeState;->b:Lcom/startapp/networkTest/enums/ThreeState;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/startapp/networkTest/enums/ThreeState;->c:Lcom/startapp/networkTest/enums/ThreeState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 22
    invoke-static {p0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 25
    :cond_4
    sget-object p0, Lcom/startapp/networkTest/enums/ThreeState;->a:Lcom/startapp/networkTest/enums/ThreeState;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Lcom/startapp/networkTest/enums/ScreenStates;
    .locals 2

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/ScreenStates;->a:Lcom/startapp/networkTest/enums/ScreenStates;

    const-string v1, "power"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/startapp/networkTest/enums/ScreenStates;->b:Lcom/startapp/networkTest/enums/ScreenStates;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/startapp/networkTest/enums/ScreenStates;->c:Lcom/startapp/networkTest/enums/ScreenStates;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Lcom/startapp/x9;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startapp/p2;->f(Landroid/content/Context;)Lcom/startapp/y6;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/startapp/y6;->getDefaultDataSimInfo()Lcom/startapp/x9;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Lcom/startapp/x9;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startapp/p2;->f(Landroid/content/Context;)Lcom/startapp/y6;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/startapp/y6;->getDefaultVoiceSimInfo()Lcom/startapp/x9;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Lcom/startapp/ia;
    .locals 7

    .line 1
    new-instance v0, Lcom/startapp/ia;

    invoke-direct {v0}, Lcom/startapp/ia;-><init>()V

    .line 4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 7
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v5, v1

    mul-long v5, v5, v3

    iput-wide v5, v0, Lcom/startapp/ia;->StorageInternalSize:J

    .line 8
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    mul-long v3, v3, v1

    iput-wide v3, v0, Lcom/startapp/ia;->StorageInternalAvailable:J

    .line 11
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/startapp/p2;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/ia;->StorageInternalAudio:J

    .line 12
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/startapp/p2;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/ia;->StorageInternalImages:J

    .line 13
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/startapp/p2;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/ia;->StorageInternalVideo:J

    .line 16
    invoke-static {}, Lcom/startapp/p2;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 21
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 23
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v5, v1

    mul-long v5, v5, v3

    iput-wide v5, v0, Lcom/startapp/ia;->StorageExternalSize:J

    .line 24
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    mul-long v3, v3, v1

    iput-wide v3, v0, Lcom/startapp/ia;->StorageExternalAvailable:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v1, -0x1

    .line 26
    iput-wide v1, v0, Lcom/startapp/ia;->StorageExternalSize:J

    .line 27
    iput-wide v1, v0, Lcom/startapp/ia;->StorageExternalAvailable:J

    :goto_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 31
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 32
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/startapp/p2;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/ia;->StorageExternalAudio:J

    .line 33
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/startapp/p2;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/ia;->StorageExternalImages:J

    .line 34
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/startapp/p2;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/startapp/ia;->StorageExternalVideo:J

    :cond_0
    return-object v0
.end method
