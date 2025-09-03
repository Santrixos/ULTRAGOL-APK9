.class public Lcom/startapp/b5$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/b5;->a(Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/startapp/b5;


# direct methods
.method public constructor <init>(Lcom/startapp/b5;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/b5$a;->b:Lcom/startapp/b5;

    iput-object p2, p0, Lcom/startapp/b5$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/startapp/a5;->d()Lcom/startapp/a5$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/startapp/b5$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/startapp/a5$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
