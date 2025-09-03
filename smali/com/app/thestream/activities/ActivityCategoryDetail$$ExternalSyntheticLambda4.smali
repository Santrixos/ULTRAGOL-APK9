.class public final synthetic Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/ActivityCategoryDetail;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda4;->f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;

    iput-boolean p2, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda4;->f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;

    iget-boolean v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda4;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->lambda$swipeProgress$5$com-app-thestream-activities-ActivityCategoryDetail(Z)V

    return-void
.end method
