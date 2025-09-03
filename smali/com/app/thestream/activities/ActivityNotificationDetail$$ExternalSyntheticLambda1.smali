.class public final synthetic Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/ActivityNotificationDetail;

.field public final synthetic f$1:Lcom/app/thestream/models/Channel;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/ActivityNotificationDetail;Lcom/app/thestream/models/Channel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/activities/ActivityNotificationDetail;

    iput-object p2, p0, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda1;->f$1:Lcom/app/thestream/models/Channel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/activities/ActivityNotificationDetail;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda1;->f$1:Lcom/app/thestream/models/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->lambda$addToFavorite$8$com-app-thestream-activities-ActivityNotificationDetail(Lcom/app/thestream/models/Channel;Landroid/view/View;)V

    return-void
.end method
