.class public Lcom/solodroid/ads/sdk/ui/BannerAdView;
.super Landroid/widget/LinearLayout;
.source "BannerAdView.java"


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;

.field private styleAttr:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/solodroid/ads/sdk/ui/BannerAdView;->mContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/solodroid/ads/sdk/ui/BannerAdView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Lcom/solodroid/ads/sdk/ui/BannerAdView;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/solodroid/ads/sdk/ui/BannerAdView;->attrs:Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0}, Lcom/solodroid/ads/sdk/ui/BannerAdView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object p1, p0, Lcom/solodroid/ads/sdk/ui/BannerAdView;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/solodroid/ads/sdk/ui/BannerAdView;->attrs:Landroid/util/AttributeSet;

    .line 38
    iput p3, p0, Lcom/solodroid/ads/sdk/ui/BannerAdView;->styleAttr:I

    .line 39
    invoke-direct {p0}, Lcom/solodroid/ads/sdk/ui/BannerAdView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 48
    iput-object p0, p0, Lcom/solodroid/ads/sdk/ui/BannerAdView;->view:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/solodroid/ads/sdk/ui/BannerAdView;->mContext:Landroid/content/Context;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->view_banner_ad:I

    invoke-static {v0, v1, p0}, Lcom/solodroid/ads/sdk/ui/BannerAdView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
