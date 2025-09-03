.class public Lcom/startapp/g5;
.super Lcom/startapp/f3;
.source "Sta"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/g5$g;
    }
.end annotation


# instance fields
.field public A:J

.field public B:Lcom/startapp/j9;

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Z

.field public G:Z

.field public H:Lcom/startapp/q7;

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public v:Landroid/webkit/WebView;

.field public w:Landroid/widget/RelativeLayout;

.field public x:Landroid/widget/ImageButton;

.field public y:Ljava/lang/Long;

.field public z:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startapp/f3;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/startapp/g5;->A:J

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/startapp/g5;->C:Z

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/startapp/g5;->D:Z

    .line 17
    iput v0, p0, Lcom/startapp/g5;->E:I

    .line 18
    iput-boolean v0, p0, Lcom/startapp/g5;->F:Z

    .line 24
    new-instance v0, Lcom/startapp/g5$a;

    invoke-direct {v0, p0}, Lcom/startapp/g5$a;-><init>(Lcom/startapp/g5;)V

    iput-object v0, p0, Lcom/startapp/g5;->I:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/startapp/g5$b;

    invoke-direct {v0, p0}, Lcom/startapp/g5$b;-><init>(Lcom/startapp/g5;)V

    iput-object v0, p0, Lcom/startapp/g5;->J:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 2
    invoke-static {v0}, Lcom/startapp/a6;->a(Landroid/content/Context;)Lcom/startapp/a6;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/f3;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.startapp.android.CloseAdActivity"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/a6;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v0, "adCacheTtl"

    const-string v1, "lastLoadTime"

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/startapp/g5;->G:Z

    .line 4
    iget-object p1, p0, Lcom/startapp/f3;->a:Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/startapp/f3;->a:Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/startapp/g5;->y:Ljava/lang/Long;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/startapp/f3;->a:Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/startapp/f3;->a:Landroid/content/Intent;

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/startapp/g5;->z:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    const-string v2, "postrollHtml"

    .line 14
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/startapp/f3;->a(Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/startapp/g5;->y:Ljava/lang/Long;

    .line 20
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/startapp/g5;->z:Ljava/lang/Long;

    :cond_4
    const/4 v0, 0x0

    const-string v1, "videoCompletedBroadcastSent"

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/g5;->D:Z

    const-string v0, "replayNum"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/startapp/g5;->E:I

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .line 71
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 72
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->S()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/startapp/q7;

    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/startapp/q7;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    .line 77
    invoke-virtual {v0}, Lcom/startapp/q7;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/f3;->c:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;->b:Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;

    if-eqz v0, :cond_2

    .line 84
    iget-object v2, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    sget-object v3, Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;->c:Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v2, v0, v3, v1}, Lcom/startapp/q7;->a(Landroid/view/View;Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    sget-object v2, Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;->b:Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v0, p1, v2, v1}, Lcom/startapp/q7;->a(Landroid/view/View;Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    :cond_3
    iget-object p1, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    iget-object v0, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Lcom/startapp/q7;->a(Landroid/view/View;)V

    .line 97
    iget-object p1, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    invoke-virtual {p1}, Lcom/startapp/q7;->e()V

    .line 98
    iget-object p1, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    invoke-virtual {p1}, Lcom/startapp/q7;->d()V

    .line 99
    iget-object p1, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    invoke-virtual {p1}, Lcom/startapp/q7;->b()V

    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;IZ)V
    .locals 8

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnClickCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/startapp/f3;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dParam"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 53
    invoke-static {v1}, Lcom/startapp/a6;->a(Landroid/content/Context;)Lcom/startapp/a6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/a6;->a(Landroid/content/Intent;)Z

    .line 54
    iget-object v0, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 55
    invoke-static {v0}, Lcom/startapp/j0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/startapp/f3;->n:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-static {v0, v1}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)Z

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 59
    iget-object v2, p0, Lcom/startapp/f3;->j:[Ljava/lang/String;

    .line 60
    array-length v3, v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-ge p2, v3, :cond_1

    new-array v3, v4, [Ljava/lang/String;

    aget-object v2, v2, p2

    aput-object v2, v3, v7

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    .line 61
    :goto_1
    invoke-virtual {p0}, Lcom/startapp/g5;->o()Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    move-result-object v5

    .line 62
    invoke-virtual {p0, p2}, Lcom/startapp/f3;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    move-object v2, p1

    move-object v4, v5

    move v5, p2

    move v6, p3

    .line 63
    invoke-static/range {v1 .. v6}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;ZZ)V

    .line 64
    sget-object p1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 65
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k()Z

    move-result p1

    if-nez p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/startapp/f3;->l:Lcom/startapp/sdk/adsbase/Ad;

    .line 67
    instance-of p2, p1, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;

    if-nez p2, :cond_3

    goto :goto_3

    .line 69
    :cond_3
    check-cast p1, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;->u()Z

    move-result v7

    :goto_3
    if-eqz v7, :cond_5

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/startapp/g5;->b()V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/startapp/g5;->B:Lcom/startapp/j9;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/startapp/j9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 27
    iget-object v0, p0, Lcom/startapp/f3;->l:Lcom/startapp/sdk/adsbase/Ad;

    .line 28
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 29
    invoke-static {v1}, Lcom/startapp/j0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/startapp/f3;->n:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-static {v1, v2}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 32
    sget-object v1, Lcom/startapp/wb;->a:Ljava/util/Map;

    instance-of v0, v0, Lcom/startapp/sdk/ads/splash/SplashAd;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_1
    invoke-virtual {p0, p1}, Lcom/startapp/g5;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 37
    iget-object v4, p0, Lcom/startapp/f3;->f:[Z

    .line 38
    aget-boolean v4, v4, v1

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 39
    invoke-virtual {p0, p1, v1, p2}, Lcom/startapp/g5;->b(Ljava/lang/String;IZ)V

    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/startapp/g5;->a(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 44
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    return v3

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/startapp/f3;->f:[Z

    .line 46
    aget-boolean v1, v1, v3

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 47
    invoke-virtual {p0, p1, v3, p2}, Lcom/startapp/g5;->b(Ljava/lang/String;IZ)V

    goto :goto_2

    .line 49
    :cond_4
    invoke-virtual {p0, p1, v3, p2}, Lcom/startapp/g5;->a(Ljava/lang/String;IZ)V

    :goto_2
    return v2
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 2
    new-instance v1, Lcom/startapp/f3$b;

    invoke-direct {v1, p0}, Lcom/startapp/f3$b;-><init>(Lcom/startapp/f3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->o:Z

    .line 6
    iget-object v0, p0, Lcom/startapp/g5;->B:Lcom/startapp/j9;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "AD_CLOSED_TOO_QUICKLY"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/startapp/j9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 9
    new-instance v1, Lcom/startapp/g5$f;

    invoke-direct {v1, p0}, Lcom/startapp/g5$f;-><init>(Lcom/startapp/g5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/startapp/f3;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "postrollHtml"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/startapp/g5;->y:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "lastLoadTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/startapp/g5;->z:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "adCacheTtl"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 24
    :cond_2
    iget-boolean v0, p0, Lcom/startapp/g5;->D:Z

    const-string v1, "videoCompletedBroadcastSent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    iget v0, p0, Lcom/startapp/g5;->E:I

    const-string v1, "replayNum"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/startapp/g5;->C:Z

    .line 11
    new-instance v0, Lcom/startapp/g5$d;

    invoke-direct {v0, p0}, Lcom/startapp/g5$d;-><init>(Lcom/startapp/g5;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final b(Ljava/lang/String;IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 27
    sget-object v2, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 28
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k()Z

    move-result v2

    .line 29
    iget-object v3, v0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 30
    iget-object v4, v0, Lcom/startapp/f3;->j:[Ljava/lang/String;

    .line 31
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v1, v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v5, v6

    goto :goto_0

    :cond_0
    move-object v5, v7

    .line 32
    :goto_0
    iget-object v4, v0, Lcom/startapp/f3;->k:[Ljava/lang/String;

    .line 33
    array-length v8, v4

    if-ge v1, v8, :cond_1

    aget-object v4, v4, v1

    move-object v8, v4

    goto :goto_1

    :cond_1
    move-object v8, v7

    .line 34
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/g5;->o()Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    move-result-object v9

    .line 35
    sget-object v4, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 36
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->z()J

    move-result-wide v10

    .line 37
    sget-object v4, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 38
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->y()J

    move-result-wide v12

    .line 39
    invoke-virtual {v0, v1}, Lcom/startapp/f3;->a(I)Z

    move-result v14

    .line 40
    iget-object v4, v0, Lcom/startapp/f3;->r:[Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    if-ltz v1, :cond_2

    array-length v15, v4

    if-ge v1, v15, :cond_2

    .line 41
    aget-object v1, v4, v1

    goto :goto_2

    :cond_2
    move-object v1, v7

    :goto_2
    if-nez v2, :cond_5

    .line 42
    iget-object v2, v0, Lcom/startapp/f3;->l:Lcom/startapp/sdk/adsbase/Ad;

    .line 43
    instance-of v4, v2, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;

    if-nez v4, :cond_3

    goto :goto_3

    .line 45
    :cond_3
    check-cast v2, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;

    invoke-virtual {v2}, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;->u()Z

    move-result v6

    :goto_3
    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v15, v7

    goto :goto_5

    .line 46
    :cond_5
    :goto_4
    new-instance v2, Lcom/startapp/g5$e;

    invoke-direct {v2, v0}, Lcom/startapp/g5$e;-><init>(Lcom/startapp/g5;)V

    move-object v15, v2

    :goto_5
    move-object/from16 v4, p1

    move-object v6, v8

    move-object v7, v9

    move-wide v8, v10

    move-wide v10, v12

    move v12, v14

    move-object v13, v1

    move/from16 v14, p3

    .line 47
    invoke-static/range {v3 .. v15}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;JJZLjava/lang/Boolean;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/startapp/g5;->F:Z

    if-nez v0, :cond_0

    const-string v0, "index="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startapp/g5;->i()V

    .line 2
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->o:Z

    .line 5
    iget-object v0, p0, Lcom/startapp/g5;->B:Lcom/startapp/j9;

    const-string v2, "AD_CLOSED_TOO_QUICKLY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/startapp/j9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return v1
.end method

.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startapp/f3;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 3
    invoke-static {v0}, Lcom/startapp/a6;->a(Landroid/content/Context;)Lcom/startapp/a6;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/f3;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/startapp/a6;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/startapp/f3;->d:Landroid/content/BroadcastReceiver;

    .line 6
    iget-object v1, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/startapp/q7;->a()V

    .line 8
    iput-object v0, p0, Lcom/startapp/g5;->H:Lcom/startapp/q7;

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    sget-object v2, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 12
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/g5;->B:Lcom/startapp/j9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/j9;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/startapp/a0;->a(Landroid/webkit/WebView;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 10

    const-string v0, "@jsTag@"

    .line 1
    iget-object v1, p0, Lcom/startapp/f3;->l:Lcom/startapp/sdk/adsbase/Ad;

    .line 2
    instance-of v2, v1, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;

    invoke-virtual {v1}, Lcom/startapp/sdk/ads/interstitials/InterstitialAd;->d()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/startapp/g5;->b()V

    goto/16 :goto_2

    .line 6
    :cond_1
    sget-object v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->o:Z

    .line 9
    iget-object v1, p0, Lcom/startapp/g5;->B:Lcom/startapp/j9;

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Lcom/startapp/j9;

    .line 11
    iget-object v5, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 12
    iget-object v6, p0, Lcom/startapp/f3;->i:[Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/startapp/g5;->n()Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    move-result-object v7

    invoke-virtual {p0}, Lcom/startapp/g5;->m()J

    move-result-wide v8

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/startapp/j9;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;J)V

    iput-object v1, p0, Lcom/startapp/g5;->B:Lcom/startapp/j9;

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    if-nez v1, :cond_5

    .line 17
    new-instance v1, Landroid/widget/RelativeLayout;

    .line 18
    iget-object v4, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 19
    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/g5;->w:Landroid/widget/RelativeLayout;

    const-string v4, "StartApp Ad"

    .line 20
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v1, p0, Lcom/startapp/g5;->w:Landroid/widget/RelativeLayout;

    const/high16 v4, 0x57f00000

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 22
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 23
    iget-object v4, p0, Lcom/startapp/g5;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 25
    invoke-static {v1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/startapp/sdk/components/ComponentLocator;->w()Lcom/startapp/md;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/startapp/md;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    const/high16 v4, -0x1000000

    .line 29
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 30
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 31
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v4, 0x1020002

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x777777

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 33
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 34
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_3

    .line 38
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 39
    :cond_3
    iget-boolean v1, p0, Lcom/startapp/f3;->u:Z

    if-eqz v1, :cond_4

    .line 40
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/startapp/a0;->a(Landroid/webkit/WebView;Landroid/graphics/Paint;)V

    .line 43
    :cond_4
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    new-instance v2, Lcom/startapp/g5$c;

    invoke-direct {v2, p0}, Lcom/startapp/g5$c;-><init>(Lcom/startapp/g5;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 49
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 51
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/g5;->l()Lcom/startapp/n5;

    move-result-object v2

    const-string v3, "startappwall"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/startapp/g5;->q()V

    .line 55
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/startapp/g5;->b(Landroid/webkit/WebView;)V

    .line 56
    invoke-virtual {p0}, Lcom/startapp/g5;->v()V

    .line 57
    iget-object v1, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    .line 58
    iget-object v2, p0, Lcom/startapp/f3;->m:Ljava/lang/String;

    .line 59
    invoke-static {v1, v2}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    const-string v1, "true"

    .line 62
    iget-object v2, p0, Lcom/startapp/f3;->m:Ljava/lang/String;

    .line 63
    invoke-static {v2, v0, v0}, Lcom/startapp/wb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/g5;->F:Z

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    iget-object v1, p0, Lcom/startapp/g5;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/startapp/g5;->w:Landroid/widget/RelativeLayout;

    .line 72
    new-instance v7, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

    .line 73
    iget-object v2, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 74
    sget-object v3, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;->b:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;

    .line 75
    iget-object v4, p0, Lcom/startapp/f3;->n:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 76
    iget-object v5, p0, Lcom/startapp/f3;->o:Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;

    .line 77
    iget-object v1, p0, Lcom/startapp/f3;->l:Lcom/startapp/sdk/adsbase/Ad;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/Ad;->getConsentData()Lcom/startapp/sdk/adsbase/consent/ConsentData;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;Lcom/startapp/sdk/adsbase/consent/ConsentData;)V

    iput-object v7, p0, Lcom/startapp/f3;->c:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

    .line 78
    invoke-virtual {v7, v0}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;->a(Landroid/widget/RelativeLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 81
    invoke-virtual {p0}, Lcom/startapp/g5;->b()V

    goto :goto_1

    .line 84
    :cond_5
    invoke-static {v1}, Lcom/startapp/a0;->b(Landroid/webkit/WebView;)V

    .line 85
    iget-object v0, p0, Lcom/startapp/g5;->B:Lcom/startapp/j9;

    invoke-virtual {v0}, Lcom/startapp/j9;->b()V

    .line 88
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/g5;->A:J

    :goto_2
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/f3;->e:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 5
    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/startapp/g5;->o()Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 2
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 3
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v1, Landroid/widget/ImageButton;

    .line 6
    iget-object v2, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 7
    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 9
    iget-object v1, p0, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    const/16 v2, 0x32

    .line 11
    invoke-static {v1, v2}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v1

    .line 12
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 13
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14
    iget-object v3, p0, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/startapp/g5;->a(Landroid/widget/RelativeLayout;)V

    .line 18
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    iget-object v1, p0, Lcom/startapp/g5;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 24
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public k()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/g5;->A:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public l()Lcom/startapp/n5;
    .locals 6

    .line 1
    new-instance v0, Lcom/startapp/n5;

    .line 2
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 3
    iget-object v2, p0, Lcom/startapp/g5;->I:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/startapp/g5;->J:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/startapp/g5;->o()Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/startapp/f3;->a(I)Z

    move-result v5

    .line 4
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/startapp/n5;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;Z)V

    .line 5
    iput-object v2, v0, Lcom/startapp/n5;->d:Ljava/lang/Runnable;

    .line 6
    iput-object v3, v0, Lcom/startapp/n5;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method public m()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/f3;->q:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    sget-object v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 7
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 2
    iget-object v1, p0, Lcom/startapp/f3;->p:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public o()Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;
    .locals 4

    .line 1
    new-instance v0, Lcom/startapp/sdk/adsbase/commontracking/CloseTrackingParams;

    invoke-virtual {p0}, Lcom/startapp/g5;->k()J

    move-result-wide v1

    .line 2
    iget-object v3, p0, Lcom/startapp/f3;->p:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/sdk/adsbase/commontracking/CloseTrackingParams;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/g5;->B:Lcom/startapp/j9;

    invoke-virtual {v0}, Lcom/startapp/j9;->b()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/startapp/g5;->a(Landroid/view/View;)V

    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/g5;->G:Z

    return v0
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startapp/g5;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/startapp/g5;->D:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/startapp/g5;->E:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/startapp/g5;->D:Z

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnVideoCompleted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/startapp/f3;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dParam"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 7
    invoke-static {v1}, Lcom/startapp/a6;->a(Landroid/content/Context;)Lcom/startapp/a6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/a6;->a(Landroid/content/Intent;)Z

    .line 8
    invoke-virtual {p0}, Lcom/startapp/g5;->t()V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/g5$g;

    invoke-direct {v1, p0}, Lcom/startapp/g5$g;-><init>(Lcom/startapp/g5;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA39pVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDozODRkZTAxYi00OWRkLWM4NDYtYThkNC0wZWRiMDMwYTZlODAiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QkE0Q0U2MUY2QzA0MTFFNUE3MkJGQjQ1MTkzOEYxQUUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QkE0Q0U2MUU2QzA0MTFFNUE3MkJGQjQ1MTkzOEYxQUUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjlkZjAyMGU0LTNlYmUtZTY0ZC04YjRiLWM5ZWY4MTU4ZjFhYyIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOmU1MzEzNDdlLTZjMDEtMTFlNS1hZGZlLThmMTBjZWYxMGRiZSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PngNsEEAAANeSURBVHjatFfNS1tBEH+pUZOQ0B4i3sTSxHMRFNQoFBEP7dHgvyDiKWgguQra9F+oxqNiwOTQ+oFI1ZM3jSf1YK5FL41ooaKZzu+x+4gv2bx9Rgd+JNn5zO7s7IzH0CQiCvLHZ8YnxkfGe8ZbwS4zSowTxi/GT4/Hc2u8BLHjCOM745b06VboRJpx7GN8ZfyDxUqlQgcHB5RMJmloaIg6Ozupra3NBL5jDTzIQFYQdDOw5db5B8YxLDw+PtLKygr19PQQWDqIRqOUzWZNXUHH2rvBgr2M39C6uLig/v5+bcd2QLdUKskgYLNX57yvIL2zs0OhUOjZziU6Ojro8PBQBnGl3Alm+BknkMI54mybdS4BW3t7ezKIInzVCwDJYm4Zon4p5xLYzfPzcxlEpl7S3SNpmjlznZwQiXn/5CjEnTUzt5GBsbExamlpUfLBg0wjG8vLy3IXlqTzEAoH7m4kElEqTk1Nmfd7bW2tbhBYAw8ykFXZgQ9RJ1CsQghgEr/29/eVStPT09XFhdbX18nr9Vr81tZWyuVyFh+yMzMzSnvwJWjyDS+MYic2NzeV17O7u9vg2m79jsfjBv9bg7PbxOrqqjExMWHxIdvV1aW0V+VrFDtwhFCGh4cbnl0mk6kp+BsbGybsBNlGtkZGRqToEQK4xjfUc6csXlhYcHyFFhcXHe3Al6BrQz427e3tWldpfn5e6Rw83cIkHyvXAUAZb4SdsKZbPe0BaB+Bz+cjTiDlDmxtbZkybo9AKwn9fj9tb2875gBkINvIFnzJJMQ1PMV9GBgYUF6bQCBgFAoFY3x8/Ml6KpUy0un0kzXIQBY6KqrydapViPL5fM0/Rfcj+fhuJw5CqxBpleJYLEY3NzeW8dnZ2RoZrEmCLHQcSvGdWYrFe7CEFTwUqqjR85XLZUokEkoZ8CADWe3HqKoTcnyOdW5KI5m+vj56eHiQz3G0bkNyeXn5ag3J2dmZ/PffVC1Z8bVast3d3eqWLKDVlAaDwaadh8Nhvaa0XluOHg7n9lzn0MWRarfltp0oysEErRqGDTeDCbK9ajApuh7TxGiWERlrjWZzc3M0ODhYM5phDTzbaHb/rNHMFkhUNK13LobTv6K2RJ3se1yO519s4/k7wf5jG89/6I7n/wUYAGo3YtcprD4sAAAAAElFTkSuQmCC"

    .line 4
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1}, Lcom/startapp/g1;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v0, p0, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    iget-object v0, p0, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
