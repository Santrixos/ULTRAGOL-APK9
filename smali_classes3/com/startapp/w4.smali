.class public Lcom/startapp/w4;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field public static final b:Lcom/startapp/w4;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startapp/w4;

    invoke-direct {v0}, Lcom/startapp/w4;-><init>()V

    sput-object v0, Lcom/startapp/w4;->b:Lcom/startapp/w4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/startapp/w4;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ";"

    .line 2
    invoke-static {p1, v0}, Lcom/startapp/wb;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/w4;->a:Ljava/lang/String;

    return-void
.end method
