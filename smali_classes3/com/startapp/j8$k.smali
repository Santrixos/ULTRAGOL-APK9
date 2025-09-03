.class public Lcom/startapp/j8$k;
.super Landroid/content/BroadcastReceiver;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final synthetic c:Lcom/startapp/j8;


# direct methods
.method private constructor <init>(Lcom/startapp/j8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$k;->c:Lcom/startapp/j8;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "android.intent.action.ANY_DATA_STATE"

    .line 3
    iput-object p1, p0, Lcom/startapp/j8$k;->a:Ljava/lang/String;

    const-string p1, "com.samsung.ims.action.IMS_REGISTRATION"

    .line 4
    iput-object p1, p0, Lcom/startapp/j8$k;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/startapp/j8$k;-><init>(Lcom/startapp/j8;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "subscription"

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    :try_start_1
    const-string v0, "reason"

    .line 11
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apnType"

    .line 12
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x1

    .line 17
    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int v3, p1

    :cond_2
    :goto_0
    const-string p1, "default"

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v1, "supl"

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/startapp/j8$k;->c:Lcom/startapp/j8;

    invoke-static {p1}, Lcom/startapp/j8;->b(Lcom/startapp/j8;)Lcom/startapp/j8$j;

    move-result-object p1

    invoke-virtual {p1, v3, v1, v0}, Lcom/startapp/j8$j;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string p1, "com.samsung.ims.action.IMS_REGISTRATION"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const-string p1, "SERVICE"

    .line 26
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PHONE_ID"

    .line 27
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SIP_ERROR"

    .line 28
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "VOWIFI"

    const/4 v5, 0x0

    .line 29
    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    const-string v4, "REGISTERED"

    .line 30
    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    new-instance p2, Lcom/startapp/j8$m;

    iget-object v4, p0, Lcom/startapp/j8$k;->c:Lcom/startapp/j8;

    const/4 v5, 0x0

    invoke-direct {p2, v4, v5}, Lcom/startapp/j8$m;-><init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V

    .line 33
    iput v1, p2, Lcom/startapp/j8$m;->a:I

    if-eqz p1, :cond_5

    const-string v1, "\\["

    .line 35
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\]"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ", "

    const-string v2, ","

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/startapp/j8$m;->b:Ljava/lang/String;

    .line 41
    :cond_5
    iget-object p1, p0, Lcom/startapp/j8$k;->c:Lcom/startapp/j8;

    invoke-static {p1}, Lcom/startapp/j8;->v(Lcom/startapp/j8;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/p2;->f(Landroid/content/Context;)Lcom/startapp/y6;

    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/x9;

    .line 43
    iget v2, v1, Lcom/startapp/x9;->SimSlotIndex:I

    if-ne v2, v0, :cond_6

    .line 44
    iget v3, v1, Lcom/startapp/x9;->SubscriptionId:I

    .line 49
    :cond_7
    iget-object p1, p0, Lcom/startapp/j8$k;->c:Lcom/startapp/j8;

    invoke-static {p1}, Lcom/startapp/j8;->b(Lcom/startapp/j8;)Lcom/startapp/j8$j;

    move-result-object p1

    invoke-virtual {p1, v3, p2}, Lcom/startapp/j8$j;->a(ILcom/startapp/j8$m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 52
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    return-void
.end method
