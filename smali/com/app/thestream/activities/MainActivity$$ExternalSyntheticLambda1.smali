.class public final synthetic Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/activities/MainActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/activities/MainActivity;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {v0, p1}, Lcom/app/thestream/activities/MainActivity;->lambda$inAppUpdate$11$com-app-thestream-activities-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
