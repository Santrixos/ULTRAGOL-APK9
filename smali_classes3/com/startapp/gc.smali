.class public Lcom/startapp/gc;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/dc;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/gc;->d:D

    return-wide v0
.end method
