.class public Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;
.super Landroid/widget/RelativeLayout;
.source "Sta"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/RelativeLayout;

.field public c:Landroid/view/View$OnClickListener;

.field public d:Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

.field public e:Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;

.field public f:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

.field public g:Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->c:Landroid/view/View$OnClickListener;

    .line 14
    iput-object p3, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->f:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 15
    new-instance p1, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView$a;

    invoke-direct {p1, p0, p5}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView$a;-><init>(Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->c:Landroid/view/View$OnClickListener;

    .line 23
    invoke-virtual {p0, p2, p4}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->a(Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->a:Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->a()Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->d:Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;->a()Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->d:Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->d:Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationObject$Size;->a()Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object p1

    .line 7
    iget-object v0, v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;->a:Ljava/util/EnumMap;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;

    .line 9
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->e:Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;->b()Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->g:Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->d:Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

    iget-object p2, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->f:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 15
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;->Positions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;

    if-nez v0, :cond_2

    .line 17
    sget-object v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;->BOTTOM_LEFT:Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;

    .line 18
    iget-object p1, p1, Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;->Positions:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->g:Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;

    .line 22
    :goto_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->a:Landroid/widget/ImageView;

    const-string p2, "info"

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->a:Landroid/widget/ImageView;

    const p2, 0x57f00001

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 26
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->a:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->e:Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->b:Landroid/widget/RelativeLayout;

    .line 30
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->e:Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;->d()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->d:Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;->e()F

    move-result v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-static {p2, v0}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result p2

    .line 32
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->e:Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;->a()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->d:Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationConfig;->e()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    iget-object p2, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->b:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 37
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->e:Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v1

    .line 39
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->e:Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;

    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/adinformation/ImageResourceConfig;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 42
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->g:Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;

    invoke-virtual {v0, p2}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationPositions$Position;->addRules(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object p2, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p2, p0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
