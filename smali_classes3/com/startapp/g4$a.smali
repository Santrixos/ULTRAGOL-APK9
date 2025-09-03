.class public Lcom/startapp/g4$a;
.super Landroid/os/AsyncTask;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/g4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final synthetic d:Lcom/startapp/g4;


# direct methods
.method public constructor <init>(Lcom/startapp/g4;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/g4$a;->d:Lcom/startapp/g4;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7
    iput p2, p0, Lcom/startapp/g4$a;->a:I

    .line 8
    iput-object p3, p0, Lcom/startapp/g4$a;->b:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/startapp/g4$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/startapp/g4$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/g1;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lcom/startapp/g4$a;->d:Lcom/startapp/g4;

    iget v1, v0, Lcom/startapp/g4;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/startapp/g4;->e:I

    if-eqz p1, :cond_3

    .line 4
    iget-object v0, v0, Lcom/startapp/g4;->b:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/startapp/g4$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/startapp/g4$a;->d:Lcom/startapp/g4;

    iget-object p1, p1, Lcom/startapp/g4;->d:Lcom/startapp/r7;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    iget v1, p0, Lcom/startapp/g4$a;->a:I

    check-cast p1, Lcom/startapp/sdk/ads/list3d/List3DActivity;

    .line 7
    iget-object v3, p1, Lcom/startapp/sdk/ads/list3d/List3DActivity;->a:Lcom/startapp/sdk/ads/list3d/List3DView;

    .line 8
    iget v4, v3, Lcom/startapp/sdk/ads/list3d/List3DView;->i:I

    sub-int v4, v1, v4

    .line 9
    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/x5;

    .line 15
    sget-object v4, Lcom/startapp/z5;->b:Lcom/startapp/z5;

    .line 16
    iget-object p1, p1, Lcom/startapp/sdk/ads/list3d/List3DActivity;->f:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/startapp/z5;->a(Ljava/lang/String;)Lcom/startapp/y5;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    iget-object v4, p1, Lcom/startapp/y5;->b:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 19
    iget-object v4, p1, Lcom/startapp/y5;->b:Ljava/util/List;

    .line 20
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapp/w5;

    .line 21
    iget-object v5, v4, Lcom/startapp/w5;->a:Ljava/lang/String;

    .line 22
    iget-object v6, v4, Lcom/startapp/w5;->i:Ljava/lang/String;

    .line 23
    iget-object p1, p1, Lcom/startapp/y5;->a:Lcom/startapp/g4;

    invoke-virtual {p1, v1, v5, v6}, Lcom/startapp/g4;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 24
    iget-object v1, v3, Lcom/startapp/x5;->b:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    iget-object p1, v3, Lcom/startapp/x5;->b:Landroid/widget/ImageView;

    .line 27
    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 28
    iget-object p1, v4, Lcom/startapp/w5;->n:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-virtual {v3, v2}, Lcom/startapp/x5;->a(Z)V

    .line 30
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/startapp/g4$a;->d:Lcom/startapp/g4;

    .line 31
    iget-object v1, p1, Lcom/startapp/g4;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 32
    iget-object v1, p1, Lcom/startapp/g4;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/g4$b;

    .line 33
    new-instance v2, Lcom/startapp/g4$a;

    iget v3, v1, Lcom/startapp/g4$b;->a:I

    iget-object v4, v1, Lcom/startapp/g4$b;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/startapp/g4$b;->c:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/startapp/g4$a;-><init>(Lcom/startapp/g4;ILjava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {v2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method
