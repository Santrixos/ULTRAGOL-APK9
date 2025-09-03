.class public Lcom/startapp/g5$f;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/g5;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/g5;


# direct methods
.method public constructor <init>(Lcom/startapp/g5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/g5$f;->a:Lcom/startapp/g5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/g5$f;->a:Lcom/startapp/g5;

    iget-object v0, v0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/startapp/a0;->a(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method
