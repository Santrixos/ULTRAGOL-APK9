.class public Lcom/startapp/q4;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/o4;


# direct methods
.method public constructor <init>(Lcom/startapp/o4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/q4;->a:Lcom/startapp/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/q4;->a:Lcom/startapp/o4;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/startapp/o4;->a(J)V

    return-void
.end method
