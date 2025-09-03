.class Lcom/app/thestream/utils/DelegatingPagerAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DelegatingPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/utils/DelegatingPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final mParent:Lcom/app/thestream/utils/DelegatingPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/app/thestream/utils/DelegatingPagerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mParent"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/app/thestream/utils/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/app/thestream/utils/DelegatingPagerAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/app/thestream/utils/DelegatingPagerAdapter;Lcom/app/thestream/utils/DelegatingPagerAdapter$1;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/app/thestream/utils/DelegatingPagerAdapter$MyDataSetObserver;-><init>(Lcom/app/thestream/utils/DelegatingPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/app/thestream/utils/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/app/thestream/utils/DelegatingPagerAdapter;

    if-eqz v0, :cond_0

    .line 163
    invoke-static {v0}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->access$100(Lcom/app/thestream/utils/DelegatingPagerAdapter;)V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/app/thestream/utils/DelegatingPagerAdapter$MyDataSetObserver;->onChanged()V

    return-void
.end method
