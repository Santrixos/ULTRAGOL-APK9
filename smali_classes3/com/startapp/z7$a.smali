.class public Lcom/startapp/z7$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/z7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/z7;


# direct methods
.method public constructor <init>(Lcom/startapp/z7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/z7$a;->a:Lcom/startapp/z7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/z7$a;->a:Lcom/startapp/z7;

    invoke-virtual {v0}, Lcom/startapp/z7;->g()V

    return-void
.end method
