.class public final synthetic Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/app/thestream/adapters/AdapterFavorite$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/fragments/FragmentFavorite;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/fragments/FragmentFavorite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/fragments/FragmentFavorite;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/fragments/FragmentFavorite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/app/thestream/fragments/FragmentFavorite;->lambda$onChannelClickListener$0$com-app-thestream-fragments-FragmentFavorite(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V

    return-void
.end method
