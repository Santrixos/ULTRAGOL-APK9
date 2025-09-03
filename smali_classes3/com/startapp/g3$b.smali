.class public Lcom/startapp/g3$b;
.super Landroid/os/AsyncTask;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/startapp/networkTest/data/IspInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/g3;


# direct methods
.method public constructor <init>(Lcom/startapp/g3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/g3$b;->a:Lcom/startapp/g3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Lcom/startapp/networkTest/data/IspInfo;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/startapp/g3$b;->a:Lcom/startapp/g3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/startapp/g3;->a(Lcom/startapp/networkTest/data/WifiInfo;)Lcom/startapp/networkTest/data/IspInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/startapp/networkTest/data/IspInfo;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/startapp/g3$b;->a:Lcom/startapp/g3;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/startapp/g3;->b(Lcom/startapp/g3;Z)Z

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/g3$b;->a([Ljava/lang/Void;)Lcom/startapp/networkTest/data/IspInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startapp/networkTest/data/IspInfo;

    invoke-virtual {p0, p1}, Lcom/startapp/g3$b;->a(Lcom/startapp/networkTest/data/IspInfo;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/startapp/g3$b;->a:Lcom/startapp/g3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/g3;->b(Lcom/startapp/g3;Z)Z

    return-void
.end method
