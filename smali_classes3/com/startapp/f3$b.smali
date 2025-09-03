.class public Lcom/startapp/f3$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/f3;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/f3;


# direct methods
.method public constructor <init>(Lcom/startapp/f3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/f3$b;->a:Lcom/startapp/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/f3$b;->a:Lcom/startapp/f3;

    .line 2
    iget-object v0, v0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
