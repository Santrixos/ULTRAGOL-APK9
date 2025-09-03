.class public Lcom/startapp/m7$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/networkTest/startapp/NetworkTester$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/m7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/m7;


# direct methods
.method public constructor <init>(Lcom/startapp/m7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/m7$a;->a:Lcom/startapp/m7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/m7$a;->a:Lcom/startapp/m7;

    invoke-static {v0}, Lcom/startapp/m7;->access$000(Lcom/startapp/m7;)Lcom/startapp/sdk/jobs/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/m7$a;->a:Lcom/startapp/m7;

    invoke-interface {v0, v1, p1}, Lcom/startapp/sdk/jobs/b$a;->a(Lcom/startapp/sdk/jobs/b;Z)V

    return-void
.end method
