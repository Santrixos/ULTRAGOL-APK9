.class public Lcom/startapp/networkTest/startapp/NetworkTester$a$a$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/networkTest/startapp/NetworkTester$a$a;


# direct methods
.method public constructor <init>(Lcom/startapp/networkTest/startapp/NetworkTester$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a$a;->a:Lcom/startapp/networkTest/startapp/NetworkTester$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a$a;->a:Lcom/startapp/networkTest/startapp/NetworkTester$a$a;

    iget-object v0, v0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->d:Lcom/startapp/networkTest/startapp/NetworkTester$a;

    iget-object v0, v0, Lcom/startapp/networkTest/startapp/NetworkTester$a;->b:Lcom/startapp/networkTest/startapp/NetworkTester$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/startapp/networkTest/startapp/NetworkTester$b;->a(Z)V

    return-void
.end method
