.class Lcom/app/thestream/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/activities/MainActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/app/thestream/activities/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    iget-object v0, v0, Lcom/app/thestream/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    iget-object v0, v0, Lcom/app/thestream/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {v0}, Lcom/app/thestream/activities/MainActivity;->access$000(Lcom/app/thestream/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {v0}, Lcom/app/thestream/activities/MainActivity;->access$000(Lcom/app/thestream/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 169
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {v0}, Lcom/app/thestream/activities/MainActivity;->access$000(Lcom/app/thestream/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, v0, Lcom/app/thestream/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    .line 171
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$100(Lcom/app/thestream/activities/MainActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {v0}, Lcom/app/thestream/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$100(Lcom/app/thestream/activities/MainActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 174
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {v0}, Lcom/app/thestream/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$100(Lcom/app/thestream/activities/MainActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 176
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {v0}, Lcom/app/thestream/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$1;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const v0, 0x7f120053

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    :goto_1
    return-void
.end method
