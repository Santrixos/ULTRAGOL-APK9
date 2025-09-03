.class public Lcom/startapp/g5$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/g5;
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
    iput-object p1, p0, Lcom/startapp/g5$b;->a:Lcom/startapp/g5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/g5$b;->a:Lcom/startapp/g5;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/g5;->C:Z

    .line 2
    iget-object v1, v0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
