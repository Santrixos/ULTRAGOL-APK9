.class Lcom/app/thestream/activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/activities/MainActivity;->initRTLViewPager()V
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

    .line 222
    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

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

    .line 230
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    iget-object v0, v0, Lcom/app/thestream/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    iget-object v0, v0, Lcom/app/thestream/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {v0}, Lcom/app/thestream/activities/MainActivity;->access$000(Lcom/app/thestream/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {v0}, Lcom/app/thestream/activities/MainActivity;->access$000(Lcom/app/thestream/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 236
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {v0}, Lcom/app/thestream/activities/MainActivity;->access$000(Lcom/app/thestream/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, v0, Lcom/app/thestream/activities/MainActivity;->prevMenuItem:Landroid/view/MenuItem;

    .line 238
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$300(Lcom/app/thestream/activities/MainActivity;)Lcom/app/thestream/utils/RtlViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/thestream/utils/RtlViewPager;->getCurrentItem()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {v0}, Lcom/app/thestream/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$300(Lcom/app/thestream/activities/MainActivity;)Lcom/app/thestream/utils/RtlViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/thestream/utils/RtlViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 241
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {v0}, Lcom/app/thestream/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$300(Lcom/app/thestream/activities/MainActivity;)Lcom/app/thestream/utils/RtlViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/thestream/utils/RtlViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 243
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {v0}, Lcom/app/thestream/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 245
    :cond_3
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity$2;->this$0:Lcom/app/thestream/activities/MainActivity;

    invoke-static {p1}, Lcom/app/thestream/activities/MainActivity;->access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const v0, 0x7f120053

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    :goto_1
    return-void
.end method
