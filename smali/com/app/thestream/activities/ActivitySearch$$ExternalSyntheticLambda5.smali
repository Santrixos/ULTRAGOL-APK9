.class public final synthetic Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/ActivitySearch;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/ActivitySearch;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda5;->f$0:Lcom/app/thestream/activities/ActivitySearch;

    iput-object p2, p0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda5;->f$0:Lcom/app/thestream/activities/ActivitySearch;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/app/thestream/activities/ActivitySearch;->lambda$searchAction$5$com-app-thestream-activities-ActivitySearch(Ljava/lang/String;)V

    return-void
.end method
