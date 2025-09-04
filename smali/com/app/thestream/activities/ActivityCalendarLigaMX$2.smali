.class Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;
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
    .line 121
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    const-string v0, "CalendarLigaMX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udd04 Bot\u00f3n Siguiente presionado - Jornada actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$000(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)Lcom/app/thestream/models/CalendarioLigaMX;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$000(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)Lcom/app/thestream/models/CalendarioLigaMX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 125
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$402(Lcom/app/thestream/activities/ActivityCalendarLigaMX;I)I

    .line 126
    const-string v0, "CalendarLigaMX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u27a1\ufe0f Navegando a jornada: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v2}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$2;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$200(Lcom/app/thestream/activities/ActivityCalendarLigaMX;I)V

    .line 131
    :goto_67
    return-void

    .line 129
    :cond_68
    const-string v0, "CalendarLigaMX"

    const-string v1, "\u26a0\ufe0f Ya est\u00e1s en la \u00faltima jornada disponible"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method