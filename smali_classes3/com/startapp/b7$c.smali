.class public Lcom/startapp/b7$c;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/b7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/startapp/networkTest/enums/NetworkTypes;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public final synthetic h:Lcom/startapp/b7;


# direct methods
.method private constructor <init>(Lcom/startapp/b7;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/startapp/b7$c;->h:Lcom/startapp/b7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/startapp/b7$c;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/startapp/b7$c;->b:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/startapp/b7$c;->c:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    iput-object v0, p0, Lcom/startapp/b7$c;->d:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 7
    iput-object p1, p0, Lcom/startapp/b7$c;->e:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/startapp/b7$c;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startapp/b7;Lcom/startapp/b7$a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/startapp/b7$c;-><init>(Lcom/startapp/b7;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/networkTest/enums/NetworkTypes;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/b7$c;->b:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/startapp/b7$c;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/startapp/b7$c;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/startapp/b7$c;->d:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 5
    iput-object p5, p0, Lcom/startapp/b7$c;->e:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/startapp/b7$c;->f:Ljava/lang/String;

    .line 7
    iput p7, p0, Lcom/startapp/b7$c;->g:I

    return-void
.end method
