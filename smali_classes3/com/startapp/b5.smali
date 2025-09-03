.class public Lcom/startapp/b5;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final A:Ljava/lang/String; = "P3INS_PFK_LAST_EXPORT_TIME"

.field private static final B:Ljava/lang/String; = "P3INS_PFK_QOE_MANAGER_ENABLED"

.field private static final C:Ljava/lang/String; = "P3INS_PFK_REGISTRATION_TIMESTAMP"

.field private static final D:Ljava/lang/String; = "P3INS_PFK_IS_ALREADY_REGISTERED"

.field private static final E:Ljava/lang/String; = "P3INS_PFK_SEND_REGISTRATION_TIMESTAMP_ENABLED"

.field private static final F:Ljava/lang/String; = "P3INS_PFK_UPLOAD_EXTRA"

.field private static final G:Ljava/lang/String; = "P3INS_PFK_VOWIFI_TEST_MANAGER_ENABLED"

.field private static final H:Ljava/lang/String; = "P3INS_PFK_CT_CRITERIA_SERVER_LIST"

.field private static final I:Ljava/lang/String; = "P3INS_PFK_LTR_CRITERIA_SERVER_LIST"

.field private static final J:Ljava/lang/String; = "P3INS_PFK_CDN_CT_SERVER_LIST"

.field private static final K:Ljava/lang/String; = "P3INS_PFK_CDN_CT_CRITERIA"

.field private static final L:Ljava/lang/String; = "P3INS_PFK_CDN_LTR_SERVER_LIST"

.field private static final M:Ljava/lang/String; = "P3INS_PFK_CDN_LTR_CRITERIA"

.field private static final N:Ljava/lang/String; = "P3INS_PFK_CONNECTIVITY_TEST_CDNCONFIG_LAST_MODIFIED"

.field private static final O:Ljava/lang/String; = "P3INS_PFK_CONNECTIVITY_TEST_CDNCONFIG_LAST_CHECK"

.field private static final P:Ljava/lang/String; = "P3INS_PFK_WIFI_SCAN_TIMESTAMP"

.field private static final Q:Ljava/lang/String; = "P3INS_PFK_WIFI_SCAN_ENABLED"

.field private static final R:Ljava/lang/String; = "p3inspreferences"

.field private static final b:Ljava/lang/String; = "p3ins_pfk_ul_params"

.field private static final c:Ljava/lang/String; = "p3ins_pfk_ul_paramsetid"

.field private static final d:Ljava/lang/String; = "p3ins_pfk_ul_allowed"

.field private static final e:Ljava/lang/String; = "p3ins_pfk_db_retry"

.field private static final f:Ljava/lang/String; = "p3ins_pfk_last_upload_time"

.field private static final g:Ljava/lang/String; = "p3ins_pfk_guid"

.field private static final h:Ljava/lang/String; = "P3INS_PFK_GUID_TIMESTAMP"

.field private static final i:Ljava/lang/String; = "P3INS_PFK_CONNECTIVITY_TEST_ENABLED"

.field private static final j:Ljava/lang/String; = "P3INS_PFK_CONNECTIVITY_KEEPALIVE_ENABLED"

.field private static final k:Ljava/lang/String; = "P3INS_PFK_CONNECTIVITY_TEST_TRUSTSTORE_LAST_CHECK"

.field private static final l:Ljava/lang/String; = "P3INS_PFK_CONNECTIVITY_TEST_TRUSTSTORE_LAST_MODIFIED"

.field private static final m:Ljava/lang/String; = "P3INS_PFK_CONNECTIVITY_TEST_TIMESTAMP"

.field private static final n:Ljava/lang/String; = "P3INS_PFK_APPUSAGE_SERVICE_ENABLED"

.field private static final o:Ljava/lang/String; = "P3INS_PFK_APPUSAGE_LAST_SCREEN_SESSION_COUNTER"

.field private static final p:Ljava/lang/String; = "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_ENABLED"

.field private static final q:Ljava/lang/String; = "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_INTERVAL"

.field private static final r:Ljava/lang/String; = "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_LAST_TIMESTAMP"

.field private static final s:Ljava/lang/String; = "P3INS_PFK_APPUSAGE_BROWSER_SESSION_TRACKING_ENABLED"

.field private static final t:Ljava/lang/String; = "P3INS_PFK_VOICEMANAGER_PHONENUMBER_RECORD_TYPE"

.field private static final u:Ljava/lang/String; = "P3INS_PFK_VOICE_SERVICE_ENABLED"

.field private static final v:Ljava/lang/String; = "P3INS_PFK_MESSAGING_SERVICE_ENABLED"

