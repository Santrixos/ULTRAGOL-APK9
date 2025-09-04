.class synthetic Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;

    check-cast p1, Lcom/google/firebase/firestore/DocumentReference;

    invoke-static {v0, p1}, Lcom/app/thestream/utils/FirebaseService;->lambda$addStreamingLink$0(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;Lcom/google/firebase/firestore/DocumentReference;)V

    return-void
.end method