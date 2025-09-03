.class public Lcom/startapp/o9$b;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/o9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Lcom/startapp/o9;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/startapp/o9$b;->a:I

    .line 3
    iput p3, p0, Lcom/startapp/o9$b;->b:I

    return-void
.end method
