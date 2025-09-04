.class Lcom/app/thestream/utils/AddStreamingDialog$1;
.super Ljava/lang/Object;
.source "AddStreamingDialog.java"

# interfaces
.implements Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/utils/AddStreamingDialog;->lambda$createDialog$0(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/app/thestream/utils/FirebaseService$FirebaseCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/utils/AddStreamingDialog;

.field final synthetic val$streamingLink:Lcom/app/thestream/models/StreamingLink;


# direct methods
.method constructor <init>(Lcom/app/thestream/utils/AddStreamingDialog;Lcom/app/thestream/models/StreamingLink;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/app/thestream/utils/AddStreamingDialog$1;->this$0:Lcom/app/thestream/utils/AddStreamingDialog;

    iput-object p2, p0, Lcom/app/thestream/utils/AddStreamingDialog$1;->val$streamingLink:Lcom/app/thestream/models/StreamingLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/app/thestream/utils/AddStreamingDialog$1;->val$streamingLink:Lcom/app/thestream/models/StreamingLink;

    invoke-virtual {v0, p1}, Lcom/app/thestream/models/StreamingLink;->setId(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/app/thestream/utils/AddStreamingDialog$1;->this$0:Lcom/app/thestream/utils/AddStreamingDialog;

    iget-object p1, p1, Lcom/app/thestream/utils/AddStreamingDialog;->listener:Lcom/app/thestream/utils/AddStreamingDialog$OnStreamingAddedListener;

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/app/thestream/utils/AddStreamingDialog$1;->val$streamingLink:Lcom/app/thestream/models/StreamingLink;

    invoke-interface {p1, v0}, Lcom/app/thestream/utils/AddStreamingDialog$OnStreamingAddedListener;->onStreamingAdded(Lcom/app/thestream/models/StreamingLink;)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/utils/AddStreamingDialog$1;->this$0:Lcom/app/thestream/utils/AddStreamingDialog;

    iget-object p1, p1, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    const-string v0, "Transmision agregada exitosamente"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/app/thestream/utils/AddStreamingDialog$1;->this$0:Lcom/app/thestream/utils/AddStreamingDialog;

    iget-object v0, v0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/app/thestream/utils/AddStreamingDialog$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method