.class public Lcom/startapp/j8$l;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:J

.field public final synthetic e:Lcom/startapp/j8;


# direct methods
.method private constructor <init>(Lcom/startapp/j8;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$l;->e:Lcom/startapp/j8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/startapp/j8$l;->a:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/startapp/j8$l;->b:I

    .line 4
    iput p1, p0, Lcom/startapp/j8$l;->c:I

    .line 5
    iput-wide v0, p0, Lcom/startapp/j8$l;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/startapp/j8$l;-><init>(Lcom/startapp/j8;)V

    return-void
.end method
