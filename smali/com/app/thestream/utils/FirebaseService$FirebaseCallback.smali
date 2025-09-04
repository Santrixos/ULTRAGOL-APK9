.class public abstract interface Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;
.super Ljava/lang/Object;
.source "FirebaseService.java"

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/utils/FirebaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FirebaseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method