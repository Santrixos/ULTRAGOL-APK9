.class Lcom/app/thestream/activities/ActivityCalendarLigaMX$4;
.super Ljava/lang/Object;
.source "ActivityCalendarLigaMX.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/activities/ActivityCalendarLigaMX;->showGeminiResponseDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;


# direct methods
.method constructor <init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V
    .registers 2
    .param p1, "this$0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$4;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$4;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$500(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    return-void
.end method