.class public final synthetic Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/fragments/FragmentRecent;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/fragments/FragmentRecent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda6;->f$0:Lcom/app/thestream/fragments/FragmentRecent;

    iput p2, p0, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda6;->f$0:Lcom/app/thestream/fragments/FragmentRecent;

    iget v1, p0, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda6;->f$1:I

    invoke-virtual {v0, v1}, Lcom/app/thestream/fragments/FragmentRecent;->lambda$requestAction$4$com-app-thestream-fragments-FragmentRecent(I)V

    return-void
.end method
