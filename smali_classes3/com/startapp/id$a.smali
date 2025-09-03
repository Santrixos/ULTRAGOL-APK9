.class public Lcom/startapp/id$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/id;-><init>(Landroid/view/View;Lcom/startapp/sdk/ads/banner/BannerOptions;Lcom/startapp/id$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/id$b;

.field public final synthetic b:Lcom/startapp/id;


# direct methods
.method public constructor <init>(Lcom/startapp/id;Lcom/startapp/id$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/id$a;->b:Lcom/startapp/id;

    iput-object p2, p0, Lcom/startapp/id$a;->a:Lcom/startapp/id$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/id$a;->a:Lcom/startapp/id$b;

    iget-object v1, p0, Lcom/startapp/id$a;->b:Lcom/startapp/id;

    invoke-static {v1}, Lcom/startapp/id;->a(Lcom/startapp/id;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/startapp/id$b;->onUpdate(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/id$a;->b:Lcom/startapp/id;

    .line 3
    iget-object v0, v0, Lcom/startapp/id;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    .line 4
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
