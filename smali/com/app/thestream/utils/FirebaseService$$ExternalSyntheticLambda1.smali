.class synthetic Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;

    invoke-static {v0, p1}, Lcom/app/thestream/utils/FirebaseService;->lambda$addStreamingLink$1(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;Ljava/lang/Exception;)V

    return-void
.end method