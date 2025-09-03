.class public Lcom/startapp/v3;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/dc;


# instance fields
.field public final a:Lcom/startapp/w3;

.field public final b:Lcom/startapp/w3;

.field public final c:Lcom/startapp/w3;

.field public d:D


# direct methods
.method public constructor <init>(Lcom/startapp/w3;Lcom/startapp/w3;Lcom/startapp/w3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/v3;->a:Lcom/startapp/w3;

    .line 3
    iput-object p2, p0, Lcom/startapp/v3;->b:Lcom/startapp/w3;

    .line 4
    iput-object p3, p0, Lcom/startapp/v3;->c:Lcom/startapp/w3;

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/startapp/v3;->d:D

    return-wide v0
.end method

.method public a(DDD)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/v3;->a:Lcom/startapp/w3;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/w3;->a(D)V

    .line 2
    iget-object p1, p0, Lcom/startapp/v3;->b:Lcom/startapp/w3;

    invoke-virtual {p1, p3, p4}, Lcom/startapp/w3;->a(D)V

    .line 3
    iget-object p1, p0, Lcom/startapp/v3;->c:Lcom/startapp/w3;

    invoke-virtual {p1, p5, p6}, Lcom/startapp/w3;->a(D)V

    .line 5
    iget-object p1, p0, Lcom/startapp/v3;->a:Lcom/startapp/w3;

    .line 6
    iget-wide p1, p1, Lcom/startapp/w3;->c:D

    mul-double p1, p1, p1

    .line 7
    iget-object p3, p0, Lcom/startapp/v3;->b:Lcom/startapp/w3;

    .line 8
    iget-wide p3, p3, Lcom/startapp/w3;->c:D

    mul-double p3, p3, p3

    add-double/2addr p3, p1

    .line 9
    iget-object p1, p0, Lcom/startapp/v3;->c:Lcom/startapp/w3;

    .line 10
    iget-wide p1, p1, Lcom/startapp/w3;->c:D

    mul-double p1, p1, p1

    add-double/2addr p1, p3

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/startapp/v3;->d:D

    return-void
.end method

.method public b()Lcom/startapp/w3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/v3;->a:Lcom/startapp/w3;

    return-object v0
.end method

.method public c()Lcom/startapp/w3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/v3;->b:Lcom/startapp/w3;

    return-object v0
.end method

.method public d()Lcom/startapp/w3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/v3;->c:Lcom/startapp/w3;

    return-object v0
.end method
