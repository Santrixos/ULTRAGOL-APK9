.class public Lcom/startapp/a8$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/v7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/a8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/a8;


# direct methods
.method public constructor <init>(Lcom/startapp/a8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/a8$a;->a:Lcom/startapp/a8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/startapp/a8$a;->a:Lcom/startapp/a8;

    invoke-static {p1}, Lcom/startapp/a8;->access$000(Lcom/startapp/a8;)Lcom/startapp/sdk/jobs/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/startapp/a8$a;->a:Lcom/startapp/a8;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/startapp/sdk/jobs/b$a;->a(Lcom/startapp/sdk/jobs/b;Z)V

    return-void
.end method
