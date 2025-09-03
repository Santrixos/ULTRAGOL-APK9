.class public Lcom/startapp/ce;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Lcom/startapp/ne;

.field public final b:Lcom/startapp/ie;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/startapp/ne;

    invoke-direct {v0}, Lcom/startapp/ne;-><init>()V

    iput-object v0, p0, Lcom/startapp/ce;->a:Lcom/startapp/ne;

    new-instance v1, Lcom/startapp/ie;

    invoke-direct {v1, v0}, Lcom/startapp/ie;-><init>(Lcom/startapp/ud;)V

    iput-object v1, p0, Lcom/startapp/ce;->b:Lcom/startapp/ie;

    return-void
.end method
