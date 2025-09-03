.class public Lcom/applovin/exoplayer2/j/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/exoplayer2/j/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:Lcom/applovin/exoplayer2/l/d;


# direct methods
.method public constructor <init>()V
    .locals 7

    sget-object v6, Lcom/applovin/exoplayer2/l/d;->a:Lcom/applovin/exoplayer2/l/d;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/j/a$b;-><init>(IIIFFLcom/applovin/exoplayer2/l/d;)V

    return-void
.end method

.method public constructor <init>(IIIFFLcom/applovin/exoplayer2/l/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/j/a$b;->a:I

    iput p2, p0, Lcom/applovin/exoplayer2/j/a$b;->b:I

    iput p3, p0, Lcom/applovin/exoplayer2/j/a$b;->c:I

    iput p4, p0, Lcom/applovin/exoplayer2/j/a$b;->d:F

    iput p5, p0, Lcom/applovin/exoplayer2/j/a$b;->e:F

    iput-object p6, p0, Lcom/applovin/exoplayer2/j/a$b;->f:Lcom/applovin/exoplayer2/l/d;

    return-void
.end method


# virtual methods
.method protected a(Lcom/applovin/exoplayer2/h/ac;[IILcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/common/a/s;)Lcom/applovin/exoplayer2/j/a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/h/ac;",
            "[II",
            "Lcom/applovin/exoplayer2/k/d;",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/j/a$a;",
            ">;)",
            "Lcom/applovin/exoplayer2/j/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v16, Lcom/applovin/exoplayer2/j/a;

    iget v1, v0, Lcom/applovin/exoplayer2/j/a$b;->a:I

    int-to-long v6, v1

    iget v1, v0, Lcom/applovin/exoplayer2/j/a$b;->b:I

    int-to-long v8, v1

    iget v1, v0, Lcom/applovin/exoplayer2/j/a$b;->c:I

    int-to-long v10, v1

    iget v12, v0, Lcom/applovin/exoplayer2/j/a$b;->d:F

    iget v13, v0, Lcom/applovin/exoplayer2/j/a$b;->e:F

    iget-object v15, v0, Lcom/applovin/exoplayer2/j/a$b;->f:Lcom/applovin/exoplayer2/l/d;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    invoke-direct/range {v1 .. v15}, Lcom/applovin/exoplayer2/j/a;-><init>(Lcom/applovin/exoplayer2/h/ac;[IILcom/applovin/exoplayer2/k/d;JJJFFLjava/util/List;Lcom/applovin/exoplayer2/l/d;)V

    return-object v16
.end method

.method public final a([Lcom/applovin/exoplayer2/j/d$a;Lcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)[Lcom/applovin/exoplayer2/j/d;
    .locals 15

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/j/a;->a([Lcom/applovin/exoplayer2/j/d$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    array-length v2, v0

    new-array v2, v2, [Lcom/applovin/exoplayer2/j/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/applovin/exoplayer2/j/d$a;->b:[I

    array-length v6, v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, v5, Lcom/applovin/exoplayer2/j/d$a;->b:[I

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    new-instance v6, Lcom/applovin/exoplayer2/j/e;

    iget-object v7, v5, Lcom/applovin/exoplayer2/j/d$a;->a:Lcom/applovin/exoplayer2/h/ac;

    iget-object v8, v5, Lcom/applovin/exoplayer2/j/d$a;->b:[I

    aget v8, v8, v3

    iget v5, v5, Lcom/applovin/exoplayer2/j/d$a;->c:I

    invoke-direct {v6, v7, v8, v5}, Lcom/applovin/exoplayer2/j/e;-><init>(Lcom/applovin/exoplayer2/h/ac;II)V

    goto :goto_1

    :cond_1
    iget-object v10, v5, Lcom/applovin/exoplayer2/j/d$a;->a:Lcom/applovin/exoplayer2/h/ac;

    iget-object v11, v5, Lcom/applovin/exoplayer2/j/d$a;->b:[I

    iget v12, v5, Lcom/applovin/exoplayer2/j/d$a;->c:I

    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/common/a/s;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/applovin/exoplayer2/common/a/s;

    move-object v9, p0

    move-object/from16 v13, p2

    invoke-virtual/range {v9 .. v14}, Lcom/applovin/exoplayer2/j/a$b;->a(Lcom/applovin/exoplayer2/h/ac;[IILcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/common/a/s;)Lcom/applovin/exoplayer2/j/a;

    move-result-object v6

    :goto_1
    aput-object v6, v2, v4

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method
