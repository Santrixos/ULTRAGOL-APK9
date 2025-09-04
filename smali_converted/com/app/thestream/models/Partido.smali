.class public Lcom/app/thestream/models/Partido;
.super Ljava/lang/Object;
.source "Partido.java"


# instance fields
.field private dia:Ljava/lang/String;

.field private estadio:Ljava/lang/String;

.field private hora:Ljava/lang/String;

.field private local:Ljava/lang/String;

.field private visitante:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "local"    # Ljava/lang/String;
    .param p2, "visitante"    # Ljava/lang/String;
    .param p3, "dia"    # Ljava/lang/String;
    .param p4, "hora"    # Ljava/lang/String;
    .param p5, "estadio"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/app/thestream/models/Partido;->local:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/app/thestream/models/Partido;->visitante:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/app/thestream/models/Partido;->dia:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/app/thestream/models/Partido;->hora:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/app/thestream/models/Partido;->estadio:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getDia()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/app/thestream/models/Partido;->dia:Ljava/lang/String;

    return-object v0
.end method

.method public getEstadio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/app/thestream/models/Partido;->estadio:Ljava/lang/String;

    return-object v0
.end method

.method public getHora()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/app/thestream/models/Partido;->hora:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/app/thestream/models/Partido;->local:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitante()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/app/thestream/models/Partido;->visitante:Ljava/lang/String;

    return-object v0
.end method

.method public setDia(Ljava/lang/String;)V
    .registers 2
    .param p1, "dia"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/app/thestream/models/Partido;->dia:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setEstadio(Ljava/lang/String;)V
    .registers 2
    .param p1, "estadio"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/app/thestream/models/Partido;->estadio:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setHora(Ljava/lang/String;)V
    .registers 2
    .param p1, "hora"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/app/thestream/models/Partido;->hora:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setLocal(Ljava/lang/String;)V
    .registers 2
    .param p1, "local"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/app/thestream/models/Partido;->local:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setVisitante(Ljava/lang/String;)V
    .registers 2
    .param p1, "visitante"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/app/thestream/models/Partido;->visitante:Ljava/lang/String;

    .line 34
    return-void
.end method