.class public Lcom/startapp/lb;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Lcom/startapp/jb;


# direct methods
.method public constructor <init>(Lcom/startapp/jb;Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    iput-object p2, p0, Lcom/startapp/lb;->a:Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

    iput-object p3, p0, Lcom/startapp/lb;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/startapp/lb;->c:Ljava/lang/String;

    iput p5, p0, Lcom/startapp/lb;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    iget-object v3, p0, Lcom/startapp/lb;->a:Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

    const-string v4, "Periodic"

    iget-object v5, p0, Lcom/startapp/lb;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/startapp/lb;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/startapp/jb;->a(Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v2, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    iget-object v3, p0, Lcom/startapp/lb;->b:Ljava/lang/String;

    iget v4, p0, Lcom/startapp/lb;->d:I

    invoke-virtual {v2, v3, v4}, Lcom/startapp/jb;->a(Ljava/lang/String;I)V

    .line 9
    iget-object v2, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    invoke-virtual {v2, v0, v1}, Lcom/startapp/jb;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/startapp/jb;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-static {v2}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    iget-object v3, p0, Lcom/startapp/lb;->b:Ljava/lang/String;

    iget v4, p0, Lcom/startapp/lb;->d:I

    invoke-virtual {v2, v3, v4}, Lcom/startapp/jb;->a(Ljava/lang/String;I)V

    .line 16
    iget-object v2, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    invoke-virtual {v2, v0, v1}, Lcom/startapp/jb;->a(J)V

    :goto_0
    return-void

    :catchall_1
    move-exception v2

    .line 17
    iget-object v3, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    iget-object v4, p0, Lcom/startapp/lb;->b:Ljava/lang/String;

    iget v5, p0, Lcom/startapp/lb;->d:I

    invoke-virtual {v3, v4, v5}, Lcom/startapp/jb;->a(Ljava/lang/String;I)V

    .line 19
    iget-object v3, p0, Lcom/startapp/lb;->e:Lcom/startapp/jb;

    invoke-virtual {v3, v0, v1}, Lcom/startapp/jb;->a(J)V

    .line 20
    throw v2
.end method
