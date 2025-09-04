.class public Lcom/app/thestream/utils/NavigationHelper;
.super Ljava/lang/Object;
.source "NavigationHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleNavigationItemSelected(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemId"    # I

    .prologue
    .line 14
    const v0, 0x7f0c0035    # R.id.navigation_calendar

    if-ne p1, v0, :cond_8

    .line 15
    invoke-static {p0}, Lcom/app/thestream/utils/NavigationHelper;->openCalendarLigaMX(Landroid/content/Context;)V

    .line 17
    :cond_8
    return-void
.end method

.method public static openCalendarLigaMX(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11
    return-void
.end method