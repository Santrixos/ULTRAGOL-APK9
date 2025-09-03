.class public final synthetic Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/MainActivity;

.field public final synthetic f$1:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/MainActivity;Lcom/google/android/play/core/review/ReviewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/app/thestream/activities/MainActivity;

    iput-object p2, p0, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/app/thestream/activities/MainActivity;

    iget-object v1, p0, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    invoke-virtual {v0, v1, p1}, Lcom/app/thestream/activities/MainActivity;->lambda$inAppReview$9$com-app-thestream-activities-MainActivity(Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/play/core/tasks/Task;)V

    return-void
.end method
