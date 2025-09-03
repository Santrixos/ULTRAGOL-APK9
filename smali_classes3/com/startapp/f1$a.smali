.class public Lcom/startapp/f1$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/f1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/f1;


# direct methods
.method public constructor <init>(Lcom/startapp/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/f1$a;->a:Lcom/startapp/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/f1$a;->a:Lcom/startapp/f1;

    iget-object v0, v0, Lcom/startapp/f1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapp/g1;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/startapp/f1$a$a;

    invoke-direct {v2, p0, v0}, Lcom/startapp/f1$a$a;-><init>(Lcom/startapp/f1$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
