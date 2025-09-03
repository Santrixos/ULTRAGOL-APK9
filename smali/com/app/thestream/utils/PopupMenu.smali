.class public Lcom/app/thestream/utils/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# instance fields
.field activity:Landroid/app/Activity;

.field charSequence:Ljava/lang/CharSequence;

.field dao:Lcom/app/thestream/databases/dao/DAO;

.field flag_read_later:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/app/thestream/utils/PopupMenu;->charSequence:Ljava/lang/CharSequence;

    .line 23
    iput-object p1, p0, Lcom/app/thestream/utils/PopupMenu;->activity:Landroid/app/Activity;

    .line 24
    invoke-static {p1}, Lcom/app/thestream/databases/dao/AppDatabase;->getDatabase(Landroid/content/Context;)Lcom/app/thestream/databases/dao/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/thestream/databases/dao/AppDatabase;->get()Lcom/app/thestream/databases/dao/DAO;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/utils/PopupMenu;->dao:Lcom/app/thestream/databases/dao/DAO;

    return-void
.end method


# virtual methods
.method synthetic lambda$onClickItemOverflow$0$com-app-thestream-utils-PopupMenu(Lcom/app/thestream/models/Channel;Landroid/view/View;Landroid/view/MenuItem;)Z
    .locals 4

    .line 33
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 45
    :pswitch_0
    iget-object p2, p0, Lcom/app/thestream/utils/PopupMenu;->activity:Landroid/app/Activity;

    iget-object p1, p1, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/app/thestream/utils/Tools;->share(Landroid/app/Activity;Ljava/lang/String;)V

    return v0

    .line 35
    :pswitch_1
    iget-object p3, p0, Lcom/app/thestream/utils/PopupMenu;->charSequence:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/app/thestream/utils/PopupMenu;->activity:Landroid/app/Activity;

    const v2, 0x7f120110

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, -0x1

    if-eqz p3, :cond_0

    .line 36
    iget-object p3, p0, Lcom/app/thestream/utils/PopupMenu;->dao:Lcom/app/thestream/databases/dao/DAO;

    invoke-static {p1}, Lcom/app/thestream/databases/dao/ChannelEntity;->entity(Lcom/app/thestream/models/Channel;)Lcom/app/thestream/databases/dao/ChannelEntity;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/app/thestream/databases/dao/DAO;->insertChannel(Lcom/app/thestream/databases/dao/ChannelEntity;)V

    .line 37
    iget-object p1, p0, Lcom/app/thestream/utils/PopupMenu;->activity:Landroid/app/Activity;

    const p3, 0x7f1200b5

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p3, p0, Lcom/app/thestream/utils/PopupMenu;->charSequence:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/app/thestream/utils/PopupMenu;->activity:Landroid/app/Activity;

    const v3, 0x7f120113

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 39
    iget-object p3, p0, Lcom/app/thestream/utils/PopupMenu;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object p1, p1, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    invoke-interface {p3, p1}, Lcom/app/thestream/databases/dao/DAO;->deleteChannel(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/app/thestream/utils/PopupMenu;->activity:Landroid/app/Activity;

    const p3, 0x7f1200b6

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01c1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClickItemOverflow(Landroid/view/View;Lcom/app/thestream/models/Channel;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "channel",
            "viewSnackBar"
        }
    .end annotation

    .line 29
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/app/thestream/utils/PopupMenu;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    .line 31
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {p1, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 32
    new-instance p1, Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lcom/app/thestream/utils/PopupMenu$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/utils/PopupMenu;Lcom/app/thestream/models/Channel;Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 52
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 54
    iget-object p1, p0, Lcom/app/thestream/utils/PopupMenu;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object p2, p2, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/app/thestream/databases/dao/DAO;->getChannel(Ljava/lang/String;)Lcom/app/thestream/databases/dao/ChannelEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/app/thestream/utils/PopupMenu;->flag_read_later:Z

    const p2, 0x7f0a01c1

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p3, 0x7f120113

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 57
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/utils/PopupMenu;->charSequence:Ljava/lang/CharSequence;

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p3, 0x7f120110

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 60
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/utils/PopupMenu;->charSequence:Ljava/lang/CharSequence;

    :goto_1
    return-void
.end method
