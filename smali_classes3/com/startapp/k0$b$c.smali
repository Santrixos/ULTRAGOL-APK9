.class public Lcom/startapp/k0$b$c;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/k0$b;->a([Ljava/lang/String;Lcom/startapp/networkTest/enums/LtrCriteriaTypes;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/startapp/e6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/k0$b;


# direct methods
.method public constructor <init>(Lcom/startapp/k0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/k0$b$c;->a:Lcom/startapp/k0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/e6;Lcom/startapp/e6;)I
    .locals 0

    .line 1
    iget p1, p1, Lcom/startapp/e6;->totalTests:I

    iget p2, p2, Lcom/startapp/e6;->totalTests:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/startapp/e6;

    check-cast p2, Lcom/startapp/e6;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/k0$b$c;->a(Lcom/startapp/e6;Lcom/startapp/e6;)I

    move-result p1

    return p1
.end method
