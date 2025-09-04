.class public Lcom/app/thestream/utils/FirebaseService;
.super Ljava/lang/Object;
.source "FirebaseService.java"


# interfaces
.interface abstract Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;
.end interface


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseService"

.field private static final COLLECTION_STREAMING_LINKS:Ljava/lang/String; = "streaming_links"

.field private static instance:Lcom/app/thestream/utils/FirebaseService;


# instance fields
.field private db:Lcom/google/firebase/firestore/FirebaseFirestore;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    iput-object v0, p0, Lcom/app/thestream/utils/FirebaseService;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-void
.end method

.method public static getInstance()Lcom/app/thestream/utils/FirebaseService;
    .locals 1

    .line 25
    sget-object v0, Lcom/app/thestream/utils/FirebaseService;->instance:Lcom/app/thestream/utils/FirebaseService;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/app/thestream/utils/FirebaseService;

    invoke-direct {v0}, Lcom/app/thestream/utils/FirebaseService;-><init>()V

    sput-object v0, Lcom/app/thestream/utils/FirebaseService;->instance:Lcom/app/thestream/utils/FirebaseService;

    .line 28
    :cond_0
    sget-object v0, Lcom/app/thestream/utils/FirebaseService;->instance:Lcom/app/thestream/utils/FirebaseService;

    return-object v0
.end method


# virtual methods
.method public addStreamingLink(Lcom/app/thestream/models/StreamingLink;Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/app/thestream/models/StreamingLink;",
            "Lcom/app/thestream/utils/FirebaseService$FirebaseCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/app/thestream/models/StreamingLink;->getMatchId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "matchId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Lcom/app/thestream/models/StreamingLink;->getStreamUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "streamUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Lcom/app/thestream/models/StreamingLink;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Lcom/app/thestream/models/StreamingLink;->getStreamerName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "streamerName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Lcom/app/thestream/models/StreamingLink;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Lcom/app/thestream/models/StreamingLink;->isActive()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isActive"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lcom/app/thestream/utils/FirebaseService;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "streaming_links"

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/CollectionReference;->add(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getAllStreamingLinks(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/app/thestream/utils/FirebaseService$FirebaseCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/StreamingLink;",
            ">;>;>;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/app/thestream/utils/FirebaseService;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v1, "streaming_links"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "isActive"

    const/4 v2, 0x1

    .line 82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    const-string v1, "timestamp"

    .line 83
    sget-object v2, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/app/thestream/utils/FirebaseService$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static synthetic lambda$addStreamingLink$0(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;Lcom/google/firebase/firestore/DocumentReference;)V
    .locals 2

    const-string v0, "FirebaseService"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Streaming link added with ID: "

    invoke-virtual {v1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$addStreamingLink$1(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "FirebaseService"

    const-string v1, "Error adding streaming link"

    .line 52
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error al agregar transmision: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAllStreamingLinks$2(Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 90
    const-class v2, Lcom/app/thestream/models/StreamingLink;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/app/thestream/models/StreamingLink;

    .line 91
    invoke-virtual {v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/app/thestream/models/StreamingLink;->setId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Lcom/app/thestream/models/StreamingLink;->getMatchId()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "FirebaseService"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieved streaming links for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " matches"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {p0, v0}, Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "FirebaseService"

    const-string v1, "Error getting all streaming links"

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Error al cargar transmisiones"

    .line 104
    invoke-interface {p0, p1}, Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;->onError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method