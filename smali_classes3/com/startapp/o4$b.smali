.class public Lcom/startapp/o4$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/o4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/o4;


# direct methods
.method public constructor <init>(Lcom/startapp/o4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/o4$b;->a:Lcom/startapp/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/o4$b;->a:Lcom/startapp/o4;

    invoke-virtual {v0}, Lcom/startapp/o4;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
