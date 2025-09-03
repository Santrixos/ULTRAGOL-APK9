.class public Lcom/startapp/sa$b$a;
.super Landroid/telephony/TelephonyCallback;
.source "Sta"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/sa$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/sa$b;


# direct methods
.method public constructor <init>(Lcom/startapp/sa$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sa$b$a;->a:Lcom/startapp/sa$b;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sa$b$a;->a:Lcom/startapp/sa$b;

    const-class v1, Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1, p1}, Lcom/startapp/sa$c;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sa$b$a;->a:Lcom/startapp/sa$b;

    iget-object v0, v0, Lcom/startapp/sa$b;->e:Lcom/startapp/sa;

    invoke-virtual {v0, p1}, Lcom/startapp/sa;->a(Landroid/telephony/SignalStrength;)V

    .line 3
    iget-object v0, p0, Lcom/startapp/sa$b$a;->a:Lcom/startapp/sa$b;

    const-class v1, Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1, p1}, Lcom/startapp/sa$c;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
