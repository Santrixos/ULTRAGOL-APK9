.class public Lcom/startapp/a7$e;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/a7;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/startapp/a7;


# direct methods
.method public constructor <init>(Lcom/startapp/a7;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/a7$e;->b:Lcom/startapp/a7;

    iput-object p2, p0, Lcom/startapp/a7$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/a7$e;->b:Lcom/startapp/a7;

    iget-object v1, p0, Lcom/startapp/a7$e;->a:Ljava/lang/String;

    .line 2
    iget-boolean v2, v0, Lcom/startapp/a7;->h:Z

    if-nez v2, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/startapp/a7;->r:J

    .line 4
    iget-object v2, v0, Lcom/startapp/a7;->q:Ljava/util/LinkedHashMap;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Lcom/startapp/a7;->d:Landroid/os/Handler;

    iget-object v2, v0, Lcom/startapp/a7;->s:Ljava/lang/Runnable;

    iget-wide v3, v0, Lcom/startapp/a7;->i:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/startapp/a7;->h:Z

    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/startapp/a7;->p:Z

    .line 10
    invoke-virtual {v0}, Lcom/startapp/a7;->a()V

    return-void
.end method
