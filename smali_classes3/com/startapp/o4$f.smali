.class public Lcom/startapp/o4$f;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/o4;->a(Lcom/startapp/i4;Lcom/startapp/n4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/i4;

.field public final synthetic b:Lcom/startapp/k4;

.field public final synthetic c:Lcom/startapp/n4;

.field public final synthetic d:Lcom/startapp/o4;


# direct methods
.method public constructor <init>(Lcom/startapp/o4;JLcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/o4$f;->d:Lcom/startapp/o4;

    iput-object p4, p0, Lcom/startapp/o4$f;->a:Lcom/startapp/i4;

    iput-object p5, p0, Lcom/startapp/o4$f;->b:Lcom/startapp/k4;

    iput-object p6, p0, Lcom/startapp/o4$f;->c:Lcom/startapp/n4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/o4$f;->d:Lcom/startapp/o4;

    iget-object v1, p0, Lcom/startapp/o4$f;->a:Lcom/startapp/i4;

    iget-object v2, p0, Lcom/startapp/o4$f;->b:Lcom/startapp/k4;

    iget-object v3, p0, Lcom/startapp/o4$f;->c:Lcom/startapp/n4;

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapp/o4;->a(Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V

    return-void
.end method
