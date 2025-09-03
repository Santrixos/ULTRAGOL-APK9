.class public Lcom/startapp/he;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Lcom/startapp/xd;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/startapp/xd;

    invoke-direct {v0, p1}, Lcom/startapp/xd;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/startapp/he;->a:Lcom/startapp/xd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/he;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/startapp/he;->c:Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;

    iput-object p3, p0, Lcom/startapp/he;->d:Ljava/lang/String;

    return-void
.end method
