.class public Lcom/startapp/oa;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "Sta"


# instance fields
.field public final synthetic a:Lcom/startapp/pa;


# direct methods
.method public constructor <init>(Lcom/startapp/pa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/oa;->a:Lcom/startapp/pa;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/startapp/oa;->a:Lcom/startapp/pa;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/startapp/pa;->b(Z)V

    return-void
.end method
