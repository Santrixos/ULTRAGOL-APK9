.class public Lcom/startapp/f1$a$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/f1$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/startapp/f1$a;


# direct methods
.method public constructor <init>(Lcom/startapp/f1$a;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/f1$a$a;->b:Lcom/startapp/f1$a;

    iput-object p2, p0, Lcom/startapp/f1$a$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/f1$a$a;->b:Lcom/startapp/f1$a;

    iget-object v0, v0, Lcom/startapp/f1$a;->a:Lcom/startapp/f1;

    iget-object v1, v0, Lcom/startapp/f1;->c:Lcom/startapp/f1$b;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/startapp/f1$a$a;->a:Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/startapp/f1;->d:I

    invoke-interface {v1, v2, v0}, Lcom/startapp/f1$b;->a(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method
