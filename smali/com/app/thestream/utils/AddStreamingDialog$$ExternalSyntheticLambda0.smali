.class synthetic Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/utils/AddStreamingDialog;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/utils/AddStreamingDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/utils/AddStreamingDialog;

    iput-object p2, p0, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;->f$3:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/utils/AddStreamingDialog;

    iget-object v1, p0, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;->f$3:Landroid/widget/Spinner;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/app/thestream/utils/AddStreamingDialog;->lambda$createDialog$0(Lcom/app/thestream/utils/AddStreamingDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V

    return-void
.end method