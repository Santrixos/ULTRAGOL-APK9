.class final Lcom/ironsource/sdk/controller/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/ironsource/sdk/controller/c;

.field private synthetic c:Lcom/ironsource/sdk/service/d;

.field private synthetic d:Lcom/ironsource/sdk/controller/j;

.field private synthetic e:I

.field private synthetic f:Lorg/json/JSONObject;

.field private synthetic g:Lcom/ironsource/sdk/controller/g;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/g;Landroid/content/Context;Lcom/ironsource/sdk/controller/c;Lcom/ironsource/sdk/service/d;Lcom/ironsource/sdk/controller/j;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sdk/controller/g$1;->g:Lcom/ironsource/sdk/controller/g;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/g$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/g$1;->b:Lcom/ironsource/sdk/controller/c;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/g$1;->c:Lcom/ironsource/sdk/service/d;

    iput-object p5, p0, Lcom/ironsource/sdk/controller/g$1;->d:Lcom/ironsource/sdk/controller/j;

    iput p6, p0, Lcom/ironsource/sdk/controller/g$1;->e:I

    iput-object p7, p0, Lcom/ironsource/sdk/controller/g$1;->f:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v7, p0, Lcom/ironsource/sdk/controller/g$1;->g:Lcom/ironsource/sdk/controller/g;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/g$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/g$1;->b:Lcom/ironsource/sdk/controller/c;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/g$1;->c:Lcom/ironsource/sdk/service/d;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/g$1;->d:Lcom/ironsource/sdk/controller/j;

    iget v5, p0, Lcom/ironsource/sdk/controller/g$1;->e:I

    iget-object v6, p0, Lcom/ironsource/sdk/controller/g$1;->f:Lorg/json/JSONObject;

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/controller/g;Landroid/content/Context;Lcom/ironsource/sdk/controller/c;Lcom/ironsource/sdk/service/d;Lcom/ironsource/sdk/controller/j;ILorg/json/JSONObject;)Lcom/ironsource/sdk/controller/x;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/controller/g;Lcom/ironsource/sdk/controller/m;)Lcom/ironsource/sdk/controller/m;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/g$1;->g:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/controller/g;)Lcom/ironsource/sdk/controller/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/m;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/g$1;->g:Lcom/ironsource/sdk/controller/g;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/g;->a(Lcom/ironsource/sdk/controller/g;Ljava/lang/String;)V

    return-void
.end method
