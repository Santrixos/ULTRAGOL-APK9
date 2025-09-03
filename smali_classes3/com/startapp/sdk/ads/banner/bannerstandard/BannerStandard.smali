.class public Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;
.super Lcom/startapp/sdk/ads/banner/BannerBase;
.source "Sta"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;
.implements Lcom/startapp/sdk/ads/banner/BannerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;
    }
.end annotation


# static fields
.field public static final synthetic S:I


# instance fields
.field public A:Lcom/startapp/sdk/adsbase/model/AdPreferences;

.field public final B:Lcom/startapp/r0;

.field public C:Lcom/startapp/sdk/ads/banner/BannerListener;

.field public D:Z

.field public E:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

.field public F:Landroid/widget/RelativeLayout;

.field public G:Landroid/widget/RelativeLayout;

.field public H:Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

.field public I:Lcom/startapp/j9;

.field public J:Lcom/startapp/q7;

.field public K:Lcom/startapp/id;

.field public L:Lcom/startapp/id;

.field public M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

.field public N:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

.field public O:Landroid/view/ViewGroup;

.field public final P:Lcom/startapp/j9$a;

.field public final Q:Ljava/lang/Runnable;

.field public final R:Ljava/lang/Runnable;

.field public r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

.field public s:Z

.field public t:Z

.field public twoPartWebView:Landroid/webkit/WebView;

.field public u:Z

.field public v:Z

.field public w:Z

.field public webView:Landroid/webkit/WebView;

.field public final x:Landroid/os/Handler;

.field public y:J

