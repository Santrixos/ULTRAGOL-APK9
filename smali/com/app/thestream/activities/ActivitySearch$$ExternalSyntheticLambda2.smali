.class public final synthetic Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/ActivitySearch;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/ActivitySearch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda2;->f$0:Lcom/app/thestream/activities/ActivitySearch;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda2;->f$0:Lcom/app/thestream/activities/ActivitySearch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/app/thestream/activities/ActivitySearch;->lambda$onCreate$1$com-app-thestream-activities-ActivitySearch(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
