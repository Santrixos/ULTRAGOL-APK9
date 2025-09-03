.class public Lcom/startapp/k3$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/k3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Lcom/startapp/k3;


# direct methods
.method public constructor <init>(Lcom/startapp/k3;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/k3$a;->b:Lcom/startapp/k3;

    iput-object p2, p0, Lcom/startapp/k3$a;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/k3$a;->b:Lcom/startapp/k3;

    iget-object v0, v0, Lcom/startapp/k3;->b:Lcom/startapp/sdk/adsbase/remoteconfig/a;

    iget-object v1, p0, Lcom/startapp/k3$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/remoteconfig/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
