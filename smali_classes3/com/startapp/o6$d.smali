.class public Lcom/startapp/o6$d;
.super Lcom/startapp/v0;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/o6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/startapp/o6;


# direct methods
.method public constructor <init>(Lcom/startapp/o6;Lcom/startapp/v0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    .line 2
    invoke-direct {p0, p2}, Lcom/startapp/v0;-><init>(Lcom/startapp/v0$a;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    sget-object v1, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->e:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    .line 2
    iput-object v1, v0, Lcom/startapp/o6;->K:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    .line 3
    iget-object v0, v0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/startapp/n6;->a(Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;Landroid/webkit/WebView;)V

    .line 4
    iget-object v0, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    iget-object v0, v0, Lcom/startapp/g5;->I:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public fireViewableChangeEvent()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    iget-object v1, v0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    .line 2
    iget-boolean v0, v0, Lcom/startapp/o6;->R:Z

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "mraid.fireViewableChangeEvent"

    .line 4
    invoke-static {v1, v2, v0, v3}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isFeatureSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    .line 2
    iget-object v0, v0, Lcom/startapp/o6;->M:Lcom/startapp/r6;

    .line 3
    iget-object v0, v0, Lcom/startapp/r6;->b:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setOrientationProperties(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allowOrientationChange"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "forceOrientation"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    .line 4
    iget-object v1, v1, Lcom/startapp/o6;->N:Lcom/startapp/s6;

    .line 5
    iget-boolean v2, v1, Lcom/startapp/s6;->a:Z

    if-ne v2, v0, :cond_0

    .line 6
    iget v1, v1, Lcom/startapp/s6;->b:I

    invoke-static {p1}, Lcom/startapp/s6;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    .line 9
    iget-object v1, v1, Lcom/startapp/o6;->N:Lcom/startapp/s6;

    .line 10
    iput-boolean v0, v1, Lcom/startapp/s6;->a:Z

    .line 11
    invoke-static {p1}, Lcom/startapp/s6;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/startapp/s6;->b:I

    .line 12
    iget-object p1, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    .line 13
    iget-object v0, p1, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 14
    iget-object p1, p1, Lcom/startapp/o6;->N:Lcom/startapp/s6;

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/startapp/v0;->applyOrientationProperties(Landroid/app/Activity;Lcom/startapp/s6;)V

    :cond_1
    return-void
.end method

.method public useCustomClose(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    .line 4
    iget-boolean v1, v0, Lcom/startapp/o6;->Q:Z

    if-eq v1, p1, :cond_1

    .line 5
    invoke-static {v0, p1}, Lcom/startapp/o6;->a(Lcom/startapp/o6;Z)Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/startapp/o6$d;->this$0:Lcom/startapp/o6;

    invoke-virtual {p1}, Lcom/startapp/g5;->w()V

    :cond_1
    :goto_0
    return-void
.end method
