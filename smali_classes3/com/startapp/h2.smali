.class public Lcom/startapp/h2;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public DNSSuccess:I

.field public TCPSuccess:I

.field public address:Ljava/lang/String;

.field public successfulTests:I

.field public totalTests:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startapp/r5;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
