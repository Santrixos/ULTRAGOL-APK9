.class public Lcom/startapp/j8$g;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public final synthetic l:Lcom/startapp/j8;


# direct methods
.method private constructor <init>(Lcom/startapp/j8;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$g;->l:Lcom/startapp/j8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/startapp/j8$g;->a:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/startapp/j8$g;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/startapp/j8$g;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/startapp/j8$g;->d:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/startapp/j8$g;->e:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/startapp/j8$g;->f:Ljava/lang/String;

    .line 9
    iput p1, p0, Lcom/startapp/j8$g;->g:I

    const-wide/16 v1, -0x1

    .line 10
    iput-wide v1, p0, Lcom/startapp/j8$g;->h:J

    .line 11
    iput-wide v1, p0, Lcom/startapp/j8$g;->i:J

    .line 12
    iput-object v0, p0, Lcom/startapp/j8$g;->j:Ljava/lang/String;

    .line 13
    sget-object p1, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->a:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    iput-object p1, p0, Lcom/startapp/j8$g;->k:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startapp/j8;Lcom/startapp/j8$a;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/startapp/j8$g;-><init>(Lcom/startapp/j8;)V

    return-void
.end method
