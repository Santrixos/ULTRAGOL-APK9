.class public Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;
.super Lcom/startapp/y0;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;
    }
.end annotation


# instance fields
.field public final h0:Lcom/startapp/sdk/adsbase/e;

.field public i0:I

.field public j0:I

.field public k0:Z

.field public l0:F

.field public m0:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;

.field public n0:Ljava/lang/String;

.field public o0:Ljava/lang/String;

.field public p0:Ljava/lang/Integer;

.field public q0:Lcom/startapp/sdk/common/utils/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/sdk/common/utils/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r0:Ljava/lang/Integer;

.field public s0:Ljava/lang/Boolean;

.field public t0:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/e;Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/startapp/y0;-><init>(I)V

    .line 3
    iput-object p2, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->h0:Lcom/startapp/sdk/adsbase/e;

    const-string v0, "totalSessions"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v0, v1}, Lcom/startapp/sdk/adsbase/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->i0:I

    .line 6
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->b()I

    move-result v0

    iput v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->j0:I

    const-string v0, "inAppPurchaseAmount"

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p2, v0, v2}, Lcom/startapp/sdk/adsbase/e;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->l0:F

    const-string v0, "payingUser"

    .line 8
    invoke-virtual {p2, v0, v1}, Lcom/startapp/sdk/adsbase/e;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->k0:Z

    .line 9
    invoke-static {}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->t()Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->n0:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->m0:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;

    .line 12
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->a()Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->b()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/e;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->o0:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->f(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/startapp/sdk/adsbase/SimpleTokenUtils;->a()Lcom/startapp/sdk/common/utils/Pair;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->q0:Lcom/startapp/sdk/common/utils/Pair;

    .line 15
    invoke-static {}, Lcom/startapp/sdk/adsbase/SimpleTokenUtils;->c()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->t0:J

    .line 17
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/sdk/components/ComponentLocator;->f()Lcom/startapp/e2;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/startapp/e2;->b()Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->r0:Ljava/lang/Integer;

    .line 19
    invoke-virtual {p2}, Lcom/startapp/e2;->a()Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->s0:Ljava/lang/Boolean;

    .line 21
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->b()Lcom/startapp/x;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/startapp/x;->a()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/startapp/y0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/e;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "shared_prefs_app_apk_hash"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/startapp/sdk/adsbase/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "SHA-256"

    .line 38
    sget-object v2, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 39
    :try_start_0
    invoke-static {p2, p0}, Lcom/startapp/a0;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 41
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object p0

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    move-object v2, v1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lcom/startapp/m8;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/startapp/sdk/common/SDKException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/startapp/y0;->a(Lcom/startapp/m8;)V

    .line 2
    sget-object v0, Lcom/startapp/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/startapp/a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 5
    iget v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->i0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "totalSessions"

    .line 6
    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 7
    iget v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->j0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "daysSinceFirstSession"

    .line 8
    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 9
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->k0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "payingUser"

    .line 10
    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 11
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->n0:Ljava/lang/String;

    const-string v1, "profileId"

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 13
    iget v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->l0:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "paidAmount"

    .line 14
    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 15
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->m0:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;

    const-string v1, "reason"

    .line 16
    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 17
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->r0:Ljava/lang/Integer;

    const-string v1, "ct"

    .line 18
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 19
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->s0:Ljava/lang/Boolean;

    const-string v1, "apc"

    .line 20
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 21
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 23
    iget-boolean v0, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->C:Z

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "testAdsEnabled"

    .line 25
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 26
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->o0:Ljava/lang/String;

    const-string v1, "apkHash"

    .line 27
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 28
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->p0:Ljava/lang/Integer;

    const-string v1, "ian"

    .line 29
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 30
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->q0:Lcom/startapp/sdk/common/utils/Pair;

    iget-object v1, v0, Lcom/startapp/sdk/common/utils/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/startapp/sdk/common/utils/Pair;->second:Ljava/lang/Object;

    .line 31
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 33
    iget-wide v0, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->t0:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "firstInstalledAppTS"

    .line 35
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->h0:Lcom/startapp/sdk/adsbase/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "firstSessionTime"

    invoke-virtual {v2, v5, v3, v4}, Lcom/startapp/sdk/adsbase/e;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 2
    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public f(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->I()Lcom/startapp/sdk/adsbase/remoteconfig/SimpleTokenConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0, p1}, Lcom/startapp/sdk/adsbase/remoteconfig/SimpleTokenConfig;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget v0, Lcom/startapp/a0;->a:I

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/a0;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 9
    invoke-static {v1}, Lcom/startapp/a0;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/startapp/sdk/common/Constants;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    nop

    :cond_3
    if-lez v0, :cond_4

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest;->p0:Ljava/lang/Integer;

    :cond_4
    :goto_1
    return-void
.end method
