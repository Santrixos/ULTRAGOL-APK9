.class public Lcom/app/thestream/models/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public category_image:Ljava/lang/String;

.field public category_name:Ljava/lang/String;

.field public cid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/app/thestream/models/Category;->cid:I

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/app/thestream/models/Category;->category_name:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/app/thestream/models/Category;->category_image:Ljava/lang/String;

    return-void
.end method
