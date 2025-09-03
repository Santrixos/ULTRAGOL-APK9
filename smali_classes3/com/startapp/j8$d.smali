.class public Lcom/startapp/j8$d;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/j8;->a(Lcom/startapp/k8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/k8;

.field public final synthetic b:Lcom/startapp/j8;


# direct methods
.method public constructor <init>(Lcom/startapp/j8;Lcom/startapp/k8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$d;->b:Lcom/startapp/j8;

    iput-object p2, p0, Lcom/startapp/j8$d;->a:Lcom/startapp/k8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$d;->b:Lcom/startapp/j8;

    iget-object v1, p0, Lcom/startapp/j8$d;->a:Lcom/startapp/k8;

    invoke-virtual {v0, v1}, Lcom/startapp/j8;->a(Lcom/startapp/k8;)V

    return-void
.end method
