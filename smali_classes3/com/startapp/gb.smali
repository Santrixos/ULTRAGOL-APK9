.class public Lcom/startapp/gb;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/ud$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/gb$a;,
        Lcom/startapp/gb$b;
    }
.end annotation


# static fields
.field public static h:Lcom/startapp/gb;

.field public static i:Landroid/os/Handler;

.field public static j:Landroid/os/Handler;

.field public static final k:Ljava/lang/Runnable;

.field public static final l:Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/gb$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/xd;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/startapp/ce;

.field public e:Lcom/startapp/td;

.field public f:Lcom/startapp/vd;

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapp/gb;

    invoke-direct {v0}, Lcom/startapp/gb;-><init>()V

    sput-object v0, Lcom/startapp/gb;->h:Lcom/startapp/gb;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/startapp/gb;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/startapp/gb;->j:Landroid/os/Handler;

    new-instance v0, Lcom/startapp/gb$c;

    invoke-direct {v0}, Lcom/startapp/gb$c;-><init>()V

    sput-object v0, Lcom/startapp/gb;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/startapp/gb$d;

    invoke-direct {v0}, Lcom/startapp/gb$d;-><init>()V

    sput-object v0, Lcom/startapp/gb;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/gb;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/gb;->c:Ljava/util/List;

    new-instance v0, Lcom/startapp/td;

    invoke-direct {v0}, Lcom/startapp/td;-><init>()V

    iput-object v0, p0, Lcom/startapp/gb;->e:Lcom/startapp/td;

    new-instance v0, Lcom/startapp/ce;

    invoke-direct {v0}, Lcom/startapp/ce;-><init>()V

    iput-object v0, p0, Lcom/startapp/gb;->d:Lcom/startapp/ce;

    new-instance v0, Lcom/startapp/vd;

    new-instance v1, Lcom/startapp/ke;

    invoke-direct {v1}, Lcom/startapp/ke;-><init>()V

    invoke-direct {v0, v1}, Lcom/startapp/vd;-><init>(Lcom/startapp/ke;)V

    iput-object v0, p0, Lcom/startapp/gb;->f:Lcom/startapp/vd;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 32
    sget-object v0, Lcom/startapp/gb;->j:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/startapp/gb;->j:Landroid/os/Handler;

    sget-object v1, Lcom/startapp/gb;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/startapp/gb;->j:Landroid/os/Handler;

    sget-object v1, Lcom/startapp/gb;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/startapp/ud;Lorg/json/JSONObject;Lcom/iab/omid/library/startio/walking/b;Z)V
    .locals 6

    sget-object v0, Lcom/iab/omid/library/startio/walking/b;->a:Lcom/iab/omid/library/startio/walking/b;

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    const/4 v4, 0x0

    :goto_0
    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p0

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/startapp/ud;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/startapp/ud$a;ZZ)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/startapp/ud;Lorg/json/JSONObject;Z)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/startapp/ve;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/startapp/gb;->e:Lcom/startapp/td;

    .line 3
    iget-object v3, v0, Lcom/startapp/td;->d:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/iab/omid/library/startio/walking/b;->a:Lcom/iab/omid/library/startio/walking/b;

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_2
    iget-boolean v0, v0, Lcom/startapp/td;->i:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iab/omid/library/startio/walking/b;->b:Lcom/iab/omid/library/startio/walking/b;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/iab/omid/library/startio/walking/b;->c:Lcom/iab/omid/library/startio/walking/b;

    goto :goto_1

    .line 4
    :goto_2
    sget-object v0, Lcom/iab/omid/library/startio/walking/b;->c:Lcom/iab/omid/library/startio/walking/b;

    if-ne v7, v0, :cond_4

    return-void

    :cond_4
    invoke-interface {p2, p1}, Lcom/startapp/ud;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/startapp/de;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 5
    iget-object p3, p0, Lcom/startapp/gb;->e:Lcom/startapp/td;

    .line 6
    iget-object v0, p3, Lcom/startapp/td;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_5

    const/4 p3, 0x0

    goto :goto_3

    :cond_5
    iget-object v0, p3, Lcom/startapp/td;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object p3, p3, Lcom/startapp/td;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object p3, v0

    :goto_3
    const-string v0, "OMIDLIB"

    if-eqz p3, :cond_8

    .line 7
    sget-object v3, Lcom/startapp/de;->a:Landroid/view/WindowManager;

    :try_start_0
    const-string v3, "adSessionId"

    .line 8
    invoke-virtual {v6, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    const-string v3, "Error with setting ad session id"

    .line 9
    invoke-static {v0, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_4
    iget-object p3, p0, Lcom/startapp/gb;->e:Lcom/startapp/td;

    .line 11
    iget-object v3, p3, Lcom/startapp/td;->h:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p3, p3, Lcom/startapp/td;->h:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    goto :goto_5

    :cond_7
    const/4 p3, 0x1

    .line 12
    :goto_5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    :try_start_1
    const-string v3, "hasWindowFocus"

    .line 13
    invoke-virtual {v6, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p3

    const-string v3, "Error with setting not visible reason"

    .line 14
    invoke-static {v0, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :goto_6
    iget-object p3, p0, Lcom/startapp/gb;->e:Lcom/startapp/td;

    .line 16
    iput-boolean v2, p3, Lcom/startapp/td;->i:Z

    const/4 p3, 0x1

    goto :goto_7

    :cond_8
    const/4 p3, 0x0

    :goto_7
    if-nez p3, :cond_e

    .line 17
    iget-object p3, p0, Lcom/startapp/gb;->e:Lcom/startapp/td;

    .line 18
    iget-object v3, p3, Lcom/startapp/td;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/td$a;

    if-eqz v3, :cond_9

    iget-object p3, p3, Lcom/startapp/td;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v3, :cond_b

    .line 19
    sget-object p3, Lcom/startapp/de;->a:Landroid/view/WindowManager;

    .line 20
    iget-object p3, v3, Lcom/startapp/td$a;->a:Lcom/startapp/he;

    .line 21
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 22
    iget-object v3, v3, Lcom/startapp/td$a;->b:Ljava/util/ArrayList;

    .line 23
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8

    :cond_a
    :try_start_2
    const-string v3, "isFriendlyObstructionFor"

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "friendlyObstructionClass"

    .line 24
    iget-object v4, p3, Lcom/startapp/he;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "friendlyObstructionPurpose"

    .line 26
    iget-object v4, p3, Lcom/startapp/he;->c:Lcom/iab/omid/library/startio/adsession/FriendlyObstructionPurpose;

    .line 27
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "friendlyObstructionReason"

    .line 28
    iget-object p3, p3, Lcom/startapp/he;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {v6, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p3

    const-string v3, "Error with setting friendly obstruction"

    .line 30
    invoke-static {v0, v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    const/4 p3, 0x1

    goto :goto_a

    :cond_b
    const/4 p3, 0x0

    :goto_a
    if-nez p4, :cond_d

    if-eqz p3, :cond_c

    goto :goto_b

    :cond_c
    const/4 v8, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    const/4 v8, 0x1

    :goto_c
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/startapp/gb;->a(Landroid/view/View;Lcom/startapp/ud;Lorg/json/JSONObject;Lcom/iab/omid/library/startio/walking/b;Z)V

    :cond_e
    iget p1, p0, Lcom/startapp/gb;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/startapp/gb;->b:I

    return-void
.end method
