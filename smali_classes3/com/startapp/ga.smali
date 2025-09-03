.class public Lcom/startapp/ga;
.super Lcom/startapp/i2;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/i2<",
        "Lcom/startapp/fa;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lcom/startapp/sdk/adsbase/e;

.field public final f:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/StaleDcConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/e;Lcom/startapp/d3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapp/sdk/adsbase/e;",
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/StaleDcConfig;",
            ">;)V"
        }
    .end annotation

    const-wide/32 v0, 0x5265c00

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/i2;-><init>(Landroid/content/Context;J)V

    .line 3
    iput-object p2, p0, Lcom/startapp/ga;->e:Lcom/startapp/sdk/adsbase/e;

    .line 4
    iput-object p3, p0, Lcom/startapp/ga;->f:Lcom/startapp/d3;

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/startapp/fa;

    invoke-direct {v0}, Lcom/startapp/fa;-><init>()V

    const/4 v1, 0x0

    const-string v2, "a83b59c2138cbf65"

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/startapp/ga;->e:Lcom/startapp/sdk/adsbase/e;

    invoke-virtual {p1, v2, v1}, Lcom/startapp/sdk/adsbase/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/startapp/i2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/wb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object p1, p0, Lcom/startapp/ga;->e:Lcom/startapp/sdk/adsbase/e;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v2, v1}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object v3, p1, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    .line 14
    :goto_1
    iput-object v1, v0, Lcom/startapp/fa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/startapp/fa;

    invoke-direct {v0}, Lcom/startapp/fa;-><init>()V

    return-object v0
.end method