.field public z:Lcom/startapp/sdk/ads/banner/BannerOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/sdk/ads/banner/BannerListener;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/sdk/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/ads/banner/BannerListener;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/sdk/ads/banner/BannerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->s:Z

    const/4 p2, 0x1

    .line 163
    iput-boolean p2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->t:Z

    .line 164
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->u:Z

    .line 165
    iput-boolean p2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->v:Z

    .line 166
    iput-boolean p2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->w:Z

    .line 173
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->x:Landroid/os/Handler;

    .line 179
    new-instance p2, Lcom/startapp/r0;

    .line 180
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->getWidthInDp()I

    move-result p3

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->getHeightInDp()I

    move-result v0

    invoke-direct {p2, p3, v0}, Lcom/startapp/r0;-><init>(II)V

    iput-object p2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 183
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->D:Z

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->E:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

    .line 186
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    .line 203
    new-instance p1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$1;

    invoke-direct {p1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$1;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->P:Lcom/startapp/j9$a;

    .line 211
    new-instance p1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$2;

    invoke-direct {p1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$2;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->Q:Ljava/lang/Runnable;

    .line 219
    new-instance p1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$3;

    invoke-direct {p1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$3;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->R:Ljava/lang/Runnable;

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 318
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/ads/banner/BannerListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->setBannerListener(Lcom/startapp/sdk/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/ads/banner/BannerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->setBannerListener(Lcom/startapp/sdk/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;)V
    .locals 3

    .line 17
    invoke-direct {p0, p1}, Lcom/startapp/sdk/ads/banner/BannerBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->s:Z

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->t:Z

    .line 20
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->u:Z

    .line 21
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->v:Z

    .line 22
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->w:Z

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->x:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/startapp/r0;

    .line 36
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->getWidthInDp()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->getHeightInDp()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/startapp/r0;-><init>(II)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 39
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->D:Z

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->E:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

    .line 42
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    .line 59
    new-instance p1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$1;

    invoke-direct {p1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$1;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->P:Lcom/startapp/j9$a;

    .line 67
    new-instance p1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$2;

    invoke-direct {p1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$2;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->Q:Ljava/lang/Runnable;

    .line 75
    new-instance p1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$3;

    invoke-direct {p1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$3;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->R:Ljava/lang/Runnable;

    .line 154
    :try_start_0
    iput-boolean p2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->v:Z

    .line 155
    iput-object p3, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->A:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    .line 156
    iput-object p4, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 157
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 159
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->getState()Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    move-result-object v0

    sget-object v1, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->a:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->getState()Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    move-result-object v0

    sget-object v1, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->e:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->getState()Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    move-result-object v0

    sget-object v2, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->d:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->getState()Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    move-result-object v0

    sget-object v2, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->c:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->getState()Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    move-result-object v0

    sget-object v2, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->b:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    if-ne v0, v2, :cond_6

    .line 225
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->R:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->setState(Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;)V

    goto :goto_3

    .line 227
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->N:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->H:Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->twoPartWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->L:Lcom/startapp/id;

    invoke-virtual {v0}, Lcom/startapp/id;->a()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->L:Lcom/startapp/id;

    .line 232
    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->N:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    .line 233
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->twoPartWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 234
    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->twoPartWebView:Landroid/webkit/WebView;

    goto :goto_1

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->H:Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->Q:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    .line 238
    :goto_1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->H:Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

    if-eqz v0, :cond_5

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 243
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    sget-object v1, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->b:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->setState(Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;)V

    .line 252
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->m()V

    :cond_7
    :goto_4
    return-void
.end method

.method public static a(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->H:Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

    .line 205
    iget-object v0, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->H:Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;->setCloseVisible(Z)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    invoke-static {v2, v1}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->C:Lcom/startapp/sdk/ads/banner/BannerListener;

    invoke-static {v4, v5, v0, v3}, Lcom/startapp/p0;->a(Landroid/content/Context;Lcom/startapp/sdk/ads/banner/BannerListener;Landroid/view/View;Ljava/lang/String;)V

    .line 4
    iget-object v3, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->I:Lcom/startapp/j9;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3, v1, v1}, Lcom/startapp/j9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    :cond_0
    iget-object v3, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->K:Lcom/startapp/id;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/startapp/id;->a()V

    .line 10
    :cond_1
    iget-object v3, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->L:Lcom/startapp/id;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Lcom/startapp/id;->a()V

    .line 12
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->p()V

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->b:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-static {v3, v4}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)Z

    move-result v3

    .line 16
    iget-object v4, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/HtmlAd;->o()[Ljava/lang/String;

    move-result-object v4

    .line 17
    iget-object v5, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v5}, Lcom/startapp/sdk/adsbase/HtmlAd;->m()[Ljava/lang/String;

    move-result-object v5

    .line 19
    iget-boolean v6, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->u:Z

    const-string v7, "adId: "

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v6, :cond_b

    const-string v6, "index="

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 22
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_3

    .line 24
    new-instance v1, Lcom/startapp/i4;

    sget-object v2, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {v1, v2}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v2, "Wrong index extracted from URL"

    .line 25
    iput-object v2, v1, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 27
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    iput-object v0, v1, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 29
    invoke-virtual {v1}, Lcom/startapp/i4;->a()V

    goto/16 :goto_4

    .line 34
    :cond_3
    iget-object v7, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v6, :cond_5

    .line 35
    iget-object v7, v7, Lcom/startapp/sdk/adsbase/HtmlAd;->smartRedirect:[Z

    array-length v8, v7

    if-lt v6, v8, :cond_4

    goto :goto_0

    .line 37
    :cond_4
    aget-boolean v7, v7, v6

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_8

    if-nez v3, :cond_8

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 40
    array-length v7, v4

    if-ge v6, v7, :cond_6

    new-array v7, v14, [Ljava/lang/String;

    aget-object v4, v4, v6

    aput-object v4, v7, v15

    goto :goto_2

    :cond_6
    move-object v7, v1

    .line 41
    :goto_2
    array-length v4, v5

    if-ge v6, v4, :cond_7

    aget-object v1, v5, v6

    :cond_7
    move-object v4, v1

    new-instance v5, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 42
    iget-object v1, v0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 43
    invoke-direct {v5, v1}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 45
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->z()J

    move-result-wide v8

    .line 46
    sget-object v1, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 47
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->y()J

    move-result-wide v10

    iget-object v1, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 48
    invoke-virtual {v1, v6}, Lcom/startapp/sdk/adsbase/HtmlAd;->a(I)Z

    move-result v12

    iget-object v1, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 49
    invoke-virtual {v1, v6}, Lcom/startapp/sdk/adsbase/HtmlAd;->b(I)Ljava/lang/Boolean;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v3, v7

    move-wide v6, v8

    move-wide v8, v10

    move v10, v12

    move-object v11, v13

    move/from16 v12, v16

    move-object/from16 v13, v17

    .line 50
    invoke-static/range {v1 .. v13}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;JJZLjava/lang/Boolean;ZLjava/lang/Runnable;)V

    goto/16 :goto_6

    .line 51
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 53
    array-length v7, v4

    if-ge v6, v7, :cond_9

    new-array v1, v14, [Ljava/lang/String;

    aget-object v4, v4, v6

    aput-object v4, v1, v15

    :cond_9
    move-object v4, v1

    new-instance v7, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 54
    iget-object v1, v0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 55
    invoke-direct {v7, v1}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 56
    invoke-virtual {v1, v6}, Lcom/startapp/sdk/adsbase/HtmlAd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v3, :cond_a

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    const/4 v8, 0x0

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v7

    move v5, v6

    move v6, v8

    .line 57
    invoke-static/range {v1 .. v6}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 71
    :cond_b
    array-length v1, v4

    if-ge v1, v14, :cond_c

    .line 72
    new-instance v1, Lcom/startapp/i4;

    sget-object v2, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {v1, v2}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v2, "No tracking URLs"

    .line 73
    iput-object v2, v1, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 74
    invoke-static {v7}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 75
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iput-object v0, v1, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 77
    invoke-virtual {v1}, Lcom/startapp/i4;->a()V

    :goto_4
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 82
    :cond_c
    iget-object v1, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iget-object v1, v1, Lcom/startapp/sdk/adsbase/HtmlAd;->smartRedirect:[Z

    array-length v6, v1

    if-gtz v6, :cond_d

    const/4 v1, 0x0

    goto :goto_5

    .line 85
    :cond_d
    aget-boolean v1, v1, v15

    :goto_5
    if-eqz v1, :cond_f

    if-nez v3, :cond_f

    .line 86
    array-length v1, v5

    if-ge v1, v14, :cond_e

    .line 87
    new-instance v1, Lcom/startapp/i4;

    sget-object v2, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {v1, v2}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v2, "No package names"

    .line 88
    iput-object v2, v1, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 89
    invoke-static {v7}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 90
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    iput-object v0, v1, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 92
    invoke-virtual {v1}, Lcom/startapp/i4;->a()V

    goto :goto_4

    .line 98
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v3, v14, [Ljava/lang/String;

    aget-object v4, v4, v15

    aput-object v4, v3, v15

    aget-object v4, v5, v15

    new-instance v5, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 99
    iget-object v6, v0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 100
    invoke-direct {v5, v6}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    .line 101
    sget-object v6, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 102
    invoke-virtual {v6}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->z()J

    move-result-wide v6

    .line 103
    sget-object v8, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 104
    invoke-virtual {v8}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->y()J

    move-result-wide v8

    iget-object v10, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 105
    invoke-virtual {v10, v15}, Lcom/startapp/sdk/adsbase/HtmlAd;->a(I)Z

    move-result v10

    iget-object v11, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 106
    invoke-virtual {v11, v15}, Lcom/startapp/sdk/adsbase/HtmlAd;->b(I)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p1

    .line 107
    invoke-static/range {v1 .. v13}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;JJZLjava/lang/Boolean;ZLjava/lang/Runnable;)V

    goto :goto_6

    .line 108
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v5, v14, [Ljava/lang/String;

    aget-object v4, v4, v15

    aput-object v4, v5, v15

    new-instance v4, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 109
    iget-object v6, v0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 110
    invoke-direct {v4, v6}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 111
    invoke-virtual {v6, v15}, Lcom/startapp/sdk/adsbase/HtmlAd;->a(I)Z

    move-result v6

    if-eqz v6, :cond_10

    if-nez v3, :cond_10

    const/4 v15, 0x1

    :cond_10
    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object v3, v5

    move v5, v15

    .line 112
    invoke-static/range {v1 .. v6}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;ZZ)V

    .line 123
    :goto_6
    iget-object v1, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 125
    invoke-virtual {v0, v14}, Lcom/startapp/sdk/ads/banner/BannerBase;->setClicked(Z)V

    :goto_7
    return v14
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->i:I

    return-void
.end method

.method public final a(Landroid/graphics/Point;I)V
    .locals 1

    .line 155
    iget v0, p1, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_0

    .line 156
    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .line 144
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 145
    iget-object v1, v1, Lcom/startapp/r0;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 146
    invoke-static {v0, v1}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 148
    iget-object v2, v2, Lcom/startapp/r0;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 149
    invoke-static {v1, v2}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v1

    .line 151
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 152
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 3

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 128
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 130
    new-instance v1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$4;

    invoke-direct {v1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$4;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    new-instance v1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$5;

    invoke-direct {v1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$5;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 157
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/banner/BannerBase;->setErrorMessage(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->C:Lcom/startapp/sdk/ads/banner/BannerListener;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->D:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->D:Z

    .line 162
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->C:Lcom/startapp/sdk/ads/banner/BannerListener;

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/startapp/p0;->b(Landroid/content/Context;Lcom/startapp/sdk/ads/banner/BannerListener;Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(II)Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->q()Landroid/graphics/Point;

    move-result-object v0

    .line 165
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lt v1, p1, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lt v0, p2, :cond_1

    .line 166
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 167
    iget-object v0, v0, Lcom/startapp/r0;->a:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 168
    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 169
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 170
    iget-object p2, p2, Lcom/startapp/r0;->a:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 171
    invoke-static {p1, p2}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result p1

    .line 172
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 173
    iget-object v0, v0, Lcom/startapp/r0;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 174
    invoke-static {p2, v0}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result p2

    .line 176
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 177
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 179
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 183
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    .line 193
    :cond_1
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 195
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 199
    :cond_2
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    :goto_1
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return p2
.end method

.method public final b(Landroid/graphics/Point;I)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_0

    .line 2
    iput p2, p1, Landroid/graphics/Point;->x:I

    :cond_0
    return-void
.end method

.method public final b(Landroid/webkit/WebView;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->J:Lcom/startapp/q7;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/startapp/q7;

    invoke-direct {v0, p1}, Lcom/startapp/q7;-><init>(Landroid/webkit/WebView;)V

    .line 8
    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->J:Lcom/startapp/q7;

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/startapp/q7;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 14
    sget-object v3, Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;->c:Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v0, v1, v3, v2}, Lcom/startapp/q7;->a(Landroid/view/View;Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->H:Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

    if-eqz v1, :cond_2

    .line 17
    sget-object v3, Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;->b:Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v0, v1, v3, v2}, Lcom/startapp/q7;->a(Landroid/view/View;Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :cond_2
    invoke-virtual {v0, p1}, Lcom/startapp/q7;->a(Landroid/view/View;)V

    .line 26
    invoke-virtual {v0}, Lcom/startapp/q7;->e()V

    .line 27
    invoke-virtual {v0}, Lcom/startapp/q7;->d()V

    .line 28
    invoke-virtual {v0}, Lcom/startapp/q7;->b()V

    :cond_3
    return-void
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->z:Lcom/startapp/sdk/ads/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/BannerOptions;->i()I

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->y:J

    long-to-int v2, v1

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->i:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "StartApp Banner"

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->z:Lcom/startapp/sdk/ads/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/BannerOptions;->i()I

    move-result v0

    return v0
.end method

.method public g()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->G:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->getBidToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeightInDp()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public getWidthInDp()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public hideBanner()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->w:Z

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->R:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

    invoke-direct {v1, v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->H:Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;

    .line 4
    new-instance v2, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$6;

    invoke-direct {v2, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$6;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v1, v2}, Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout;->setOnCloseListener(Lcom/startapp/sdk/ads/banner/bannerstandard/CloseableLayout$a;)V

    .line 11
    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/startapp/sdk/components/ComponentLocator;->w()Lcom/startapp/md;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/startapp/md;->b()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    .line 15
    new-instance v2, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    new-instance v3, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$7;

    invoke-direct {v3, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$7;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    invoke-direct {v2, p0, v1, v3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;Landroid/webkit/WebView;Lcom/startapp/v0$a;)V

    iput-object v2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    .line 40
    new-instance v1, Lcom/startapp/sdk/ads/banner/BannerOptions;

    invoke-direct {v1}, Lcom/startapp/sdk/ads/banner/BannerOptions;-><init>()V

    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->z:Lcom/startapp/sdk/ads/banner/BannerOptions;

    .line 42
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 43
    new-instance v1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 44
    iget-object v3, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;->v()I

    move-result v3

    .line 48
    :goto_0
    invoke-direct {v1, v0, v3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->A:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->A:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 56
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->i:I

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    const v1, 0x9876541

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 61
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Landroid/webkit/WebView;)V

    .line 62
    sget-object v0, Lcom/startapp/sdk/ads/banner/BannerMetaData;->b:Lcom/startapp/sdk/ads/banner/BannerMetaData;

    .line 63
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/BannerMetaData;->b()Lcom/startapp/sdk/ads/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->z:Lcom/startapp/sdk/ads/banner/BannerOptions;

    .line 65
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->A:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/BannerBase;->a(Lcom/startapp/sdk/adsbase/model/AdPreferences;)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 68
    iget-object v1, v1, Lcom/startapp/r0;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 69
    invoke-static {v0, v1}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 71
    iget-object v1, v1, Lcom/startapp/r0;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 72
    invoke-static {v0, v1}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 74
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/n5;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$8;

    invoke-direct {v4, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$8;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    new-instance v5, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 75
    iget-object v6, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 76
    invoke-direct {v5, v6}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v6, v2}, Lcom/startapp/sdk/adsbase/HtmlAd;->a(I)Z

    move-result v2

    .line 77
    invoke-direct {v1, v3, v4, v5}, Lcom/startapp/n5;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;)V

    .line 78
    iput-boolean v2, v1, Lcom/startapp/n5;->b:Z

    const-string v2, "startappwall"

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->G:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->R:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->v:Z

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$9;

    invoke-direct {v1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$9;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 106
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->hideBanner()V

    const-string v0, "BannerStandard.init - webview failed"

    .line 110
    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->J:Lcom/startapp/q7;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->J:Lcom/startapp/q7;

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lcom/startapp/q7;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$10;

    invoke-direct {v1, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$10;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->u()V

    :goto_1
    return-void
.end method

.method public loadHtml()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    const-string v2, "startapp_adtag_placeholder"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->x:Landroid/os/Handler;

    new-instance v2, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$11;

    invoke-direct {v2, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$11;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    .line 14
    iget-object v3, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->z:Lcom/startapp/sdk/ads/banner/BannerOptions;

    invoke-virtual {v3}, Lcom/startapp/sdk/ads/banner/BannerOptions;->i()I

    move-result v3

    int-to-long v3, v3

    .line 15
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->y:J

    .line 23
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->I:Lcom/startapp/j9;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/startapp/j9;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->E:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    .line 3
    new-instance v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;->a:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;

    sget-object v5, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->b:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 7
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/Ad;->getAdInfoOverride()Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;

    move-result-object v6

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 8
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/Ad;->getConsentData()Lcom/startapp/sdk/adsbase/consent/ConsentData;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;Lcom/startapp/sdk/adsbase/consent/ConsentData;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->E:Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;

    .line 10
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject;->a(Landroid/widget/RelativeLayout;)V

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 27
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/startapp/sdk/ads/banner/BannerMetaData;->b:Lcom/startapp/sdk/ads/banner/BannerMetaData;

    .line 3
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/BannerMetaData;->a()Lcom/startapp/sdk/ads/banner/BannerOptions;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/startapp/id;

    iget-object v2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$12;

    invoke-direct {v3, p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$12;-><init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/startapp/id;-><init>(Landroid/view/View;Lcom/startapp/sdk/ads/banner/BannerOptions;Lcom/startapp/id$b;)V

    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->K:Lcom/startapp/id;

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/startapp/a0;->b(Landroid/webkit/WebView;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->twoPartWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Lcom/startapp/a0;->b(Landroid/webkit/WebView;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/startapp/a0;->a(Landroid/webkit/WebView;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->twoPartWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Lcom/startapp/a0;->a(Landroid/webkit/WebView;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->I:Lcom/startapp/j9;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "AD_CLOSED_TOO_QUICKLY"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/startapp/j9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->K:Lcom/startapp/id;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/startapp/id;->a()V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->L:Lcom/startapp/id;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/startapp/id;->a()V

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->p()V

    .line 18
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->J:Lcom/startapp/q7;

    .line 20
    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->J:Lcom/startapp/q7;

    if-eqz v0, :cond_5

    .line 24
    :try_start_0
    invoke-virtual {v0}, Lcom/startapp/q7;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 29
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    sget-object v2, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 30
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 5

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->t:Z

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@jsTag@"

    invoke-static {v0, v1, v1}, Lcom/startapp/wb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->u:Z

    .line 6
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->loadHtml()V

    .line 9
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@width@"

    invoke-static {v0, v1, v1}, Lcom/startapp/wb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/HtmlAd;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@height@"

    invoke-static {v1, v2, v2}, Lcom/startapp/wb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->s:Z

    .line 15
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->n()V

    .line 16
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->t()V

    .line 18
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->a()V

    .line 19
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->o()V

    .line 21
    iget-boolean v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->w:Z

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->Q:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->C:Lcom/startapp/sdk/ads/banner/BannerListener;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->D:Z

    if-nez v1, :cond_4

    .line 24
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->D:Z

    .line 25
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->C:Lcom/startapp/sdk/ads/banner/BannerListener;

    iget-object v2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-object v2, v2, Lcom/startapp/sdk/adsbase/HtmlAd;->trackingUrls:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    if-gtz v3, :cond_1

    move-object p1, v4

    goto :goto_0

    .line 29
    :cond_1
    aget-object p1, v2, p1

    .line 30
    :goto_0
    invoke-static {p1, v4}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v0, v1, p0, p1}, Lcom/startapp/p0;->c(Landroid/content/Context;Lcom/startapp/sdk/ads/banner/BannerListener;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Banner cannot be displayed (not enough room)"

    .line 35
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 40
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    const-string p1, "Error Casting width & height from HTML"

    .line 43
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "No Banner received"

    .line 50
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    int-to-float p1, p1

    .line 5
    iget p4, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    int-to-float p1, p2

    .line 6
    iget p2, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    .line 12
    iget-object p3, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->B:Lcom/startapp/r0;

    .line 13
    iget-object p3, p3, Lcom/startapp/r0;->a:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    int-to-double v2, p4

    cmpg-double p4, v0, v2

    if-ltz p4, :cond_1

    .line 14
    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-double p3, p3

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->w:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->s:Z

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->Q:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->R:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/startapp/sdk/ads/banner/BannerBase;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/startapp/a0;->b(Landroid/webkit/WebView;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->twoPartWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    .line 7
    invoke-static {p1}, Lcom/startapp/a0;->b(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {p1}, Lcom/startapp/a0;->a(Landroid/webkit/WebView;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->twoPartWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    .line 13
    invoke-static {p1}, Lcom/startapp/a0;->a(Landroid/webkit/WebView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()Landroid/graphics/Point;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v1, v2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;->b(Z)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_b

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v2

    move-object v2, p0

    goto :goto_0

    :cond_4
    move-object v2, p0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_9

    .line 21
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_9

    .line 22
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_7

    .line 23
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->b(Landroid/graphics/Point;I)V

    .line 26
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_8

    .line 27
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Landroid/graphics/Point;I)V

    .line 30
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_5

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_1

    :cond_9
    if-nez v3, :cond_a

    .line 32
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->b(Landroid/graphics/Point;I)V

    .line 33
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Landroid/graphics/Point;I)V

    goto :goto_2

    .line 34
    :cond_a
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->b(Landroid/graphics/Point;I)V

    .line 35
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Landroid/graphics/Point;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v3, p0

    .line 38
    :goto_1
    invoke-static {v2}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 39
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->b(Landroid/graphics/Point;I)V

    .line 40
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Landroid/graphics/Point;I)V

    :cond_b
    :goto_2
    return-object v0
.end method

.method public r()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final s()Landroid/view/ViewGroup;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->O:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->G:Landroid/widget/RelativeLayout;

    .line 6
    instance-of v2, v0, Landroid/app/Activity;

    const/4 v3, 0x0

    const v4, 0x1020002

    if-nez v2, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 10
    :cond_1
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v3

    .line 18
    :goto_2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_3

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->G:Landroid/widget/RelativeLayout;

    :goto_3
    return-object v0
.end method

.method public setAdTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    return-void
.end method

.method public setBannerListener(Lcom/startapp/sdk/ads/banner/BannerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->C:Lcom/startapp/sdk/ads/banner/BannerListener;

    return-void
.end method

.method public showBanner()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->r()Lcom/startapp/b9;

    move-result-object v0

    const/16 v1, 0x800

    .line 3
    invoke-virtual {v0, v1}, Lcom/startapp/b9;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->w:Z

    .line 12
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->Q:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t()V
    .locals 7

    .line 1
    new-instance v6, Lcom/startapp/j9;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    .line 2
    iget-object v2, v0, Lcom/startapp/sdk/adsbase/HtmlAd;->trackingUrls:[Ljava/lang/String;

    .line 3
    new-instance v3, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 4
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 5
    invoke-direct {v3, v0}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->h()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/HtmlAd;->h()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    sget-object v4, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 12
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->p()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :goto_0
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startapp/j9;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;J)V

    iput-object v6, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->I:Lcom/startapp/j9;

    .line 14
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->P:Lcom/startapp/j9$a;

    .line 15
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v6, Lcom/startapp/j9;->j:Ljava/lang/ref/WeakReference;

    .line 16
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->I:Lcom/startapp/j9;

    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/BannerBase;->a(Lcom/startapp/j9;)V

    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->A:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->A:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->f:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->q()Landroid/graphics/Point;

    move-result-object v0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->a(II)V

    .line 11
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    sget-object v1, Lcom/startapp/sdk/adsbase/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/sdk/adsbase/Ad$AdState;

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/Ad;->setState(Lcom/startapp/sdk/adsbase/Ad$AdState;)V

    .line 12
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;->c(I)V

    .line 13
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->A:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-virtual {v0, v1, p0}, Lcom/startapp/sdk/adsbase/Ad;->load(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    :cond_2
    return-void
.end method
