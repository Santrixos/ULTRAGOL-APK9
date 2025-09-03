.class public Lcom/startapp/jb$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/jb;


# direct methods
.method public constructor <init>(Lcom/startapp/jb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/jb$a;->a:Lcom/startapp/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/jb$a;->a:Lcom/startapp/jb;

    invoke-virtual {v0}, Lcom/startapp/jb;->b()V

    return-void
.end method
