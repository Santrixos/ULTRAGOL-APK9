.class public Lcom/startapp/networkTest/startapp/NetworkTester$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/networkTest/startapp/NetworkTester;->runTests(Landroid/content/Context;Lcom/startapp/networkTest/startapp/NetworkTester$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/startapp/networkTest/startapp/NetworkTester$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/networkTest/startapp/NetworkTester$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a;->b:Lcom/startapp/networkTest/startapp/NetworkTester$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/startapp/d2;

    iget-object v3, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/startapp/d2;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v2}, Lcom/startapp/d2;->a()V

    .line 8
    new-instance v3, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;-><init>(Lcom/startapp/networkTest/startapp/NetworkTester$a;[ZLandroid/os/Looper;Lcom/startapp/d2;)V

    invoke-virtual {v2, v3}, Lcom/startapp/d2;->a(Lcom/startapp/w7;)V

    .line 79
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
