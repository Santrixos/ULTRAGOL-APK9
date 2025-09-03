.class public Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;
.super Landroid/widget/LinearLayout;
.source "LargeNativeAdView.java"


# instance fields
.field private adMobDrawable:Landroid/graphics/drawable/Drawable;

.field private attrs:Landroid/util/AttributeSet;

.field private btnNativeAdMob:Landroid/widget/Button;

.field private btnNativeStartApp:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private startAppDrawable:Landroid/graphics/drawable/Drawable;

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

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->initView()V

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

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->attrs:Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0}, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->initView()V

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

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->attrs:Landroid/util/AttributeSet;

    .line 48
    iput p3, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->styleAttr:I

    .line 49
    invoke-direct {p0}, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->initView()V

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

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 59
    iput-object p0, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->view:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->mContext:Landroid/content/Context;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->view_native_ad_large:I

    invoke-static {v0, v1, p0}, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->attrs:Landroid/util/AttributeSet;

    sget-object v2, Lcom/solodroid/ads/sdk/R$styleable;->NativeAdView:[I

    iget v3, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->styleAttr:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    sget v1, Lcom/solodroid/ads/sdk/R$styleable;->NativeAdView_adMobNativeButton:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->adMobDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    sget v1, Lcom/solodroid/ads/sdk/R$styleable;->NativeAdView_startappNativeButton:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->startAppDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta:I

    invoke-virtual {p0, v1}, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->btnNativeAdMob:Landroid/widget/Button;

    .line 67
    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_button:I

    invoke-virtual {p0, v1}, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->btnNativeStartApp:Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->adMobDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->setAdMobNativeButtonColor(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->startAppDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, v1}, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->setStartAppNativeButtonColor(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setAdMobNativeButtonColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->btnNativeAdMob:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartAppNativeButtonColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/solodroid/ads/sdk/ui/LargeNativeAdView;->btnNativeStartApp:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
