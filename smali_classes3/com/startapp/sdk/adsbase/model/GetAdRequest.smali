.class public Lcom/startapp/sdk/adsbase/model/GetAdRequest;
.super Lcom/startapp/y0;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/adsbase/model/GetAdRequest$VideoRequestMode;,
        Lcom/startapp/sdk/adsbase/model/GetAdRequest$VideoRequestType;
    }
.end annotation


# instance fields
.field public A0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public C0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public E0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public F0:Lcom/startapp/sdk/common/utils/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/sdk/common/utils/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G0:Z

.field public H0:J

.field public I0:I

.field public J0:Ljava/lang/String;

.field public K0:Ljava/lang/String;

.field public L0:Ljava/lang/String;

.field public M0:Z

.field public N0:Ljava/lang/Boolean;

.field public O0:Ljava/lang/Boolean;

.field public P0:Ljava/lang/String;

.field public Q0:Ljava/lang/String;

.field public R0:Ljava/lang/String;

.field public S0:Lcom/startapp/sdk/adsbase/Ad$AdType;

.field public h0:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

.field public i0:Z

.field public j0:Ljava/lang/Integer;

.field public k0:Ljava/lang/Long;

.field public l0:Ljava/lang/Boolean;

.field public m0:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

.field public n0:Ljava/lang/String;

.field public o0:Ljava/lang/String;

.field public p0:I

.field public q0:Z

.field public r0:Ljava/lang/Boolean;

.field public s0:Z

.field public t0:Ljava/lang/Double;

.field public u0:Ljava/lang/String;

.field public v0:Ljava/lang/String;

.field public w0:Ljava/lang/Integer;

.field public x0:Z

