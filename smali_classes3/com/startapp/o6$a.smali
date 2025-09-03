.class public Lcom/startapp/o6$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/v0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/o6;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/o6;


# direct methods
.method public constructor <init>(Lcom/startapp/o6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/o6$a;->a:Lcom/startapp/o6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEvent(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/o6$a;->a:Lcom/startapp/o6;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/startapp/o6;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
