.class public Lcom/startapp/xe;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/ae$a;
.implements Lcom/startapp/le;


# static fields
.field public static f:Lcom/startapp/xe;


# instance fields
.field public a:F

.field public final b:Lcom/startapp/ue;

.field public final c:Lcom/startapp/ge;

.field public d:Lcom/startapp/pe;

.field public e:Lcom/startapp/pd;


# direct methods
.method public constructor <init>(Lcom/startapp/ue;Lcom/startapp/ge;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/xe;->a:F

    iput-object p1, p0, Lcom/startapp/xe;->b:Lcom/startapp/ue;

    iput-object p2, p0, Lcom/startapp/xe;->c:Lcom/startapp/ge;

    return-void
.end method

.method public static a()Lcom/startapp/xe;
    .locals 3

    sget-object v0, Lcom/startapp/xe;->f:Lcom/startapp/xe;

    if-nez v0, :cond_0

    new-instance v0, Lcom/startapp/ge;

    invoke-direct {v0}, Lcom/startapp/ge;-><init>()V

    new-instance v1, Lcom/startapp/ue;

    invoke-direct {v1}, Lcom/startapp/ue;-><init>()V

    new-instance v2, Lcom/startapp/xe;

    invoke-direct {v2, v1, v0}, Lcom/startapp/xe;-><init>(Lcom/startapp/ue;Lcom/startapp/ge;)V

    sput-object v2, Lcom/startapp/xe;->f:Lcom/startapp/xe;

    :cond_0
    sget-object v0, Lcom/startapp/xe;->f:Lcom/startapp/xe;

    return-object v0
.end method
