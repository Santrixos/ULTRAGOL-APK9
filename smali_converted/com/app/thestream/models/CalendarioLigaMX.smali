.class public Lcom/app/thestream/models/CalendarioLigaMX;
.super Ljava/lang/Object;
.source "CalendarioLigaMX.java"


# instance fields
.field private jornadas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Jornada;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Jornada;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "jornadas":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Jornada;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/app/thestream/models/CalendarioLigaMX;->jornadas:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public getJornadas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Jornada;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/app/thestream/models/CalendarioLigaMX;->jornadas:Ljava/util/List;

    return-object v0
.end method

.method public setJornadas(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Jornada;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "jornadas":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Jornada;>;"
    iput-object p1, p0, Lcom/app/thestream/models/CalendarioLigaMX;->jornadas:Ljava/util/List;

    .line 20
    return-void
.end method