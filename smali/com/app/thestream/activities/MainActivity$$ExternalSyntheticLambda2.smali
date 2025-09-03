.class public final synthetic Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/app/thestream/activities/MainActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda2;->f$0:Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {v0, p1}, Lcom/app/thestream/activities/MainActivity;->lambda$initViewPager$0$com-app-thestream-activities-MainActivity(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
