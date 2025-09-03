.class public Lcom/startapp/y8;
.super Lcom/startapp/w8;
.source "Sta"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/startapp/wb;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/y8;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x65
        -0xf
        0x2
        0x8
        -0xa
        0x6
        -0x2
        -0x17
        0x13
        0xc
        -0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startapp/w8;-><init>()V

    return-void
.end method
