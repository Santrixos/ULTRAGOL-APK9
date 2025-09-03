.class public Lcom/startapp/sdk/adsbase/model/AdPreferences;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;
    }
.end annotation


# static fields
.field public static final TYPE_APP_WALL:Ljava/lang/String; = "APP_WALL"

.field public static final TYPE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final TYPE_INAPP_EXIT:Ljava/lang/String; = "INAPP_EXIT"

.field public static final TYPE_SCRINGO_TOOLBAR:Ljava/lang/String; = "SCRINGO_TOOLBAR"

.field public static final TYPE_TEXT:Ljava/lang/String; = "TEXT"

.field private static final serialVersionUID:J = 0x5819dc126a61b53fL


# instance fields
.field private adTag:Ljava/lang/String;

.field public advertiserId:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private ai:Ljava/lang/Boolean;

.field private as:Ljava/lang/Boolean;

.field private autoLoadAmount:Ljava/lang/Integer;

.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public country:Ljava/lang/String;

.field public forceFullpage:Z

.field public forceOfferWall2D:Z

.field public forceOfferWall3D:Z

.field public forceOverlay:Z

.field private gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

.field private hardwareAccelerated:Z

.field private keywords:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field public minCpm:Ljava/lang/Double;

.field public packageInclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productId:Ljava/lang/String;

.field public template:Ljava/lang/String;

.field private testMode:Z

.field public type:Lcom/startapp/sdk/adsbase/Ad$AdType;

.field private videoMuted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 6
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall3D:Z

    .line 9
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall2D:Z

    .line 10
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceFullpage:Z

    .line 11
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOverlay:Z

    .line 24
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 67
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    .line 68
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 69
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 70
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    .line 72
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 74
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 75
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    .line 76
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->a()Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    .line 87
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    .line 88
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 94
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    const/4 v1, 0x0

    .line 95
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall3D:Z

    .line 97
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall2D:Z

    .line 98
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceFullpage:Z

    .line 99
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOverlay:Z

    .line 112
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 155
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    .line 156
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 157
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 158
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    .line 160
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 162
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 163
    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    .line 164
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    .line 170
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->a()Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    .line 175
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    .line 176
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 182
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 186
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 189
    :cond_0
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 190
    iget-boolean v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall3D:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall3D:Z

    .line 191
    iget-boolean v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall2D:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall2D:Z

    .line 192
    iget-boolean v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceFullpage:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceFullpage:Z

    .line 193
    iget-boolean v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOverlay:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOverlay:Z

    .line 194
    iget-boolean v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    .line 195
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 196
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 197
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    .line 199
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 201
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 202
    iget-boolean v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    .line 203
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    .line 204
    iget-boolean v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    .line 205
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->autoLoadAmount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->autoLoadAmount:Ljava/lang/Integer;

    .line 206
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->productId:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    .line 210
    :cond_1
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 211
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->autoLoadAmount:Ljava/lang/Integer;

    return-object v0
.end method

.method public addCategory(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCategoryExclude(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    .line 3
    iget-boolean v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall3D:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall3D:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall2D:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall2D:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceFullpage:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceFullpage:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOverlay:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOverlay:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->autoLoadAmount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->autoLoadAmount:Ljava/lang/Integer;

    .line 10
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    .line 13
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 15
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    .line 16
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 17
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 18
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 19
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    .line 21
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    .line 22
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    .line 23
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    .line 24
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->productId:Ljava/lang/String;

    .line 25
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    iget-object v3, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    .line 26
    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    iget-object p1, p1, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 27
    invoke-static {v2, p1}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAdTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAge(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 4
    invoke-virtual {v0, p1}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->c(Landroid/content/Context;)Lcom/startapp/sdk/adsbase/SDKAdPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/SDKAdPreferences;->getAge()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getAi()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAs()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getCategoriesExclude()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomProductId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender(Landroid/content/Context;)Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 4
    invoke-virtual {v0, p1}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->c(Landroid/content/Context;)Lcom/startapp/sdk/adsbase/SDKAdPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/SDKAdPreferences;->getGender()Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getMinCpm()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/startapp/sdk/adsbase/Ad$AdType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->country:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->advertiserId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->template:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->packageInclude:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall3D:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall2D:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceFullpage:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOverlay:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->productId:Ljava/lang/String;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->autoLoadAmount:Ljava/lang/Integer;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categories:Ljava/util/Set;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 24
    sget-object v1, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 25
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isForceFullpage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceFullpage:Z

    return v0
.end method

.method public isForceOfferWall2D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall2D:Z

    return v0
.end method

.method public isForceOfferWall3D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOfferWall3D:Z

    return v0
.end method

.method public isForceOverlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->forceOverlay:Z

    return v0
.end method

.method public isSimpleToken()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    return v0
.end method

.method public isVideoMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    return v0
.end method

.method public muteVideo()Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->videoMuted:Z

    return-object p0
.end method

.method public setAdTag(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->adTag:Ljava/lang/String;

    return-object p0
.end method

.method public setAge(Ljava/lang/Integer;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    return-object p0
.end method

.method public setAge(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->age:Ljava/lang/String;

    return-object p0
.end method

.method public setAi(Ljava/lang/Boolean;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->ai:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAs(Ljava/lang/Boolean;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->as:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setAutoLoadAmount(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->autoLoadAmount:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public setCustomProductId(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->gender:Lcom/startapp/sdk/adsbase/SDKAdPreferences$Gender;

    return-object p0
.end method

.method public setHardwareAccelerated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->hardwareAccelerated:Z

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public setLatitude(D)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setLongitude(D)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->longitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setMinCpm(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->minCpm:Ljava/lang/Double;

    return-void
.end method

.method public setTestMode(Z)Lcom/startapp/sdk/adsbase/model/AdPreferences;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->testMode:Z

    return-object p0
.end method

.method public setType(Lcom/startapp/sdk/adsbase/Ad$AdType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/AdPreferences;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
