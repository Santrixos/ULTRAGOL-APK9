.class public Lcom/startapp/j8$h;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:Landroid/telephony/CellLocation;

.field public b:J

.field public final synthetic c:Lcom/startapp/j8;


# direct methods
.method private constructor <init>(Lcom/startapp/j8;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$h;->c:Lcom/startapp/j8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/startapp/j8$h;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/startapp/j8$h;-><init>(Lcom/startapp/j8;)V

    return-void
.end method
