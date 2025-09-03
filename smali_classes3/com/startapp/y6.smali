.class public Lcom/startapp/y6;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ActiveSimCount:I

.field public ActiveSimCountMax:I

.field public DefaultDataSimId:I

.field public DefaultSimId:I

.field public DefaultSmsSimId:I

.field public DefaultVoiceSimId:I

.field public MultiSimVariant:Lcom/startapp/networkTest/enums/MultiSimVariants;

.field public SimInfos:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/x9;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/x9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/startapp/y6;->ActiveSimCount:I

    .line 7
    iput v0, p0, Lcom/startapp/y6;->ActiveSimCountMax:I

    .line 12
    iput v0, p0, Lcom/startapp/y6;->DefaultDataSimId:I

    .line 17
    iput v0, p0, Lcom/startapp/y6;->DefaultSmsSimId:I

    .line 22
    iput v0, p0, Lcom/startapp/y6;->DefaultSimId:I

    .line 27
    iput v0, p0, Lcom/startapp/y6;->DefaultVoiceSimId:I

    .line 36
    sget-object v0, Lcom/startapp/networkTest/enums/MultiSimVariants;->d:Lcom/startapp/networkTest/enums/MultiSimVariants;

    iput-object v0, p0, Lcom/startapp/y6;->MultiSimVariant:Lcom/startapp/networkTest/enums/MultiSimVariants;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDefaultDataSimInfo()Lcom/startapp/x9;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/x9;

    .line 2
    iget v2, v1, Lcom/startapp/x9;->SubscriptionId:I

    iget v3, p0, Lcom/startapp/y6;->DefaultDataSimId:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 7
    :cond_1
    new-instance v0, Lcom/startapp/x9;

    invoke-direct {v0}, Lcom/startapp/x9;-><init>()V

    return-object v0
.end method

.method public getDefaultSmsSimInfo()Lcom/startapp/x9;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/x9;

    .line 2
    iget v2, v1, Lcom/startapp/x9;->SubscriptionId:I

    iget v3, p0, Lcom/startapp/y6;->DefaultSmsSimId:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 7
    :cond_1
    new-instance v0, Lcom/startapp/x9;

    invoke-direct {v0}, Lcom/startapp/x9;-><init>()V

    return-object v0
.end method

.method public getDefaultVoiceSimInfo()Lcom/startapp/x9;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/x9;

    .line 2
    iget v2, v1, Lcom/startapp/x9;->SubscriptionId:I

    iget v3, p0, Lcom/startapp/y6;->DefaultVoiceSimId:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 7
    :cond_1
    new-instance v0, Lcom/startapp/x9;

    invoke-direct {v0}, Lcom/startapp/x9;-><init>()V

    return-object v0
.end method

.method public getSimInfoSubId(I)Lcom/startapp/x9;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/y6;->SimInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/x9;

    .line 2
    iget v2, v1, Lcom/startapp/x9;->SubscriptionId:I

    if-ne v2, p1, :cond_0

    return-object v1

    .line 7
    :cond_1
    new-instance p1, Lcom/startapp/x9;

    invoke-direct {p1}, Lcom/startapp/x9;-><init>()V

    return-object p1
.end method
