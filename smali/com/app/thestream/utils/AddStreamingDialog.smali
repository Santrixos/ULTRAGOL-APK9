.class public Lcom/app/thestream/utils/AddStreamingDialog;
.super Ljava/lang/Object;
.source "AddStreamingDialog.java"


# interfaces
.interface abstract Lcom/app/thestream/utils/AddStreamingDialog$OnStreamingAddedListener;
.end interface


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/app/thestream/utils/AddStreamingDialog$OnStreamingAddedListener;

.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/app/thestream/utils/AddStreamingDialog$OnStreamingAddedListener;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/app/thestream/utils/AddStreamingDialog;->listener:Lcom/app/thestream/utils/AddStreamingDialog$OnStreamingAddedListener;

    return-void
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 8

    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Agregar Transmision"

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 29
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x20

    .line 31
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 33
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v5, "URL de transmision"

    .line 34
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    new-instance v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v6, "Nombre del canal"

    .line 38
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 41
    new-instance v6, Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x6

    .line 42
    new-array v7, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v2, "YouTube"

    aput-object v2, v7, v3

    const-string v2, "Facebook"

    const/4 v3, 0x1

    aput-object v2, v7, v3

    const/4 v2, 0x2

    const-string v3, "Instagram"

    aput-object v3, v7, v2

    const/4 v2, 0x3

    const-string v3, "Twitch"

    aput-object v3, v7, v2

    const/4 v2, 0x4

    const-string v3, "TikTok"

    aput-object v3, v7, v2

    const/4 v2, 0x5

    const-string v3, "Otra"

    aput-object v3, v7, v2

    .line 43
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    const v8, 0x1090008

    invoke-direct {v2, v3, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 45
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Agregar"

    .line 49
    new-instance v2, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/app/thestream/utils/AddStreamingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/utils/AddStreamingDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancelar"

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/app/thestream/utils/AddStreamingDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/app/thestream/utils/AddStreamingDialog;->dialog:Landroid/app/AlertDialog;

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic lambda$createDialog$0(Lcom/app/thestream/utils/AddStreamingDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 49
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 50
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/app/thestream/utils/AddStreamingDialog;->getPlatformValue(I)Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 54
    new-instance p3, Lcom/app/thestream/models/StreamingLink;

    const-string p5, "match_general"

    invoke-direct {p3, p5, p4, p2, p1}, Lcom/app/thestream/models/StreamingLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/app/thestream/utils/FirebaseService;->getInstance()Lcom/app/thestream/utils/FirebaseService;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/utils/AddStreamingDialog$1;

    invoke-direct {p2, p0, p3}, Lcom/app/thestream/utils/AddStreamingDialog$1;-><init>(Lcom/app/thestream/utils/AddStreamingDialog;Lcom/app/thestream/models/StreamingLink;)V

    invoke-virtual {p1, p3, p2}, Lcom/app/thestream/utils/FirebaseService;->addStreamingLink(Lcom/app/thestream/models/StreamingLink;Lcom/app/thestream/utils/FirebaseService$FirebaseCallback;)V

    .line 67
    iget-object p1, p0, Lcom/app/thestream/utils/AddStreamingDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/utils/AddStreamingDialog;->context:Landroid/content/Context;

    const-string p2, "Por favor completa todos los campos"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private getPlatformValue(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "other"

    return-object p1

    :pswitch_0
    const-string p1, "other"

    return-object p1

    :pswitch_1
    const-string p1, "tiktok"

    return-object p1

    :pswitch_2
    const-string p1, "twitch"

    return-object p1

    :pswitch_3
    const-string p1, "instagram"

    return-object p1

    :pswitch_4
    const-string p1, "facebook"

    return-object p1

    :pswitch_5
    const-string p1, "youtube"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method