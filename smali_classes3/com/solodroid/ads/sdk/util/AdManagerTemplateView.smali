.class public Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;
.super Landroid/widget/FrameLayout;
.source "AdManagerTemplateView.java"


# static fields
.field private static final MEDIUM_TEMPLATE:Ljava/lang/String; = "medium_template"

.field private static final SMALL_TEMPLATE:Ljava/lang/String; = "small_template"


# instance fields
.field private background:Landroid/widget/LinearLayout;

.field private callToActionView:Landroid/widget/Button;

.field private iconView:Landroid/widget/ImageView;

.field private mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field private nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field private nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

.field private primaryView:Landroid/widget/TextView;

.field private ratingBar:Landroid/widget/RatingBar;

.field private secondaryView:Landroid/widget/TextView;

.field private styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

.field private templateType:I

.field private tertiaryView:Landroid/widget/TextView;


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

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

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

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adHasOnlyStore(Lcom/google/android/gms/ads/nativead/NativeAd;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAd"
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private applyStyles()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getMainBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->background:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getPrimaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getSecondaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 114
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 115
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getTertiaryTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 119
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 120
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getCallToActionTextTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 124
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->callToActionView:Landroid/widget/Button;

    if-eqz v1, :cond_6

    .line 125
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getPrimaryTextTypefaceColor()I

    move-result v0

    if-lez v0, :cond_7

    .line 129
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 130
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getSecondaryTextTypefaceColor()I

    move-result v0

    if-lez v0, :cond_8

    .line 134
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 135
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getTertiaryTextTypefaceColor()I

    move-result v0

    if-lez v0, :cond_9

    .line 139
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 140
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    :cond_9
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getCallToActionTypefaceColor()I

    move-result v0

    if-lez v0, :cond_a

    .line 144
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->callToActionView:Landroid/widget/Button;

    if-eqz v1, :cond_a

    .line 145
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 148
    :cond_a
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getCallToActionTextSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_b

    .line 149
    iget-object v2, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->callToActionView:Landroid/widget/Button;

    if-eqz v2, :cond_b

    .line 150
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 153
    :cond_b
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getPrimaryTextSize()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_c

    .line 154
    iget-object v2, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    .line 155
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    :cond_c
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getSecondaryTextSize()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_d

    .line 159
    iget-object v2, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 160
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    :cond_d
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getTertiaryTextSize()F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_e

    .line 164
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 165
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    :cond_e
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getCallToActionBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 169
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->callToActionView:Landroid/widget/Button;

    if-eqz v1, :cond_f

    .line 170
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_f
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getPrimaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 174
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 175
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_10
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getSecondaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 179
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 180
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_11
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->getTertiaryTextBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 184
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 185
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_12
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->invalidate()V

    .line 189
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->requestLayout()V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributeSet"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/solodroid/ads/sdk/R$styleable;->TemplateView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 269
    :try_start_0
    sget v0, Lcom/solodroid/ads/sdk/R$styleable;->TemplateView_gnt_template_type:I

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_ad_manager_medium_template_view:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->templateType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "layout_inflater"

    .line 273
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 274
    iget p2, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->templateType:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void

    :catchall_0
    move-exception p1

    .line 271
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    throw p1
.end method


# virtual methods
.method public destroyNativeAd()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    return-void
.end method

.method public getNativeAdView()Lcom/google/android/gms/ads/nativead/NativeAdView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 279
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 280
    sget v0, Lcom/solodroid/ads/sdk/R$id;->native_ad_view:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 281
    sget v0, Lcom/solodroid/ads/sdk/R$id;->primary:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->primaryView:Landroid/widget/TextView;

    .line 282
    sget v0, Lcom/solodroid/ads/sdk/R$id;->secondary:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    .line 283
    sget v0, Lcom/solodroid/ads/sdk/R$id;->body:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->tertiaryView:Landroid/widget/TextView;

    .line 285
    sget v0, Lcom/solodroid/ads/sdk/R$id;->rating_bar:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    .line 286
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    .line 288
    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->callToActionView:Landroid/widget/Button;

    .line 289
    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->iconView:Landroid/widget/ImageView;

    .line 291
    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_manager_media_view:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 294
    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_manager_background:I

    invoke-virtual {p0, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->background:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAd"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 201
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v5

    .line 207
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v6

    .line 211
    iget-object v7, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v8, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->callToActionView:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 212
    iget-object v7, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v8, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 213
    iget-object v7, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v8, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 214
    iget-object v7, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-direct {p0, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->adHasOnlyStore(Lcom/google/android/gms/ads/nativead/NativeAd;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 216
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v7, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStoreView(Landroid/view/View;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v7, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->callToActionView:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    if-eqz v5, :cond_2

    .line 229
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmpl-double v2, v4, v9

    if-lez v2, :cond_2

    .line 230
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->ratingBar:Landroid/widget/RatingBar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    .line 233
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setStarRatingView(Landroid/view/View;)V

    goto :goto_1

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    :goto_1
    if-eqz v6, :cond_3

    .line 241
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    :goto_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->tertiaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 248
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->tertiaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->nativeAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    .line 85
    invoke-direct {p0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->applyStyles()V

    return-void
.end method
