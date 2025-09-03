.class public Lcom/startapp/hb;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/gb;


# direct methods
.method public constructor <init>(Lcom/startapp/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/startapp/hb;->a:Lcom/startapp/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/startapp/hb;->a:Lcom/startapp/gb;

    .line 1
    iget-object v0, v0, Lcom/startapp/gb;->f:Lcom/startapp/vd;

    .line 2
    iget-object v1, v0, Lcom/startapp/vd;->b:Lcom/startapp/ke;

    new-instance v2, Lcom/startapp/oe;

    invoke-direct {v2, v0}, Lcom/startapp/oe;-><init>(Lcom/startapp/ee$b;)V

    invoke-virtual {v1, v2}, Lcom/startapp/ke;->a(Lcom/startapp/ee;)V

    return-void
.end method
