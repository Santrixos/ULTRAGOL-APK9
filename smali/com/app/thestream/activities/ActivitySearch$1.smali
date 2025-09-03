.class Lcom/app/thestream/activities/ActivitySearch$1;
.super Ljava/lang/Object;
.source "ActivitySearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/activities/ActivitySearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/activities/ActivitySearch;


# direct methods
.method constructor <init>(Lcom/app/thestream/activities/ActivitySearch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch$1;->this$0:Lcom/app/thestream/activities/ActivitySearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch$1;->this$0:Lcom/app/thestream/activities/ActivitySearch;

    invoke-static {p1}, Lcom/app/thestream/activities/ActivitySearch;->access$000(Lcom/app/thestream/activities/ActivitySearch;)Landroid/widget/ImageButton;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch$1;->this$0:Lcom/app/thestream/activities/ActivitySearch;

    invoke-static {p1}, Lcom/app/thestream/activities/ActivitySearch;->access$000(Lcom/app/thestream/activities/ActivitySearch;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
