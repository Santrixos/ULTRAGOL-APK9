.class public final synthetic Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/fragments/FragmentFavorite;

.field public final synthetic f$1:Lcom/app/thestream/models/Channel;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/fragments/FragmentFavorite;Lcom/app/thestream/models/Channel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda2;->f$0:Lcom/app/thestream/fragments/FragmentFavorite;

    iput-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda2;->f$1:Lcom/app/thestream/models/Channel;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda2;->f$0:Lcom/app/thestream/fragments/FragmentFavorite;

    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda2;->f$1:Lcom/app/thestream/models/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/app/thestream/fragments/FragmentFavorite;->lambda$addFavorite$1$com-app-thestream-fragments-FragmentFavorite(Lcom/app/thestream/models/Channel;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