.field private static final w:Ljava/lang/String; = "P3INS_PFK_MESSAGINGMANAGER_PHONENUMBER_RECORD_TYPE"

.field private static final x:Ljava/lang/String; = "P3INS_PFK_COVERAGE_SERVICE_ENABLED"

.field private static final y:Ljava/lang/String; = "P3INS_PFK_COVERAGE_SERVICE_TRIGGER_PROVIDER_MODE"

.field private static final z:Ljava/lang/String; = "P3INS_PFK_TRAFFIC_ANALYZER_ENABLED"


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "p3inspreferences"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private O()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_IS_ALREADY_REGISTERED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Lcom/startapp/networkTest/enums/AnonymizationLevel;
    .locals 2

    .line 57
    sget-object v0, Lcom/startapp/networkTest/enums/AnonymizationLevel;->b:Lcom/startapp/networkTest/enums/AnonymizationLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/startapp/networkTest/enums/AnonymizationLevel;->a:Lcom/startapp/networkTest/enums/AnonymizationLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 63
    :cond_1
    sget-object v0, Lcom/startapp/networkTest/enums/AnonymizationLevel;->c:Lcom/startapp/networkTest/enums/AnonymizationLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .line 49
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "p3ins_pfk_guid"

    .line 53
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-static {}, Lcom/startapp/ua;->d()J

    move-result-wide v2

    const-string v4, "P3INS_PFK_GUID_TIMESTAMP"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/startapp/networkTest/controller/LocationController$ProviderMode;
    .locals 2

    .line 3
    sget-object v0, Lcom/startapp/networkTest/controller/LocationController$ProviderMode;->c:Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/startapp/networkTest/controller/LocationController$ProviderMode;->d:Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    sget-object v0, Lcom/startapp/networkTest/controller/LocationController$ProviderMode;->b:Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 9
    :cond_2
    sget-object v0, Lcom/startapp/networkTest/controller/LocationController$ProviderMode;->a:Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 11
    :cond_3
    sget-object v0, Lcom/startapp/networkTest/controller/LocationController$ProviderMode;->e:Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Z)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_IS_ALREADY_REGISTERED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->MESSAGING_SERVICE_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_MESSAGING_SERVICE_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->QOE_MANAGER_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_QOE_MANAGER_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public C()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_REGISTRATION_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->SEND_REGISTRATION_TIMESTAMP_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_SEND_REGISTRATION_TIMESTAMP_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->TRAFFIC_ANALYZER_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_TRAFFIC_ANALYZER_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public F()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_TRUSTSTORE_LAST_MODIFIED"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public G()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_UPLOAD_EXTRA"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "p3ins_pfk_ul_paramsetid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "p3ins_pfk_ul_params"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "p3ins_pfk_db_retry"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public K()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->VOWIFI_TEST_MANAGER_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_VOWIFI_TEST_MANAGER_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public L()Lcom/startapp/networkTest/enums/AnonymizationLevel;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->VOICEMANAGER_PHONENUMBER_RECORD_TYPE()Lcom/startapp/networkTest/enums/AnonymizationLevel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P3INS_PFK_VOICEMANAGER_PHONENUMBER_RECORD_TYPE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/startapp/b5;->a(Ljava/lang/String;)Lcom/startapp/networkTest/enums/AnonymizationLevel;

    move-result-object v0

    return-object v0
.end method

