.class public Lcom/startapp/z3;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field public static final c:Lcom/startapp/z3;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startapp/z3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/startapp/z3;-><init>(ZZLjava/util/Set;)V

    sput-object v0, Lcom/startapp/z3;->c:Lcom/startapp/z3;

    return-void
.end method

.method public constructor <init>(ZZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/startapp/z3;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/startapp/z3;->b:Z

    return-void
.end method
