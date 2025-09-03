.class public Lcom/startapp/t0$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/wb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/t0;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/t0;


# direct methods
.method public constructor <init>(Lcom/startapp/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/t0$a;->a:Lcom/startapp/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/startapp/t0$a;->a:Lcom/startapp/t0;

    .line 16
    iget-object v0, v0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    .line 17
    invoke-virtual {v0, p2}, Lcom/startapp/sdk/adsbase/Ad;->setErrorMessage(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/startapp/t0$a;->a:Lcom/startapp/t0;

    .line 19
    iget-object v0, p2, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    .line 20
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/b;->a()Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    move-result-object p2

    .line 21
    iget-object v1, p0, Lcom/startapp/t0$a;->a:Lcom/startapp/t0;

    .line 22
    iget-object v1, v1, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    const/4 v2, 0x0

    .line 23
    invoke-static {v0, p2, v1, v2}, Lcom/startapp/j;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/Ad;Z)V

    .line 26
    iget-object p2, p0, Lcom/startapp/t0$a;->a:Lcom/startapp/t0;

    .line 27
    iget-object v0, p2, Lcom/startapp/t0;->l:Lcom/startapp/m;

    if-eqz v0, :cond_0

    .line 28
    iput p1, v0, Lcom/startapp/m;->k:I

    .line 29
    invoke-virtual {p2}, Lcom/startapp/t0;->f()V

    :cond_0
    return-void
.end method

.method public a(ZJJZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/t0$a;->a:Lcom/startapp/t0;

    .line 2
    iget-object v1, v0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/b;->a()Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/startapp/t0$a;->a:Lcom/startapp/t0;

    .line 5
    iget-object v2, v2, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v0, v2, v3}, Lcom/startapp/j;->b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/Ad;Z)V

    .line 8
    iget-object v0, p0, Lcom/startapp/t0$a;->a:Lcom/startapp/t0;

    .line 9
    iget-object v1, v0, Lcom/startapp/t0;->l:Lcom/startapp/m;

    if-eqz v1, :cond_0

    .line 10
    iput-boolean p1, v1, Lcom/startapp/m;->e:Z

    .line 11
    iput-wide p2, v1, Lcom/startapp/m;->i:J

    .line 12
    iput-wide p4, v1, Lcom/startapp/m;->j:J

    .line 13
    iput-boolean p6, v1, Lcom/startapp/m;->l:Z

    .line 14
    invoke-virtual {v0}, Lcom/startapp/t0;->f()V

    :cond_0
    return-void
.end method
