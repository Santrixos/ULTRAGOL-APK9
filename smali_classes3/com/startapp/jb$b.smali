.class public Lcom/startapp/jb$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/jb;->a(Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/startapp/jb;


# direct methods
.method public constructor <init>(Lcom/startapp/jb;Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/jb$b;->d:Lcom/startapp/jb;

    iput-object p2, p0, Lcom/startapp/jb$b;->a:Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

    iput-object p3, p0, Lcom/startapp/jb$b;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/startapp/jb$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/jb$b;->d:Lcom/startapp/jb;

    iget-object v1, p0, Lcom/startapp/jb$b;->a:Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;

    iget-object v2, p0, Lcom/startapp/jb$b;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/startapp/jb$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapp/jb;->b(Lcom/startapp/sdk/triggeredlinks/TriggeredLinksMetadata;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/startapp/jb$b;->d:Lcom/startapp/jb;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/startapp/jb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
