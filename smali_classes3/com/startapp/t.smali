.class public Lcom/startapp/t;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field public static final d:Lcom/startapp/t;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startapp/t;

    const-string v1, "0"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/t;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/startapp/t;->d:Lcom/startapp/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/t;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/startapp/t;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/startapp/t;->c:Z

    return-void
.end method
