.class Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;
.super Ljava/lang/Object;
.source "ActivityCalendarLigaMX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/activities/ActivityCalendarLigaMX;->setupClickListeners()V
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
    .line 110
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    const-string v0, "CalendarLigaMX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udd04 Bot\u00f3n Anterior presionado - Jornada actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_54

    .line 114
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$402(Lcom/app/thestream/activities/ActivityCalendarLigaMX;I)I

    .line 115
    const-string v0, "CalendarLigaMX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2b05\ufe0f Navegando a jornada: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$200(Lcom/app/thestream/activities/ActivityCalendarLigaMX;I)V

    .line 120
    :goto_53
    return-void

    .line 118
    :cond_54
    const-string v0, "CalendarLigaMX"

    const-string v1, "\u26a0\ufe0f Ya est\u00e1s en la primera jornada"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method