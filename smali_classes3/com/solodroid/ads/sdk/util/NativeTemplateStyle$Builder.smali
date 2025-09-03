.class public Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
.super Ljava/lang/Object;
.source "NativeTemplateStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-direct {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;-><init>()V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    return-void
.end method


# virtual methods
.method public build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    return-object v0
.end method

.method public withCallToActionBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callToActionBackgroundColor"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$302(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withCallToActionTextSize(F)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callToActionTextSize"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$102(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;F)F

    return-object p0
.end method

.method public withCallToActionTextTypeface(Landroid/graphics/Typeface;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callToActionTextTypeface"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$002(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withCallToActionTypefaceColor(I)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callToActionTypefaceColor"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$202(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;I)I

    return-object p0
.end method

.method public withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainBackgroundColor"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$1602(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withPrimaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primaryTextBackgroundColor"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$702(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withPrimaryTextSize(F)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primaryTextSize"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$502(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;F)F

    return-object p0
.end method

.method public withPrimaryTextTypeface(Landroid/graphics/Typeface;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primaryTextTypeface"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$402(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withPrimaryTextTypefaceColor(I)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primaryTextTypefaceColor"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$602(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;I)I

    return-object p0
.end method

.method public withSecondaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondaryTextBackgroundColor"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$1102(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withSecondaryTextSize(F)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondaryTextSize"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$902(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;F)F

    return-object p0
.end method

.method public withSecondaryTextTypeface(Landroid/graphics/Typeface;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondaryTextTypeface"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$802(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withSecondaryTextTypefaceColor(I)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondaryTextTypefaceColor"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$1002(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;I)I

    return-object p0
.end method

.method public withTertiaryTextBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tertiaryTextBackgroundColor"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$1502(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/drawable/ColorDrawable;)Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method public withTertiaryTextSize(F)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tertiaryTextSize"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$1302(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;F)F

    return-object p0
.end method

.method public withTertiaryTextTypeface(Landroid/graphics/Typeface;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tertiaryTextTypeface"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$1202(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method

.method public withTertiaryTextTypefaceColor(I)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tertiaryTextTypefaceColor"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->styles:Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;->access$1402(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;I)I

    return-object p0
.end method
