.class public Lcom/startapp/j8$n;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public a:Lcom/startapp/networkTest/enums/ServiceStates;

.field public b:J

.field public c:Lcom/startapp/networkTest/enums/DuplexMode;

.field public d:Lcom/startapp/networkTest/enums/ThreeStateShort;

.field public e:I

.field public f:Lcom/startapp/networkTest/enums/ThreeStateShort;

.field public final synthetic g:Lcom/startapp/j8;


# direct methods
.method private constructor <init>(Lcom/startapp/j8;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$n;->g:Lcom/startapp/j8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object p1, Lcom/startapp/networkTest/enums/ServiceStates;->a:Lcom/startapp/networkTest/enums/ServiceStates;

    iput-object p1, p0, Lcom/startapp/j8$n;->a:Lcom/startapp/networkTest/enums/ServiceStates;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/startapp/j8$n;->b:J

    .line 5
    sget-object p1, Lcom/startapp/networkTest/enums/DuplexMode;->a:Lcom/startapp/networkTest/enums/DuplexMode;

    iput-object p1, p0, Lcom/startapp/j8$n;->c:Lcom/startapp/networkTest/enums/DuplexMode;

    .line 6
    sget-object p1, Lcom/startapp/networkTest/enums/ThreeStateShort;->c:Lcom/startapp/networkTest/enums/ThreeStateShort;

    iput-object p1, p0, Lcom/startapp/j8$n;->d:Lcom/startapp/networkTest/enums/ThreeStateShort;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/startapp/j8$n;->e:I

    .line 8
    iput-object p1, p0, Lcom/startapp/j8$n;->f:Lcom/startapp/networkTest/enums/ThreeStateShort;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/startapp/j8$n;-><init>(Lcom/startapp/j8;)V

    return-void
.end method
