.class public Lcom/app/thestream/activities/MainActivity$MyAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/app/thestream/activities/MainActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "fm"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity$MyAdapter;->this$0:Lcom/app/thestream/activities/MainActivity;

    const/4 p1, 0x1

    .line 269
    invoke-direct {p0, p2, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$MyAdapter;->this$0:Lcom/app/thestream/activities/MainActivity;

    iget v0, v0, Lcom/app/thestream/activities/MainActivity;->pager_number:I

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 284
    :cond_0
    new-instance p1, Lcom/app/thestream/fragments/FragmentSettings;

    invoke-direct {p1}, Lcom/app/thestream/fragments/FragmentSettings;-><init>()V

    return-object p1

    .line 282
    :cond_1
    new-instance p1, Lcom/app/thestream/fragments/FragmentFavorite;

    invoke-direct {p1}, Lcom/app/thestream/fragments/FragmentFavorite;-><init>()V

    return-object p1

    .line 280
    :cond_2
    new-instance p1, Lcom/app/thestream/fragments/FragmentRecent;

    invoke-direct {p1}, Lcom/app/thestream/fragments/FragmentRecent;-><init>()V

    return-object p1

    .line 278
    :cond_3
    new-instance p1, Lcom/app/thestream/fragments/FragmentCategory;

    invoke-direct {p1}, Lcom/app/thestream/fragments/FragmentCategory;-><init>()V

    return-object p1
.end method
