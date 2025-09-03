.class public Lcom/startapp/k2;
.super Ljava/lang/Object;
.source "Sta"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JI)Lcom/startapp/j2;
    .locals 14

    move/from16 v8, p2

    int-to-long v0, v8

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    .line 6
    div-long v4, v0, v2

    .line 7
    rem-long/2addr v0, v2

    long-to-int v7, v0

    const-wide/16 v0, 0x3c

    .line 8
    div-long v2, v4, v0

    .line 9
    rem-long/2addr v4, v0

    long-to-int v6, v4

    .line 10
    div-long v4, v2, v0

    .line 11
    rem-long/2addr v2, v0

    long-to-int v9, v2

    const-wide/16 v0, 0x18

    .line 12
    div-long v2, v4, v0

    long-to-int v3, v2

    .line 13
    rem-long/2addr v4, v0

    long-to-int v4, v4

    const/16 v0, 0x16d

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v5, 0x7b2

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    add-int/lit8 v12, v3, 0x1

    if-ge v0, v12, :cond_3

    add-int/lit8 v5, v5, 0x1

    add-int/lit16 v10, v0, 0x16d

    .line 31
    rem-int/lit8 v11, v5, 0x4

    if-nez v11, :cond_0

    rem-int/lit8 v11, v5, 0x64

    if-nez v11, :cond_1

    :cond_0
    rem-int/lit16 v11, v5, 0x190

    if-nez v11, :cond_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    :goto_1
    move v13, v10

    move v10, v0

    move v0, v13

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    sub-int/2addr v12, v10

    const/16 v0, 0x1f

    const/4 v0, 0x0

    const/16 v1, 0x1f

    :goto_2
    if-ge v1, v12, :cond_8

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    if-eqz v11, :cond_4

    if-ne v2, v0, :cond_4

    add-int/lit8 v0, v1, 0x1d

    goto :goto_3

    :cond_4
    if-ne v2, v0, :cond_5

    add-int/lit8 v0, v1, 0x1c

    :goto_3
    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    if-eq v2, v0, :cond_7

    const/4 v0, 0x6

    if-eq v2, v0, :cond_7

    const/16 v0, 0x9

    if-eq v2, v0, :cond_7

    const/16 v0, 0xb

    if-ne v2, v0, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v1, 0x1f

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v0, v1, 0x1e

    goto :goto_3

    :cond_8
    sub-int v3, v12, v0

    .line 62
    new-instance v10, Lcom/startapp/j2;

    move-object v0, v10

    move v1, v5

    move v5, v9

    move/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/startapp/j2;-><init>(IIIIIIII)V

    return-object v10
.end method

