.class public Lcom/startapp/sa$d;
.super Lcom/startapp/sa$c;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/sa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final d:Landroid/telephony/PhoneStateListener;

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
    iput-object p1, p0, Lcom/startapp/sa$d;->e:Lcom/startapp/sa;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/sa$c;-><init>(Lcom/startapp/sa;Landroid/telephony/TelephonyManager;Ljava/lang/Class;)V

    .line 9
    new-instance p1, Lcom/startapp/sa$d$a;

    invoke-direct {p1, p0}, Lcom/startapp/sa$d$a;-><init>(Lcom/startapp/sa$d;)V

    iput-object p1, p0, Lcom/startapp/sa$d;->d:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sa$c;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/startapp/sa$d;->d:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sa$c;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/startapp/sa$d;->d:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
