.class public Lcom/startapp/sa$b;
.super Lcom/startapp/sa$c;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/sa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sa$b$a;
    }
.end annotation


# instance fields
.field public final d:Landroid/telephony/TelephonyCallback;

.field public final synthetic e:Lcom/startapp/sa;


# direct methods
.method public constructor <init>(Lcom/startapp/sa;Landroid/telephony/TelephonyManager;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startapp/sa$b;->e:Lcom/startapp/sa;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/sa$c;-><init>(Lcom/startapp/sa;Landroid/telephony/TelephonyManager;Ljava/lang/Class;)V

    .line 3
    new-instance p1, Lcom/startapp/sa$b$a;

    invoke-direct {p1, p0}, Lcom/startapp/sa$b$a;-><init>(Lcom/startapp/sa$b;)V

    iput-object p1, p0, Lcom/startapp/sa$b;->d:Landroid/telephony/TelephonyCallback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sa$c;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/startapp/sa$b;->e:Lcom/startapp/sa;

    .line 2
    iget-object v1, v1, Lcom/startapp/sa;->b:Lcom/startapp/r3;

    .line 3
    iget-object v2, p0, Lcom/startapp/sa$b;->d:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sa$c;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/startapp/sa$b;->d:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method
