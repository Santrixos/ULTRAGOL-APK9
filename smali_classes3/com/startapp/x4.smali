.class public Lcom/startapp/x4;
.super Lcom/startapp/i2;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/i2<",
        "Lcom/startapp/w4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startapp/i2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/startapp/i2;->a:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v2, v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 12
    :cond_1
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    const/16 v3, 0xa

    const-string v4, "keyboard"

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 20
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 22
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-ge v6, v3, :cond_3

    .line 23
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v5, v1

    .line 29
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    .line 36
    invoke-virtual {v0, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 41
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v7, :cond_7

    .line 42
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 44
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    if-nez v5, :cond_8

    .line 47
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 50
    :cond_8
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    if-ge v8, v3, :cond_7

    .line 51
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    .line 59
    new-instance v1, Lcom/startapp/w4;

    invoke-direct {v1, v5}, Lcom/startapp/w4;-><init>(Ljava/util/Collection;)V

    :cond_a
    :goto_3
    return-object v1
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/w4;->b:Lcom/startapp/w4;

    return-object v0
.end method
