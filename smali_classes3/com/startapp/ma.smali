.class public Lcom/startapp/ma;
.super Ljava/lang/Object;
.source "Sta"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/startapp/x1;->a:Ljava/nio/charset/Charset;

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method
