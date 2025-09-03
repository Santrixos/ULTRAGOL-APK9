.class public Lcom/startapp/f3$a;
.super Landroid/content/BroadcastReceiver;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/f3;


# direct methods
.method public constructor <init>(Lcom/startapp/f3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/f3$a;->a:Lcom/startapp/f3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startapp/f3$a;->a:Lcom/startapp/f3;

    invoke-virtual {p1}, Lcom/startapp/f3;->b()V

    return-void
.end method
