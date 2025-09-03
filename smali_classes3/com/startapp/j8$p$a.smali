.class public Lcom/startapp/j8$p$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/j8$p;->a(Landroid/telephony/ServiceState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/telephony/ServiceState;

.field public final synthetic b:I

.field public final synthetic c:Lcom/startapp/j8$p;


# direct methods
.method public constructor <init>(Lcom/startapp/j8$p;Landroid/telephony/ServiceState;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$p$a;->c:Lcom/startapp/j8$p;

    iput-object p2, p0, Lcom/startapp/j8$p$a;->a:Landroid/telephony/ServiceState;

    iput p3, p0, Lcom/startapp/j8$p$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$p$a;->c:Lcom/startapp/j8$p;

    iget-object v0, v0, Lcom/startapp/j8$p;->c:Lcom/startapp/j8;

    iget-object v0, v0, Lcom/startapp/j8;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/k8;

    .line 2
    iget-object v2, p0, Lcom/startapp/j8$p$a;->a:Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/startapp/j8$p$a;->b:I

    invoke-interface {v1, v2, v3}, Lcom/startapp/k8;->a(Landroid/telephony/ServiceState;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
