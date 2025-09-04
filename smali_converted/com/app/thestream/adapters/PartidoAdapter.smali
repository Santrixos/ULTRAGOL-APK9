.class public Lcom/app/thestream/adapters/PartidoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PartidoAdapter.java"

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private partidos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Partido;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Partido;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "partidos":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Partido;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/app/thestream/adapters/PartidoAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/app/thestream/adapters/PartidoAdapter;->partidos:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/app/thestream/adapters/PartidoAdapter;->partidos:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/app/thestream/adapters/PartidoAdapter;->partidos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    check-cast p1, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/app/thestream/adapters/PartidoAdapter;->onBindViewHolder(Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    .line 32
    iget-object v1, p0, Lcom/app/thestream/adapters/PartidoAdapter;->partidos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/thestream/models/Partido;

    .line 34
    .local v0, "partido":Lcom/app/thestream/models/Partido;
    iget-object v1, p1, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvEquipoLocal:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/thestream/models/Partido;->getLocal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p1, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvEquipoVisitante:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/thestream/models/Partido;->getVisitante()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p1, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvDia:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/thestream/models/Partido;->getDia()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, p1, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvHora:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/thestream/models/Partido;->getHora()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p1, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvEstadio:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/app/thestream/models/Partido;->getEstadio()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/app/thestream/adapters/PartidoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewType"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/app/thestream/adapters/PartidoAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e002a    # R.layout.item_partido_ligamx

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;

    invoke-direct {v1, v0}, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public updatePartidos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Partido;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "nuevosPartidos":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Partido;>;"
    iput-object p1, p0, Lcom/app/thestream/adapters/PartidoAdapter;->partidos:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Lcom/app/thestream/adapters/PartidoAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method