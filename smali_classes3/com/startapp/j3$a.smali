.class public Lcom/startapp/j3$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/j3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/n1;

.field public final synthetic b:Lcom/startapp/j3;


# direct methods
.method public constructor <init>(Lcom/startapp/j3;Lcom/startapp/n1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/j3$a;->b:Lcom/startapp/j3;

    iput-object p2, p0, Lcom/startapp/j3$a;->a:Lcom/startapp/n1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/j3$a;->a:Lcom/startapp/n1;

    invoke-virtual {v0}, Lcom/startapp/n1;->c()V

    .line 3
    iget-object v0, p0, Lcom/startapp/j3$a;->b:Lcom/startapp/j3;

    iget-object v0, v0, Lcom/startapp/x0;->b:Lcom/startapp/v7;

    iget-object v1, p0, Lcom/startapp/j3$a;->a:Lcom/startapp/n1;

    invoke-virtual {v1}, Lcom/startapp/n1;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/startapp/v7;->a(Ljava/lang/Object;)V

    return-void
.end method
