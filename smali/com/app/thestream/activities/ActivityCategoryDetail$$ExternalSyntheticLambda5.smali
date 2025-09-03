.class public final synthetic Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/ActivityCategoryDetail;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda5;->f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;

    iput p2, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda5;->f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;

    iget v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lcom/app/thestream/callbacks/CallbackDetailCategory;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/app/thestream/activities/ActivityCategoryDetail;->lambda$requestPostApi$2$com-app-thestream-activities-ActivityCategoryDetail(ILcom/app/thestream/callbacks/CallbackDetailCategory;Ljava/lang/Throwable;)V

    return-void
.end method
