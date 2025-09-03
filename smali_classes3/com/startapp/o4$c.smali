.class public Lcom/startapp/o4$c;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/d3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/o4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapp/d3<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/o4;


# direct methods
.method public constructor <init>(Lcom/startapp/o4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/o4$c;->a:Lcom/startapp/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/o4$c;->a:Lcom/startapp/o4;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/startapp/o4;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
