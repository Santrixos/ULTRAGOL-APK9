.class public Lcom/startapp/s8$a;
.super Landroid/content/BroadcastReceiver;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/s8;->a(Landroid/content/Context;Lcom/startapp/x8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/x8;

.field public final synthetic b:Lcom/startapp/s8;


# direct methods
.method public constructor <init>(Lcom/startapp/s8;Lcom/startapp/x8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/s8$a;->b:Lcom/startapp/s8;

    iput-object p2, p0, Lcom/startapp/s8$a;->a:Lcom/startapp/x8;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/startapp/s8$a;->a:Lcom/startapp/x8;

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/startapp/s8$a;->b:Lcom/startapp/s8;

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/startapp/x8;->a(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
