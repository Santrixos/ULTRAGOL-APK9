.class public Lcom/startapp/j8$j;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/startapp/j8$o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/startapp/j8$n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/startapp/j8$h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/startapp/j8$l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/startapp/j8$m;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Lcom/startapp/j8;


# direct methods
.method public constructor <init>(Lcom/startapp/j8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$j;->h:Lcom/startapp/j8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8$j;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8$j;->b:Landroid/util/SparseArray;

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8$j;->c:Landroid/util/SparseArray;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8$j;->d:Ljava/util/HashMap;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8$j;->e:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8$j;->g:Ljava/util/Map;

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/startapp/j8$j;->f:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/startapp/j8$h;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/startapp/j8$j;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/j8$h;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/startapp/j8$l;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/startapp/j8$j;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/j8$l;

    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/startapp/j8$j;->g:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    if-eqz p2, :cond_0

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aget-object p2, p2, v2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public a(ILcom/startapp/j8$h;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/startapp/j8$j;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/startapp/j8$m;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/startapp/j8$j;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/startapp/j8$n;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/startapp/j8$j;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/startapp/j8$o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$j;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/startapp/j8$j;->g:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(I[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/startapp/j8$j;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/startapp/j8$l;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/startapp/j8$j;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(I)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$j;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    return-object p1
.end method

.method public c(I)Lcom/startapp/j8$m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$j;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/j8$m;

    return-object p1
.end method

.method public d(I)Lcom/startapp/j8$n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$j;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/j8$n;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/startapp/j8$n;

    iget-object v0, p0, Lcom/startapp/j8$j;->h:Lcom/startapp/j8;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/startapp/j8$n;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    :cond_0
    return-object p1
.end method

.method public e(I)Lcom/startapp/j8$o;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/j8$j;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/j8$o;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/startapp/j8$o;

    iget-object v0, p0, Lcom/startapp/j8$j;->h:Lcom/startapp/j8;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/startapp/j8$o;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    :cond_0
    return-object p1
.end method
