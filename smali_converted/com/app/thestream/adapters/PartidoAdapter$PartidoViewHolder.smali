.class Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PartidoAdapter.java"

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/adapters/PartidoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PartidoViewHolder"
.end annotation


# instance fields
.field tvDia:Landroid/widget/TextView;

.field tvEquipoLocal:Landroid/widget/TextView;

.field tvEquipoVisitante:Landroid/widget/TextView;

.field tvEstadio:Landroid/widget/TextView;

.field tvHora:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    const v0, 0x7f0c0099    # R.id.tv_equipo_local

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvEquipoLocal:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0c009a    # R.id.tv_equipo_visitante

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvEquipoVisitante:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0c0097    # R.id.tv_dia

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvDia:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0c009b    # R.id.tv_hora

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvHora:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c0098    # R.id.tv_estadio

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/adapters/PartidoAdapter$PartidoViewHolder;->tvEstadio:Landroid/widget/TextView;

    .line 61
    return-void
.end method