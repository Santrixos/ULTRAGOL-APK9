.class public final synthetic Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/utils/PopupMenu;

.field public final synthetic f$1:Lcom/app/thestream/models/Channel;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/utils/PopupMenu;Lcom/app/thestream/models/Channel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/utils/PopupMenu;

    iput-object p2, p0, Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;->f$1:Lcom/app/thestream/models/Channel;

    iput-object p3, p0, Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/utils/PopupMenu;

    iget-object v1, p0, Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;->f$1:Lcom/app/thestream/models/Channel;

    iget-object v2, p0, Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/app/thestream/utils/PopupMenu;->lambda$onClickItemOverflow$0$com-app-thestream-utils-PopupMenu(Lcom/app/thestream/models/Channel;Landroid/view/View;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