.method public M()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->VOICE_SERVICE_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_VOICE_SERVICE_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->WIFI_SCAN_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_WIFI_SCAN_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "p3ins_pfk_ul_allowed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "p3ins_pfk_guid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    invoke-static {}, Lcom/startapp/ua;->d()J

    move-result-wide v2

    .line 14
    iget-object v4, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    const-string v7, "P3INS_PFK_GUID_TIMESTAMP"

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 15
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/startapp/y4;->GUID_MAX_AGE()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    sub-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-gtz v4, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 19
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/startapp/b5;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 20
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/startapp/b5;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v1, :cond_5

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/g9;

    new-instance v2, Lcom/startapp/b5$a;

    invoke-direct {v2, p0, v0}, Lcom/startapp/b5$a;-><init>(Lcom/startapp/b5;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/startapp/g9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    invoke-virtual {p0}, Lcom/startapp/b5;->D()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/startapp/b5;->O()Z

    :cond_5
    return-object v0
.end method

.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_INTERVAL"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/startapp/networkTest/enums/AnonymizationLevel;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "P3INS_PFK_MESSAGINGMANAGER_PHONENUMBER_RECORD_TYPE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CT_CRITERIA_SERVER_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_CDNCONFIG_LAST_MODIFIED"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Lcom/startapp/networkTest/enums/AnonymizationLevel;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "P3INS_PFK_VOICEMANAGER_PHONENUMBER_RECORD_TYPE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CDN_CT_SERVER_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->APPUSAGE_BROWSER_SESSION_TRACKING_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_APPUSAGE_BROWSER_SESSION_TRACKING_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(J)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_LAST_TIMESTAMP"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CDN_CT_CRITERIA"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CDN_LTR_SERVER_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_APPUSAGE_BROWSER_SESSION_TRACKING_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->APPUSAGE_MANAGER_INSTALLED_APP_SNAPSHOT_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_INTERVAL"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_APPUSAGE_LAST_SCREEN_SESSION_COUNTER"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CDN_LTR_CRITERIA"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_LTR_CRITERIA_SERVER_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(J)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_CDNCONFIG_LAST_CHECK"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_UPLOAD_EXTRA"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_APPUSAGE_SERVICE_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->APPUSAGE_SERVICE_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_APPUSAGE_SERVICE_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_CT_CRITERIA_SERVER_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(J)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_TIMESTAMP"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "p3ins_pfk_ul_paramsetid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CONNECTIVITY_KEEPALIVE_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g()J
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_CDNCONFIG_LAST_MODIFIED"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_LAST_EXPORT_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "p3ins_pfk_ul_params"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->CONNECTIVITY_TEST_CRITERIA()Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P3INS_PFK_CDN_CT_CRITERIA"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(J)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_TRUSTSTORE_LAST_CHECK"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_COVERAGE_SERVICE_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public i(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "p3ins_pfk_last_upload_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_MESSAGING_SERVICE_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public i()[Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_CDN_CT_SERVER_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->CONNECTIVITY_TEST_HOSTNAME_ARRAY()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->LATENCY_TEST_CRITERIA()Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P3INS_PFK_CDN_LTR_CRITERIA"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_WIFI_SCAN_TIMESTAMP"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_QOE_MANAGER_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public k(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_REGISTRATION_TIMESTAMP"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public k(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_SEND_REGISTRATION_TIMESTAMP_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public k()[Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_CDN_LTR_SERVER_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->LATENCY_TEST_HOSTNAME_ARRAY()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public l(J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_TRUSTSTORE_LAST_MODIFIED"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_TRAFFIC_ANALYZER_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public l()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->CONNECTIVITY_KEEPALIVE_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_CONNECTIVITY_KEEPALIVE_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m(J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "p3ins_pfk_db_retry"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public m(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "p3ins_pfk_ul_allowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->CONNECTIVITY_TEST_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_CONNECTIVITY_TEST_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_VOWIFI_TEST_MANAGER_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->COVERAGE_MAPPER_SERVICE_ENABLED()Z

    move-result v1

    const-string v2, "P3INS_PFK_COVERAGE_SERVICE_ENABLED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o()Lcom/startapp/networkTest/controller/LocationController$ProviderMode;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->COVERAGE_MAPPER_SERVICE_TRIGGER_PROVIDER_MODE()Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P3INS_PFK_COVERAGE_SERVICE_TRIGGER_PROVIDER_MODE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/startapp/b5;->b(Ljava/lang/String;)Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    move-result-object v0

    return-object v0
.end method

.method public o(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_VOICE_SERVICE_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/startapp/b5;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "P3INS_PFK_WIFI_SCAN_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public q()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_LTR_CRITERIA_SERVER_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public r()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_APPUSAGE_INSTALLED_APP_SNAPSHOT_LAST_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_APPUSAGE_LAST_SCREEN_SESSION_COUNTER"

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_CDNCONFIG_LAST_CHECK"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_TIMESTAMP"

    const-wide/32 v2, 0x7fffffff

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_LAST_EXPORT_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_CONNECTIVITY_TEST_TRUSTSTORE_LAST_CHECK"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public x()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "p3ins_pfk_last_upload_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    const-string v1, "P3INS_PFK_WIFI_SCAN_TIMESTAMP"

    const-wide/32 v2, 0x7fffffff

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()Lcom/startapp/networkTest/enums/AnonymizationLevel;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b5;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->MESSAGINGMANAGER_PHONENUMBER_RECORD_TYPE()Lcom/startapp/networkTest/enums/AnonymizationLevel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P3INS_PFK_MESSAGINGMANAGER_PHONENUMBER_RECORD_TYPE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/startapp/b5;->a(Ljava/lang/String;)Lcom/startapp/networkTest/enums/AnonymizationLevel;

    move-result-object v0

    return-object v0
.end method
