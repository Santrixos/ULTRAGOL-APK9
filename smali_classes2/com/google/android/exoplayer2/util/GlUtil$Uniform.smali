.class final Lcom/google/android/exoplayer2/util/GlUtil$Uniform;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Uniform"
.end annotation


# instance fields
.field private final location:I

.field public final name:Ljava/lang/String;

.field private texId:I

.field private final type:I

.field private unit:I

.field private final value:[F


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->name:Ljava/lang/String;

    .line 627
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    .line 628
    iput p3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 629
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    return-void
.end method

.method public static create(II)Lcom/google/android/exoplayer2/util/GlUtil$Uniform;
    .locals 15

    move v11, p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8b87

    const/4 v12, 0x0

    .line 591
    invoke-static {p0, v2, v1, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-array v13, v0, [I

    aget v2, v1, v12

    .line 595
    new-array v14, v2, [B

    new-array v3, v0, [I

    new-array v5, v0, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v0, p0

    move/from16 v1, p1

    move-object v7, v13

    move-object v9, v14

    .line 597
    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 609
    new-instance v0, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/exoplayer2/util/GlUtil;->access$400([B)I

    move-result v1

    invoke-direct {v0, v14, v12, v1}, Ljava/lang/String;-><init>([BII)V

    .line 610
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->access$300(ILjava/lang/String;)I

    move-result v1

    .line 612
    new-instance v2, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;

    aget v3, v13, v12

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public bind()V
    .locals 4

    .line 660
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1406

    if-ne v0, v3, :cond_0

    .line 661
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 662
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    :cond_0
    const v3, 0x8b5b    # 4.9991E-41f

    if-ne v0, v3, :cond_1

    .line 667
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 669
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    :cond_1
    const v3, 0x8b5c    # 4.9993E-41f

    if-ne v0, v3, :cond_2

    .line 674
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 676
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    .line 680
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    if-eqz v0, :cond_6

    const v0, 0x84c0

    .line 683
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 684
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const v1, 0x8d66

    const/16 v2, 0xde1

    if-eq v0, v1, :cond_5

    const v1, 0x8be7

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x8b5e    # 4.9996E-41f

    if-ne v0, v1, :cond_4

    .line 687
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    .line 689
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected uniform type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    const v0, 0x8d65

    .line 685
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 691
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v0, 0x2800

    const/16 v1, 0x2601

    .line 692
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 693
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v1, 0x812f

    .line 694
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 696
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 698
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    .line 681
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No call to setSamplerTexId() before bind."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloat(F)V
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setFloats([F)V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setSamplerTexId(II)V
    .locals 0

    .line 639
    iput p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    .line 640
    iput p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    return-void
.end method
