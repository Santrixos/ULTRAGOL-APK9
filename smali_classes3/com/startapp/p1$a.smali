.class public Lcom/startapp/p1$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/p1;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/p1;


# direct methods
.method public constructor <init>(Lcom/startapp/p1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/p1$a;->a:Lcom/startapp/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/p1$a;->a:Lcom/startapp/p1;

    invoke-virtual {v0}, Lcom/startapp/p1;->c()V

    return-void
.end method
