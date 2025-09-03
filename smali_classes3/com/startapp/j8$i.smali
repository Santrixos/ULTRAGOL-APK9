.class public Lcom/startapp/j8$i;
.super Landroid/os/AsyncTask;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/j8;


# direct methods
.method public constructor <init>(Lcom/startapp/j8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    invoke-static {p1}, Lcom/startapp/j8;->t(Lcom/startapp/j8;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Void;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    invoke-static {p1}, Lcom/startapp/j8;->i(Lcom/startapp/j8;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/startapp/j8;->b(Lcom/startapp/j8;[I)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    invoke-static {p1}, Lcom/startapp/j8;->w(Lcom/startapp/j8;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/startapp/j8;->c(Lcom/startapp/j8;Z)V

    .line 7
    iget-object p1, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    invoke-static {p1, v0}, Lcom/startapp/j8;->a(Lcom/startapp/j8;Z)Z

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/j8$i;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/j8$i;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/j8;->a(Lcom/startapp/j8;Z)Z

    .line 2
    iget-object v0, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/j8;->b(Lcom/startapp/j8;Z)V

    .line 3
    iget-object v0, p0, Lcom/startapp/j8$i;->a:Lcom/startapp/j8;

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/startapp/j8;->a(Lcom/startapp/j8;[I)[I

    return-void
.end method
