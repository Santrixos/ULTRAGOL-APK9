.class public Lcom/startapp/o4$g;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/b3;


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
        "Lcom/startapp/b3<",
        "Lcom/startapp/i4;",
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
    iput-object p1, p0, Lcom/startapp/o4$g;->a:Lcom/startapp/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/startapp/i4;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/startapp/o4$g;->a:Lcom/startapp/o4;

    invoke-virtual {v0, p1}, Lcom/startapp/o4;->a(Lcom/startapp/i4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
