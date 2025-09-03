.class public final Lcom/startapp/m7;
.super Lcom/startapp/sdk/jobs/b;
.source "Sta"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/jobs/b$a;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/sdk/jobs/b;-><init>(Landroid/content/Context;Lcom/startapp/sdk/jobs/b$a;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/startapp/m7;)Lcom/startapp/sdk/jobs/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/sdk/jobs/b;->callback:Lcom/startapp/sdk/jobs/b$a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/jobs/b;->context:Landroid/content/Context;

    new-instance v1, Lcom/startapp/m7$a;

    invoke-direct {v1, p0}, Lcom/startapp/m7$a;-><init>(Lcom/startapp/m7;)V

    invoke-static {v0, v1}, Lcom/startapp/networkTest/startapp/NetworkTester;->runTests(Landroid/content/Context;Lcom/startapp/networkTest/startapp/NetworkTester$b;)V

    return-void
.end method