.field public y0:Z

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/startapp/y0;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->p0:I

    .line 5
    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->q0:Z

    .line 7
    invoke-static {}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->k()Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->M()Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->s0:Z

    .line 17
    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->x0:Z

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->z0:I

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->A0:Ljava/util/Set;

    .line 27
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->B0:Ljava/util/Set;

    .line 28
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->C0:Ljava/util/Set;

    .line 29
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->D0:Ljava/util/Set;

    .line 30
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->E0:Ljava/util/Set;

    .line 33
    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->G0:Z

    .line 442
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->Q0:Ljava/lang/String;

    .line 443
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->R0:Ljava/lang/String;

    .line 444
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->S0:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    sget-object v2, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    invoke-virtual {v2}, Lcom/startapp/t9;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->H0:J

    .line 446
    sget-object v0, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 447
    invoke-static {}, Lcom/startapp/e;->a()Lcom/startapp/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/e;->b()I

    move-result v0

    iput v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->I0:I

    .line 449
    invoke-static {}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->t()Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->J0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/common/utils/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapp/sdk/adsbase/model/AdPreferences;",
            "Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;",
            "Lcom/startapp/sdk/common/utils/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->h0:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 2
    iput-object p4, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->F0:Lcom/startapp/sdk/common/utils/Pair;

    .line 3
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getAi()Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->N0:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getAs()Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->O0:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p2, p1}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getGender(Landroid/content/Context;)Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->m0:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    .line 6
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getKeywords()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->n0:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->isTestMode()Z

    move-result p3

    iput-boolean p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->i0:Z

    .line 8
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getCategories()Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->A0:Ljava/util/Set;

    .line 9
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getCategoriesExclude()Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->B0:Ljava/util/Set;

    .line 10
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->b()Z

    move-result p3

    iput-boolean p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->q0:Z

    .line 11
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->a()Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->w0:Ljava/lang/Integer;

    .line 12
    sget p3, Lcom/startapp/a0;->a:I

    .line 13
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string p4, "auto_time"

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt p3, v2, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-lez p3, :cond_1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, p4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-lez p3, :cond_1

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 18
    :goto_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->r0:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getMinCpm()Ljava/lang/Double;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->t0:Ljava/lang/Double;

    .line 20
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getAdTag()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->u0:Ljava/lang/String;

    .line 21
    sget-object p3, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->d:Ljava/lang/Object;

    const-string p3, "StartappMetadata"

    .line 22
    invoke-virtual {p1, p3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    xor-int/2addr p3, v0

    .line 23
    iput-boolean p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->x0:Z

    .line 28
    iget-object p3, p2, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->Q0:Ljava/lang/String;

    .line 30
    iget-object p3, p2, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->R0:Ljava/lang/String;

    .line 32
    iget-object p3, p2, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->o0:Ljava/lang/String;

    .line 34
    iget-object p3, p2, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 35
    iput-object p3, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->S0:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 36
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getCustomProductId()Ljava/lang/String;

    move-result-object p3

    .line 37
    iput-object p3, p0, Lcom/startapp/y0;->b:Ljava/lang/String;

    .line 38
    sget-object p3, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 39
    invoke-virtual {p3}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->G()Lcom/startapp/sdk/adsbase/VideoConfig;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 41
    invoke-virtual {p3}, Lcom/startapp/sdk/adsbase/VideoConfig;->l()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 42
    invoke-virtual {p3}, Lcom/startapp/sdk/adsbase/VideoConfig;->l()Ljava/lang/String;

    move-result-object p3

    const-string p4, "muted"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_4

    :try_start_0
    const-string p3, "audio"

    .line 46
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 47
    instance-of p3, p1, Landroid/media/AudioManager;

    if-eqz p3, :cond_5

    .line 48
    check-cast p1, Landroid/media/AudioManager;

    const/4 p3, 0x3

    .line 49
    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 51
    :goto_3
    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->y0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 54
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 57
    :cond_4
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->y0:Z

    .line 58
    :cond_5
    :goto_4
    iget-object p1, p2, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 59
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->D0:Ljava/util/Set;

    return-void
.end method

.method public a(Lcom/startapp/m8;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/startapp/sdk/common/SDKException;
        }
    .end annotation

    .line 60
    invoke-super {p0, p1}, Lcom/startapp/y0;->a(Lcom/startapp/m8;)V

    .line 62
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->h0:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    const/4 v2, 0x1

    .line 63
    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 64
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->i0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "testMode"

    const/4 v3, 0x0

    .line 65
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 66
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->m0:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    const-string v1, "gender"

    .line 67
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 68
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->n0:Ljava/lang/String;

    const-string v1, "keywords"

    .line 69
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 70
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->o0:Ljava/lang/String;

    const-string v1, "template"

    .line 71
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 72
    iget v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->p0:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adsNumber"

    .line 73
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 74
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->A0:Ljava/util/Set;

    const-string v1, "category"

    .line 75
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/util/Set;ZZ)V

    .line 76
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->B0:Ljava/util/Set;

    const-string v1, "categoryExclude"

    .line 77
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/util/Set;ZZ)V

    .line 78
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->C0:Ljava/util/Set;

    const-string v1, "packageExclude"

    .line 79
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/util/Set;ZZ)V

    .line 80
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->E0:Ljava/util/Set;

    const-string v1, "campaignExclude"

    .line 81
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/util/Set;ZZ)V

    .line 82
    iget v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->z0:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offset"

    .line 83
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 84
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->N0:Ljava/lang/Boolean;

    const-string v1, "ai"

    .line 85
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 86
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->O0:Ljava/lang/Boolean;

    const-string v1, "as"

    .line 87
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 88
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->t0:Ljava/lang/Double;

    sget-object v1, Lcom/startapp/wb;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    const-string v0, "%.2f"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v4, "minCPM"

    .line 90
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 91
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->u0:Ljava/lang/String;

    const-string v4, "adTag"

    .line 92
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 93
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->v0:Ljava/lang/String;

    const-string v4, "previousAdId"

    .line 94
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 95
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->s0:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "twoClicks"

    .line 96
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 97
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->G0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "engInclude"

    .line 98
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 99
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->S0:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 100
    sget-object v4, Lcom/startapp/sdk/adsbase/Ad$AdType;->INTERSTITIAL:Lcom/startapp/sdk/adsbase/Ad$AdType;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/startapp/sdk/adsbase/Ad$AdType;->RICH_TEXT:Lcom/startapp/sdk/adsbase/Ad$AdType;

    if-ne v0, v4, :cond_2

    :cond_1
    const-string v4, "type"

    .line 101
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 102
    :cond_2
    iget-wide v4, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->H0:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "timeSinceSessionStart"

    .line 103
    invoke-virtual {p1, v4, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 104
    iget v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->I0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "adsDisplayed"

    .line 105
    invoke-virtual {p1, v4, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 106
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->J0:Ljava/lang/String;

    const-string v4, "profileId"

    .line 107
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 108
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->q0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "hardwareAccelerated"

    .line 109
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 110
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->w0:Ljava/lang/Integer;

    const-string v4, "autoLoadAmount"

    .line 111
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 112
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->r0:Ljava/lang/Boolean;

    const-string v4, "dts"

    .line 113
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    const-string v0, "downloadingMode"

    const-string v4, "CACHE"

    .line 114
    invoke-virtual {p1, v0, v4, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 115
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->K0:Ljava/lang/String;

    const-string v4, "primaryImg"

    .line 116
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 117
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->L0:Ljava/lang/String;

    const-string v4, "moreImg"

    .line 118
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 119
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->M0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "contentAd"

    .line 120
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 121
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->j0:Ljava/lang/Integer;

    const-string v4, "ct"

    .line 122
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 123
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->k0:Ljava/lang/Long;

    const-string v4, "tsc"

    .line 124
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 125
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->l0:Ljava/lang/Boolean;

    const-string v4, "apc"

    .line 126
    invoke-virtual {p1, v4, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 127
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 129
    iget-boolean v0, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->C:Z

    if-eqz v0, :cond_3

    .line 130
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_3
    const-string v0, "testAdsEnabled"

    .line 131
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 132
    invoke-static {}, Lcom/startapp/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/startapp/a;->b:Ljava/lang/String;

    .line 134
    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 135
    sget-object v1, Lcom/startapp/a;->d:Ljava/lang/String;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    iget-object v5, p0, Lcom/startapp/y0;->b:Ljava/lang/String;

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->h0:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v5, p0, Lcom/startapp/y0;->Q:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, ""

    .line 141
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v5, p0, Lcom/startapp/y0;->c:Ljava/lang/String;

    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 144
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->y0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sound"

    .line 145
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 146
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->Q0:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "country"

    .line 147
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->R0:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v1, "advertiserId"

    .line 149
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 150
    :cond_6
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->D0:Ljava/util/Set;

    if-eqz v0, :cond_7

    const-string v1, "packageInclude"

    .line 151
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/util/Set;ZZ)V

    .line 152
    :cond_7
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->x0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "defaultMetaData"

    .line 153
    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 154
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->F0:Lcom/startapp/sdk/common/utils/Pair;

    iget-object v1, v0, Lcom/startapp/sdk/common/utils/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/startapp/sdk/common/utils/Pair;->second:Ljava/lang/Object;

    .line 155
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 156
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->P0:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v1, "trv"

    .line 157
    invoke-virtual {p1, v1, v0, v3, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_8
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->S0:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 2
    sget-object v1, Lcom/startapp/sdk/adsbase/Ad$AdType;->VIDEO:Lcom/startapp/sdk/adsbase/Ad$AdType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/startapp/sdk/adsbase/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/sdk/adsbase/Ad$AdType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->s()Lcom/startapp/w9;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->h0:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/startapp/w9;->a:Ljava/util/Map;

    new-instance v1, Lcom/startapp/w9$a;

    const/4 v2, -0x1

    .line 6
    invoke-direct {v1, v0, v2}, Lcom/startapp/w9$a;-><init>(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;I)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->v0:Ljava/lang/String;

    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->f()Lcom/startapp/e2;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/startapp/e2;->b()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->j0:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p1}, Lcom/startapp/e2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/startapp/e2;->b:Lcom/startapp/sdk/adsbase/e;

    const-string v1, "consentTimestamp"

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/e;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/startapp/e2;->b:Lcom/startapp/sdk/adsbase/e;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapp/sdk/adsbase/e;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->k0:Ljava/lang/Long;

    .line 12
    invoke-virtual {p1}, Lcom/startapp/e2;->a()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->l0:Ljava/lang/Boolean;

    return-void
.end method