.method public static a(Lcom/startapp/networkTest/data/TimeInfo;J)Lcom/startapp/networkTest/data/TimeInfo;
    .locals 3

    .line 176
    new-instance v0, Lcom/startapp/networkTest/data/TimeInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/TimeInfo;-><init>()V

    .line 177
    iget-wide v1, p0, Lcom/startapp/networkTest/data/TimeInfo;->DeviceDriftMillis:J

    iput-wide v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->DeviceDriftMillis:J

    .line 178
    iget-boolean v1, p0, Lcom/startapp/networkTest/data/TimeInfo;->IsSynced:Z

    iput-boolean v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->IsSynced:Z

    .line 179
    iget-wide v1, p0, Lcom/startapp/networkTest/data/TimeInfo;->MillisSinceLastSync:J

    iput-wide v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->MillisSinceLastSync:J

    .line 180
    iget-object v1, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimeSource:Lcom/startapp/networkTest/enums/TimeSources;

    iput-object v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->TimeSource:Lcom/startapp/networkTest/enums/TimeSources;

    .line 181
    iget-wide v1, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampMillis:J

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Lcom/startapp/k2;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampDateTime:Ljava/lang/String;

    .line 182
    iget-wide v1, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampMillis:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampMillis:J

    .line 183
    iget-wide v1, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampOffset:D

    iput-wide v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampOffset:D

    .line 184
    iget-wide v1, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampMillis:J

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Lcom/startapp/k2;->b(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampTableau:Ljava/lang/String;

    return-object v0
.end method

.method public static a(III)Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p2, v2, :cond_1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(IIIIII)Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p2, v2, :cond_1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p3, v2, :cond_2

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p4, v2, :cond_3

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_3
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p5, v2, :cond_4

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_4
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(IIIIIII)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-static/range {p0 .. p5}, Lcom/startapp/k2;->a(IIIIII)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 118
    invoke-static {p1, p6}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    if-ge p6, p2, :cond_0

    const-string p1, "00"

    .line 120
    invoke-static {p1, p6}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    if-ge p6, p2, :cond_1

    const-string p1, "0"

    .line 122
    invoke-static {p1, p6}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(IIIIIIIZI)Ljava/lang/String;
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    const-string v7, ""

    .line 125
    invoke-static {v7, v1}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 126
    invoke-static {v7, v0}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 127
    invoke-static {v7, v2}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-static {v7, v3}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 129
    invoke-static {v7, v4}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 130
    invoke-static {v7, v5}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    const/16 v15, 0xa

    if-ge v1, v15, :cond_0

    .line 133
    invoke-static {v14, v1}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-ge v0, v15, :cond_1

    .line 136
    invoke-static {v14, v0}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    if-ge v2, v15, :cond_2

    .line 139
    invoke-static {v14, v2}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    :cond_2
    if-ge v3, v15, :cond_3

    .line 142
    invoke-static {v14, v3}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    :cond_3
    if-ge v4, v15, :cond_4

    .line 145
    invoke-static {v14, v4}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    :cond_4
    if-ge v5, v15, :cond_5

    const-string v0, "00"

    .line 148
    invoke-static {v0, v5}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_5
    const/16 v0, 0x64

    if-ge v5, v0, :cond_6

    .line 150
    invoke-static {v14, v5}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 153
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p7, :cond_a

    .line 158
    div-int/lit16 v3, v6, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    if-gez v6, :cond_7

    mul-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    const-string v1, "+"

    .line 163
    :goto_1
    div-int/lit8 v4, v3, 0x3c

    .line 164
    rem-int/lit8 v3, v3, 0x3c

    .line 166
    invoke-static {v7, v4}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v7, v3}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-ge v4, v15, :cond_8

    .line 169
    invoke-static {v14, v4}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :cond_8
    if-ge v3, v15, :cond_9

    .line 172
    invoke-static {v14, v3}, Lcom/startapp/o2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 175
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/startapp/k2;->a(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(JZ)Ljava/lang/String;
    .locals 9

    .line 3
    invoke-static {p0, p1}, Lcom/startapp/k2;->c(J)Lcom/startapp/j2;

    move-result-object p0

    .line 5
    iget v0, p0, Lcom/startapp/j2;->a:I

    iget v1, p0, Lcom/startapp/j2;->b:I

    iget v2, p0, Lcom/startapp/j2;->c:I

    iget v3, p0, Lcom/startapp/j2;->d:I

    iget v4, p0, Lcom/startapp/j2;->e:I

    iget v5, p0, Lcom/startapp/j2;->f:I

    iget v6, p0, Lcom/startapp/j2;->g:I

    iget v8, p0, Lcom/startapp/j2;->h:I

    move v7, p2

    invoke-static/range {v0 .. v8}, Lcom/startapp/k2;->a(IIIIIIIZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {}, Lcom/startapp/ua;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/startapp/k2;->b(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(III)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    const/16 v2, 0xa

    if-ge p0, v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v2, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p2, v2, :cond_2

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/startapp/k2;->a(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(J)Lcom/startapp/j2;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/startapp/k2;->a(JI)Lcom/startapp/j2;

    move-result-object p0

    return-object p0
.end method
