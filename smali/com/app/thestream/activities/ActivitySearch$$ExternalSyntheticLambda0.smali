.class public final synthetic Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/ActivitySearch;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/ActivitySearch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/activities/ActivitySearch;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/activities/ActivitySearch;

    check-cast p1, Lcom/app/thestream/callbacks/CallbackChannel;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, p2}, Lcom/app/thestream/activities/ActivitySearch;->lambda$requestSearchApiRTL$4$com-app-thestream-activities-ActivitySearch(Lcom/app/thestream/callbacks/CallbackChannel;Ljava/lang/Throwable;)V

    return-void
.end method
