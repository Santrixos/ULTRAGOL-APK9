.class public Lcom/startapp/g5$d;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/g5;->b(Landroid/webkit/WebView;)V
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
    iput-object p1, p0, Lcom/startapp/g5$d;->a:Lcom/startapp/g5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/startapp/g5$d;->a:Lcom/startapp/g5;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/startapp/g5;->C:Z

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
