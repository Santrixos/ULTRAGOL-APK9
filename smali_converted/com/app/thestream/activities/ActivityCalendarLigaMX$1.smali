.class Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;
.super Landroid/os/AsyncTask;
.source "ActivityCalendarLigaMX.java"

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/activities/ActivityCalendarLigaMX;->loadCalendario()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/app/thestream/models/CalendarioLigaMX;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;


# direct methods
.method constructor <init>(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V
    .registers 2
    .param p1, "this$0"    # Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->doInBackground([Ljava/lang/Void;)Lcom/app/thestream/models/CalendarioLigaMX;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/app/thestream/models/CalendarioLigaMX;
    .registers 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0}, Lcom/app/thestream/utils/CalendarDataLoader;->loadCalendarFromAssets(Landroid/content/Context;)Lcom/app/thestream/models/CalendarioLigaMX;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 144
    check-cast p1, Lcom/app/thestream/models/CalendarioLigaMX;

    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->onPostExecute(Lcom/app/thestream/models/CalendarioLigaMX;)V

    return-void
.end method

.method protected onPostExecute(Lcom/app/thestream/models/CalendarioLigaMX;)V
    .registers 4
    .param p1, "calendar"    # Lcom/app/thestream/models/CalendarioLigaMX;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0, p1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$002(Lcom/app/thestream/activities/ActivityCalendarLigaMX;Lcom/app/thestream/models/CalendarioLigaMX;)Lcom/app/thestream/models/CalendarioLigaMX;

    .line 154
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/app/thestream/models/CalendarioLigaMX;->getJornadas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 155
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$100(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    .line 156
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$200(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$300(Lcom/app/thestream/activities/ActivityCalendarLigaMX;I)V

    .line 160
    :goto_17
    return-void

    .line 158
    :cond_18
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCalendarLigaMX$1;->this$0:Lcom/app/thestream/activities/ActivityCalendarLigaMX;

    invoke-static {v0}, Lcom/app/thestream/activities/ActivityCalendarLigaMX;->access$400(Lcom/app/thestream/activities/ActivityCalendarLigaMX;)V

    goto :goto_17
.end method