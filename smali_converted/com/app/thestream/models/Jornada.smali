.class public Lcom/app/thestream/models/Jornada;
.super Ljava/lang/Object;
.source "Jornada.java"


# instance fields
.field private fechas:Ljava/lang/String;

.field private numero:I

.field private partidos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Partido;",
            ">;"
        }
    .end annotation
.end field

.field private tipo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "numero"    # I
    .param p2, "fechas"    # Ljava/lang/String;
    .param p3, "tipo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Partido;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p4, "partidos":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Partido;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/app/thestream/models/Jornada;->numero:I

    .line 15
    iput-object p2, p0, Lcom/app/thestream/models/Jornada;->fechas:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/app/thestream/models/Jornada;->tipo:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/app/thestream/models/Jornada;->partidos:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getFechas()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/app/thestream/models/Jornada;->fechas:Ljava/lang/String;

    return-object v0
.end method

.method public getNumero()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/app/thestream/models/Jornada;->numero:I

    return v0
.end method

.method public getPartidos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Partido;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/app/thestream/models/Jornada;->partidos:Ljava/util/List;

    return-object v0
.end method

.method public getTipo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/app/thestream/models/Jornada;->tipo:Ljava/lang/String;

    return-object v0
.end method

.method public setFechas(Ljava/lang/String;)V
    .registers 2
    .param p1, "fechas"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/app/thestream/models/Jornada;->fechas:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setNumero(I)V
    .registers 2
    .param p1, "numero"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/app/thestream/models/Jornada;->numero:I

    .line 26
    return-void
.end method

.method public setPartidos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Partido;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "partidos":Ljava/util/List;, "Ljava/util/List<Lcom/app/thestream/models/Partido;>;"
    iput-object p1, p0, Lcom/app/thestream/models/Jornada;->partidos:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setTipo(Ljava/lang/String;)V
    .registers 2
    .param p1, "tipo"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/app/thestream/models/Jornada;->tipo:Ljava/lang/String;

    .line 42
    return-void
.end method