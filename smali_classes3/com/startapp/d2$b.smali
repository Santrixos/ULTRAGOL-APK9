.class public Lcom/startapp/d2$b;
.super Landroid/os/AsyncTask;
.source "Sta"

# interfaces
.implements Lcom/startapp/e4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/d2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/d2$b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Lcom/startapp/networkTest/results/ConnectivityTestResult;",
        ">;",
        "Lcom/startapp/e4;"
    }
.end annotation


# instance fields
.field private a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

.field private b:Lcom/startapp/k0;

.field public final synthetic c:Lcom/startapp/d2;


# direct methods
.method public constructor <init>(Lcom/startapp/d2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)Lcom/startapp/d2$b$e;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/16 v6, 0xa

    if-ne v4, v6, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    if-gez v4, :cond_2

    :goto_1
    if-lez v3, :cond_1

    add-int/lit8 p1, v3, -0x1

    .line 18
    aget-byte p1, v0, p1

    const/16 v4, 0xd

    if-ne p1, v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    .line 21
    :cond_1
    new-instance p1, Lcom/startapp/d2$b$e;

    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, v0, v1, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {p1, p0, v2, v4, v5}, Lcom/startapp/d2$b$e;-><init>(Lcom/startapp/d2$b;ILjava/lang/String;Z)V

    return-object p1

    :cond_2
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 22
    aput-byte v4, v0, v3

    .line 23
    array-length v3, v0

    if-ne v5, v3, :cond_3

    add-int/lit16 v3, v5, 0x400

    .line 24
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_3
    move v3, v5

    goto :goto_0
.end method

.method private a([Ljava/lang/String;Lcom/startapp/networkTest/enums/CtCriteriaTypes;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/startapp/networkTest/enums/CtCriteriaTypes;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapp/h2;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 569
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 572
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/b5;->f()Ljava/util/Set;

    move-result-object v2

    .line 573
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz v2, :cond_1

    .line 575
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 576
    const-class v5, Lcom/startapp/h2;

    invoke-static {v4, v5}, Lcom/startapp/r5;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapp/h2;

    if-eqz v4, :cond_0

    .line 578
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :cond_1
    array-length v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v6, p1, v5

    .line 585
    new-instance v7, Lcom/startapp/h2;

    invoke-direct {v7}, Lcom/startapp/h2;-><init>()V

    .line 586
    iput-object v6, v7, Lcom/startapp/h2;->address:Ljava/lang/String;

    .line 587
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 590
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/h2;

    const/4 v3, 0x0

    .line 591
    :goto_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 592
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapp/h2;

    iget-object v5, v5, Lcom/startapp/h2;->address:Ljava/lang/String;

    iget-object v6, v2, Lcom/startapp/h2;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 593
    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 598
    :cond_5
    sget-object p1, Lcom/startapp/d2$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 645
    :pswitch_0
    new-instance p1, Lcom/startapp/d2$b$d;

    invoke-direct {p1, p0}, Lcom/startapp/d2$b$d;-><init>(Lcom/startapp/d2$b;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 651
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 652
    :pswitch_1
    new-instance p1, Lcom/startapp/d2$b$c;

    invoke-direct {p1, p0}, Lcom/startapp/d2$b$c;-><init>(Lcom/startapp/d2$b;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 658
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 659
    :pswitch_2
    new-instance p1, Lcom/startapp/d2$b$b;

    invoke-direct {p1, p0}, Lcom/startapp/d2$b$b;-><init>(Lcom/startapp/d2$b;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 665
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 666
    :pswitch_3
    new-instance p1, Lcom/startapp/d2$b$a;

    invoke-direct {p1, p0}, Lcom/startapp/d2$b$a;-><init>(Lcom/startapp/d2$b;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 672
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 673
    :pswitch_4
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-static {v1, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 674
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :pswitch_5
    move-object v0, v1

    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/h2;",
            ">;)V"
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 677
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/h2;

    .line 678
    invoke-virtual {v1}, Lcom/startapp/h2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 681
    :cond_0
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/startapp/b5;->a(Ljava/util/Set;)V

    return-void
.end method

.method private a()Z
    .locals 4

    const-string v0, "ping -W 3 -c 1 -s 56 127.0.0.1"

    const/4 v1, 0x0

    .line 687
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 688
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 691
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 694
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " "

    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 698
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 707
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 709
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_0
    return v0

    .line 710
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 711
    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_1

    .line 715
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    .line 717
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    return v0

    :catchall_4
    move-exception v0

    if-eqz v1, :cond_2

    .line 718
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    .line 720
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 723
    :cond_2
    :goto_3
    throw v0
.end method

.method private b()Lcom/startapp/networkTest/enums/voice/CallStates;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v1}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->d:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 17
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->d:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 18
    :cond_1
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->a:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 20
    :cond_2
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->b:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 22
    :cond_3
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->c:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0

    .line 28
    :cond_4
    sget-object v0, Lcom/startapp/networkTest/enums/voice/CallStates;->d:Lcom/startapp/networkTest/enums/voice/CallStates;

    return-object v0
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Lcom/startapp/networkTest/results/ConnectivityTestResult;
    .locals 36

    move-object/from16 v1, p0

    const-string v2, "\r\n"

    .line 25
    new-instance v0, Lcom/startapp/a1;

    iget-object v3, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v3}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/startapp/a1;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0}, Lcom/startapp/a1;->a()Lcom/startapp/networkTest/data/BatteryInfo;

    move-result-object v3

    .line 33
    iget-object v0, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->b(Lcom/startapp/d2;)F

    move-result v0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 36
    iget v0, v3, Lcom/startapp/networkTest/data/BatteryInfo;->BatteryLevel:F

    iget-object v5, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v5}, Lcom/startapp/d2;->b(Lcom/startapp/d2;)F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    return-object v4

    .line 40
    :cond_0
    iget-object v0, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/p2;->i(Landroid/content/Context;)Lcom/startapp/x9;

    move-result-object v5

    .line 43
    iget-object v0, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->f(Lcom/startapp/d2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/j8;->d()Lcom/startapp/networkTest/enums/ConnectionTypes;

    move-result-object v0

    sget-object v6, Lcom/startapp/networkTest/enums/ConnectionTypes;->d:Lcom/startapp/networkTest/enums/ConnectionTypes;

    if-ne v0, v6, :cond_1

    .line 45
    iget-object v0, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v0

    iget v6, v5, Lcom/startapp/x9;->SubscriptionId:I

    invoke-virtual {v0, v6}, Lcom/startapp/j8;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v4

    .line 54
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/b5;->w()J

    move-result-wide v7

    .line 55
    invoke-static {}, Lcom/startapp/ua;->d()J

    move-result-wide v9

    .line 56
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->CONNECTIVITY_TEST_TRUSTSTORE_UPDATE_INTERVAL()J

    move-result-wide v11

    add-long/2addr v11, v7

    cmp-long v0, v11, v9

    if-ltz v0, :cond_2

    cmp-long v0, v7, v9

    if-lez v0, :cond_3

    .line 57
    :cond_2
    iget-object v0, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/mb;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_3
    const/4 v7, 0x0

    .line 64
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/b5;->t()J

    move-result-wide v8

    .line 65
    invoke-static {}, Lcom/startapp/ua;->d()J

    move-result-wide v10

    .line 66
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->CONNECTIVITY_TEST_CDNCONFIG_UPDATE_INTERVAL()J

    move-result-wide v12

    add-long/2addr v12, v8

    cmp-long v0, v12, v10

    if-ltz v0, :cond_4

    cmp-long v0, v8, v10

    if-lez v0, :cond_5

    .line 67
    :cond_4
    invoke-static {}, Lcom/startapp/w1;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 70
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 73
    :cond_5
    :goto_1
    invoke-static {}, Lcom/startapp/a5;->h()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->h(Lcom/startapp/d2;)Lcom/startapp/nd;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_2b

    .line 77
    :cond_6
    new-instance v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v8, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v8}, Lcom/startapp/d2;->i(Lcom/startapp/d2;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->j(Lcom/startapp/d2;)Lcom/startapp/b5;

    move-result-object v9

    invoke-virtual {v9}, Lcom/startapp/b5;->p()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/startapp/networkTest/results/ConnectivityTestResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    .line 78
    iget-object v8, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v8}, Lcom/startapp/d2;->k(Lcom/startapp/d2;)Lcom/startapp/networkTest/controller/LocationController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/startapp/networkTest/controller/LocationController;->c()Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object v8

    iput-object v8, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    .line 80
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/b5;->i()[Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/startapp/b5;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    move-result-object v8

    .line 88
    iget-object v9, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Lcom/startapp/networkTest/startapp/NetworkTester;->isAppInForeground()I

    move-result v10

    iput v10, v9, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IsAppInForeground:I

    .line 90
    iget-object v9, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    const-string v10, "20220530140220"

    iput-object v10, v9, Lcom/startapp/networkTest/results/BaseResult;->Version:Ljava/lang/String;

    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v11}, Lcom/startapp/d2;->l(Lcom/startapp/d2;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v11}, Lcom/startapp/d2;->m(Lcom/startapp/d2;)Ljava/util/Random;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Random;->nextLong()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerFilename:Ljava/lang/String;

    .line 95
    iget-object v9, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iput-object v3, v9, Lcom/startapp/networkTest/results/ConnectivityTestResult;->BatteryInfo:Lcom/startapp/networkTest/data/BatteryInfo;

    .line 97
    iget-object v3, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v3}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/p2;->b(Landroid/content/Context;)Lcom/startapp/q2;

    move-result-object v3

    iput-object v3, v9, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DeviceInfo:Lcom/startapp/q2;

    .line 99
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/startapp/p2;->e(Landroid/content/Context;)Lcom/startapp/h6;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->MemoryInfo:Lcom/startapp/h6;

    .line 101
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v9

    invoke-virtual {v9}, Lcom/startapp/j8;->h()Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    .line 103
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/y4;->CT_COLLECT_CELLINFO()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 104
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v10}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v10

    invoke-virtual {v10}, Lcom/startapp/j8;->c()[Lcom/startapp/networkTest/data/radio/CellInfo;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->CellInfo:Ljava/util/ArrayList;

    .line 107
    :cond_7
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v10}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v10

    invoke-virtual {v10}, Lcom/startapp/j8;->a()[Lcom/startapp/networkTest/data/radio/ApnInfo;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ApnInfo:Ljava/util/ArrayList;

    .line 109
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v10}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v10

    iget-object v11, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v11}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v11

    invoke-virtual {v11}, Lcom/startapp/j8;->b()Lcom/startapp/y6;

    move-result-object v11

    iget v11, v11, Lcom/startapp/y6;->DefaultDataSimId:I

    invoke-virtual {v10, v11}, Lcom/startapp/j8;->g(I)[Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->NetworkRegistrationInfo:Ljava/util/ArrayList;

    .line 111
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v9

    iget-object v10, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v10}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v10

    invoke-virtual {v10}, Lcom/startapp/j8;->b()Lcom/startapp/y6;

    move-result-object v10

    iget v10, v10, Lcom/startapp/y6;->DefaultDataSimId:I

    invoke-virtual {v9, v10}, Lcom/startapp/j8;->i(I)Lcom/startapp/networkTest/enums/NetworkTypes;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->VoiceNetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 113
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-direct/range {p0 .. p0}, Lcom/startapp/d2$b;->b()Lcom/startapp/networkTest/enums/voice/CallStates;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->CallState:Lcom/startapp/networkTest/enums/voice/CallStates;

    .line 115
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/startapp/p2;->k(Landroid/content/Context;)Lcom/startapp/ia;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->StorageInfo:Lcom/startapp/ia;

    .line 117
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->h(Lcom/startapp/d2;)Lcom/startapp/nd;

    move-result-object v9

    invoke-virtual {v9}, Lcom/startapp/nd;->c()Lcom/startapp/networkTest/data/WifiInfo;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->WifiInfo:Lcom/startapp/networkTest/data/WifiInfo;

    .line 119
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->h(Lcom/startapp/d2;)Lcom/startapp/nd;

    move-result-object v9

    invoke-static {v9}, Lcom/startapp/p2;->a(Lcom/startapp/nd;)Lcom/startapp/db;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TrafficInfo:Lcom/startapp/db;

    .line 121
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/startapp/p2;->h(Landroid/content/Context;)Lcom/startapp/networkTest/enums/ScreenStates;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ScreenState:Lcom/startapp/networkTest/enums/ScreenStates;

    .line 123
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v9}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/startapp/p2;->d(Landroid/content/Context;)Lcom/startapp/networkTest/enums/IdleStates;

    move-result-object v9

    iput-object v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IdleStateOnStart:Lcom/startapp/networkTest/enums/IdleStates;

    .line 125
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iput-object v5, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SimInfo:Lcom/startapp/x9;

    .line 128
    invoke-static {}, Lcom/startapp/ua;->e()Lcom/startapp/networkTest/data/TimeInfo;

    move-result-object v5

    iput-object v5, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;

    .line 129
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v5, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;

    iget-object v5, v5, Lcom/startapp/networkTest/data/TimeInfo;->TimestampTableau:Ljava/lang/String;

    iput-object v5, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TestTimestamp:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/b5;->F()J

    move-result-wide v9

    iput-wide v9, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TruststoreTimestamp:J

    .line 133
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v5, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;

    iget-object v9, v3, Lcom/startapp/networkTest/results/BaseResult;->GUID:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/startapp/u3;->a(Lcom/startapp/networkTest/data/TimeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->CtId:Ljava/lang/String;

    .line 135
    iget-object v3, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v3}, Lcom/startapp/d2;->j(Lcom/startapp/d2;)Lcom/startapp/b5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/b5;->l()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v3}, Lcom/startapp/d2;->j(Lcom/startapp/d2;)Lcom/startapp/b5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/b5;->m()Z

    move-result v3

    if-nez v3, :cond_8

    .line 136
    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iput-boolean v5, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IsKeepAlive:Z

    .line 140
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 145
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    .line 146
    new-instance v13, Lcom/startapp/c5;

    iget-object v14, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v14}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14, v7}, Lcom/startapp/c5;-><init>(Landroid/content/Context;Z)V

    .line 149
    invoke-direct {v1, v0, v8}, Lcom/startapp/d2$b;->a([Ljava/lang/String;Lcom/startapp/networkTest/enums/CtCriteriaTypes;)Ljava/util/List;

    move-result-object v7

    .line 150
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 151
    iget-object v0, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->c(Lcom/startapp/d2;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v14, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v14}, Lcom/startapp/d2;->d(Lcom/startapp/d2;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v4

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v32, v9

    move-object v9, v0

    move-wide/from16 v34, v11

    move-object v12, v14

    move-wide/from16 v10, v32

    move-wide/from16 v14, v34

    .line 163
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const-string v5, ""

    const-string v6, "; "

    if-lt v4, v0, :cond_a

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_3

    :cond_9
    move-object/from16 v26, v7

    move/from16 v9, v16

    move/from16 v12, v17

    move-object/from16 v7, v18

    move-object/from16 v0, v19

    move-object/from16 v4, v20

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_a
    :goto_3
    move-wide/from16 v22, v10

    .line 167
    new-instance v10, Lcom/startapp/x6;

    invoke-direct {v10}, Lcom/startapp/x6;-><init>()V

    .line 172
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_20

    .line 175
    :try_start_3
    new-instance v11, Lcom/startapp/h2;

    invoke-direct {v11}, Lcom/startapp/h2;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1f

    add-int/lit8 v16, v16, 0x1

    .line 180
    :try_start_4
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1e

    move-object/from16 v24, v11

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/startapp/d2$b;->a()Z

    move-result v11

    iput-boolean v11, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->LocalhostPingSuccess:Z

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    .line 182
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1d

    if-nez v0, :cond_b

    .line 184
    :try_start_6
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/startapp/h2;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 185
    :try_start_7
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-wide/from16 v27, v14

    :try_start_8
    iget-object v14, v11, Lcom/startapp/h2;->address:Ljava/lang/String;

    iput-object v14, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    .line 187
    iget v0, v11, Lcom/startapp/h2;->totalTests:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    iput v0, v11, Lcom/startapp/h2;->totalTests:I

    add-int/lit8 v0, v4, 0x1

    .line 189
    iput v0, v10, Lcom/startapp/x6;->Try:I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v14, v14, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v14, v14, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerFilename:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/startapp/x6;->HostFile:Ljava/lang/String;

    .line 194
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    new-instance v14, Lcom/startapp/t2;

    invoke-direct {v14}, Lcom/startapp/t2;-><init>()V

    iget-object v15, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v15, v15, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v29, v11

    const/16 v11, 0x7530

    :try_start_9
    invoke-virtual {v14, v15, v11}, Lcom/startapp/t2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;

    .line 195
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v14, v25

    iput-wide v14, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationDNS:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v11, v29

    const/4 v14, 0x1

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v29, v11

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v29, v11

    move-wide/from16 v27, v14

    :goto_4
    move-object/from16 v20, v29

    const/4 v14, 0x1

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    goto/16 :goto_2a

    :catchall_5
    move-exception v0

    move-wide/from16 v27, v14

    const/4 v14, 0x1

    :goto_5
    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    goto/16 :goto_28

    :cond_b
    move-wide/from16 v27, v14

    .line 197
    :try_start_a
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1c

    if-lez v0, :cond_c

    :try_start_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 198
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iput-object v12, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;

    .line 199
    iput-object v9, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    const-wide/16 v14, 0x0

    .line 200
    iput-wide v14, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationDNS:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    add-int/lit8 v4, v4, -0x1

    move-object v9, v5

    move-object v12, v9

    :goto_6
    move-object/from16 v11, v24

    const/4 v14, 0x0

    goto :goto_7

    :catchall_6
    move-exception v0

    const/4 v14, 0x0

    goto :goto_5

    .line 207
    :cond_c
    :try_start_c
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iput-object v9, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1c

    add-int/lit8 v4, v4, -0x1

    .line 212
    :try_start_d
    new-instance v9, Lcom/startapp/t2;

    invoke-direct {v9}, Lcom/startapp/t2;-><init>()V

    iget-object v11, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v11, v11, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    const/16 v14, 0x7530

    invoke-virtual {v9, v11, v14}, Lcom/startapp/t2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;

    .line 213
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v14, v25

    iput-wide v14, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationDNS:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1b

    move-object v9, v5

    goto :goto_6

    .line 217
    :goto_7
    :try_start_e
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1a

    move/from16 v24, v14

    :try_start_f
    iget-wide v14, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationDNS:J

    const-wide/16 v25, 0x7530

    cmp-long v29, v14, v25

    if-gtz v29, :cond_27

    .line 223
    iget-object v0, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;

    iput-object v0, v10, Lcom/startapp/x6;->ServerIp:Ljava/lang/String;

    .line 224
    iput-wide v14, v10, Lcom/startapp/x6;->DurationDNS:J

    .line 227
    iget v0, v11, Lcom/startapp/h2;->DNSSuccess:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    iput v0, v11, Lcom/startapp/h2;->DNSSuccess:I

    add-int/lit8 v17, v17, 0x1

    const/16 v0, 0x7530

    .line 231
    invoke-static {v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v14

    check-cast v14, Landroid/net/SSLCertificateSocketFactory;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_19

    const/4 v15, 0x1

    :try_start_10
    new-array v0, v15, [Ljavax/net/ssl/TrustManager;

    const/4 v15, 0x0

    aput-object v13, v0, v15

    .line 233
    invoke-virtual {v14, v0}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 238
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v15, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v15, v15, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_17

    move/from16 v25, v4

    const/16 v4, 0x1bb

    :try_start_11
    invoke-direct {v0, v15, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 239
    invoke-virtual {v14}, Landroid/net/SSLCertificateSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_16

    .line 240
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const/16 v15, 0x7530

    .line 241
    invoke-virtual {v4, v0, v15}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 242
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_15

    move-object/from16 v20, v14

    sub-long v14, v29, v18

    :try_start_13
    iput-wide v14, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationTcpConnect:J

    .line 245
    iget v0, v11, Lcom/startapp/h2;->TCPSuccess:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    iput v0, v11, Lcom/startapp/h2;->TCPSuccess:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_14

    move-object/from16 v26, v7

    move/from16 v9, v16

    move/from16 v12, v17

    move-object/from16 v0, v20

    move-wide/from16 v14, v27

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v7, v4

    move-object v4, v11

    move-wide/from16 v10, v22

    :goto_8
    if-eqz v17, :cond_21

    .line 268
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    move/from16 v20, v12

    .line 272
    :try_start_15
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    move/from16 v22, v9

    const/16 v9, 0x11

    if-lt v12, v9, :cond_d

    .line 273
    :try_start_16
    iget-object v9, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v9, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    invoke-virtual {v0, v7, v9}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    move-object/from16 v29, v8

    move-wide/from16 v23, v10

    const/16 v21, 0x0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v29, v8

    goto/16 :goto_19

    .line 279
    :cond_d
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v12, "setHostname"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    move-object/from16 v29, v8

    move-wide/from16 v23, v10

    const/4 v8, 0x1

    :try_start_18
    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    const/16 v21, 0x0

    :try_start_19
    aput-object v11, v10, v21

    invoke-virtual {v9, v12, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    .line 280
    iget-object v8, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v8, v8, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    aput-object v8, v10, v21

    invoke-virtual {v9, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object/from16 v29, v8

    move-wide/from16 v23, v10

    :goto_9
    const/16 v21, 0x0

    .line 282
    :goto_a
    :try_start_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v10, v9, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "SNI not available:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    .line 284
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    .line 288
    :goto_b
    :try_start_1b
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v0, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v3, v0, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v8, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Expected "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v8, v8, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " found "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v8}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    .line 293
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v8, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Cannot validate hostname: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    .line 296
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :goto_c
    const/16 v17, 0x0

    .line 299
    :cond_e
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v18

    iput-wide v8, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationSSL:J
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    .line 305
    :try_start_1d
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-virtual {v13}, Lcom/startapp/c5;->b()Lcom/startapp/networkTest/enums/CtTestTypes;

    move-result-object v3

    iput-object v3, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TestType:Lcom/startapp/networkTest/enums/CtTestTypes;

    .line 306
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v0, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TestType:Lcom/startapp/networkTest/enums/CtTestTypes;

    sget-object v3, Lcom/startapp/networkTest/enums/CtTestTypes;->a:Lcom/startapp/networkTest/enums/CtTestTypes;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v8, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "We couldn\'t use our own truststore, used: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v8, v8, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TestType:Lcom/startapp/networkTest/enums/CtTestTypes;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_d

    :cond_f
    move/from16 v0, v17

    .line 310
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v9, v8, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/startapp/c5;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    const/16 v3, 0x800

    :try_start_1e
    new-array v3, v3, [B

    .line 315
    new-instance v8, Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-string v11, "GET "

    .line 319
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-object v11, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v11, v11, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerFilename:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " HTTP/1.1"

    .line 321
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "HOST: "

    .line 324
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget-object v11, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v11, v11, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Connection: close"

    .line 328
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 335
    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    iput-wide v11, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationHttpGetCommand:J

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 343
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    move v13, v0

    const/4 v10, -0x1

    const-wide/16 v18, 0x0

    .line 345
    :goto_e
    :try_start_1f
    invoke-direct {v1, v2}, Lcom/startapp/d2$b;->a(Ljava/io/InputStream;)Lcom/startapp/d2$b$e;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 346
    iget v11, v0, Lcom/startapp/d2$b$e;->a:I

    move/from16 v30, v13

    int-to-long v12, v11

    add-long v18, v18, v12

    .line 347
    iget-object v11, v0, Lcom/startapp/d2$b$e;->b:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "HTTP"

    .line 348
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string v0, " "

    .line 349
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v11, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    const/4 v12, 0x1

    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v11, Lcom/startapp/networkTest/results/ConnectivityTestResult;->HTTPStatus:I

    .line 351
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget v0, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->HTTPStatus:I

    const/16 v11, 0xc8

    if-eq v0, v11, :cond_14

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v12, v11, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ErrorReason:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "Request failed! Unexcepted HTTP code: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget v12, v12, Lcom/startapp/networkTest/results/ConnectivityTestResult;->HTTPStatus:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ErrorReason:Ljava/lang/String;

    const/4 v13, 0x0

    goto :goto_e

    :cond_10
    const-string v12, "CONTENT-LENGTH:"

    .line 355
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    const/16 v13, 0xf

    if-eqz v12, :cond_11

    .line 357
    :try_start_20
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v0

    .line 359
    :try_start_21
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_11
    const-string v12, "X-AMZ-CF-ID:"

    .line 361
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 362
    iget-object v11, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v0, v0, Lcom/startapp/d2$b$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/startapp/networkTest/results/ConnectivityTestResult;->AmazonId:Ljava/lang/String;

    goto :goto_f

    .line 363
    :cond_12
    iget-boolean v12, v0, Lcom/startapp/d2$b$e;->c:Z

    if-nez v12, :cond_16

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    goto :goto_10

    :cond_13
    const-string v12, "X-AMZ-CF-POP:"

    .line 365
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 366
    iget-object v11, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v0, v0, Lcom/startapp/d2$b$e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0xd

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/s9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/startapp/networkTest/results/ConnectivityTestResult;->AirportCode:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    :cond_14
    :goto_f
    move/from16 v13, v30

    goto/16 :goto_e

    :cond_15
    move/from16 v30, v13

    :cond_16
    :goto_10
    move-wide/from16 v11, v18

    .line 370
    :try_start_22
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iput-wide v11, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->HeaderBytesRead:J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    const/4 v5, -0x1

    if-eq v10, v5, :cond_17

    long-to-int v0, v11

    add-int/2addr v0, v10

    move-object/from16 v31, v6

    int-to-long v5, v0

    move-wide/from16 v18, v11

    move-wide v10, v5

    goto :goto_11

    :cond_17
    move-object/from16 v31, v6

    move-wide/from16 v18, v11

    const-wide v10, 0x7fffffffffffffffL

    .line 379
    :cond_18
    :goto_11
    :try_start_23
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1a

    cmp-long v0, v18, v10

    if-ltz v0, :cond_19

    goto :goto_12

    .line 382
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not read all bytes"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    :cond_1a
    int-to-long v12, v0

    add-long v18, v18, v12

    cmp-long v6, v18, v10

    if-ltz v6, :cond_1b

    goto :goto_12

    :cond_1b
    if-gtz v0, :cond_18

    :goto_12
    move-wide/from16 v2, v18

    if-eqz v30, :cond_1c

    .line 393
    :try_start_24
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->Success:Z

    .line 395
    iget v0, v4, Lcom/startapp/h2;->successfulTests:I

    add-int/2addr v0, v5

    iput v0, v4, Lcom/startapp/h2;->successfulTests:I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    goto :goto_13

    :catchall_c
    move-exception v0

    goto :goto_16

    :cond_1c
    :goto_13
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1d

    .line 400
    :try_start_25
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v8

    iput-wide v4, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationHttpReceive:J

    .line 401
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iput-wide v2, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->BytesRead:J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    .line 413
    :cond_1d
    :try_start_26
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    goto :goto_14

    :catchall_d
    move-exception v0

    move-object v2, v0

    .line 416
    invoke-static {v2}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :goto_14
    move/from16 v0, v17

    const/4 v6, 0x1

    goto/16 :goto_20

    :catchall_e
    move-exception v0

    goto :goto_15

    :catchall_f
    move-exception v0

    move-object/from16 v31, v6

    move-wide v2, v11

    goto :goto_16

    :catchall_10
    move-exception v0

    move-object/from16 v31, v6

    :goto_15
    move-wide/from16 v2, v18

    :goto_16
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1e

    .line 417
    :try_start_27
    iget-object v4, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v8

    iput-wide v5, v4, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationHttpReceive:J

    .line 418
    iget-object v4, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iput-wide v2, v4, Lcom/startapp/networkTest/results/ConnectivityTestResult;->BytesRead:J

    .line 420
    :cond_1e
    throw v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    move-object/from16 v31, v6

    :goto_17
    const/4 v6, 0x1

    goto :goto_18

    :catch_3
    move-exception v0

    move-object/from16 v31, v6

    const/4 v6, 0x0

    :goto_18
    move/from16 v21, v6

    move/from16 v6, v17

    goto :goto_1c

    :catch_4
    move-exception v0

    move-object/from16 v31, v6

    goto :goto_1b

    :catch_5
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v29, v8

    move/from16 v22, v9

    :goto_19
    move-wide/from16 v23, v10

    goto :goto_1a

    :catchall_11
    move-exception v0

    move-object v2, v0

    goto :goto_1e

    :catch_6
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v29, v8

    move/from16 v22, v9

    move-wide/from16 v23, v10

    move/from16 v20, v12

    :goto_1a
    const/16 v21, 0x0

    :goto_1b
    const/4 v6, 0x0

    .line 423
    :goto_1c
    :try_start_28
    iget-object v2, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/startapp/d2;->a(Lcom/startapp/d2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v5, v4, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ErrorReason:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v31

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ErrorReason:Ljava/lang/String;

    .line 426
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    if-eqz v7, :cond_1f

    .line 430
    :try_start_29
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    goto :goto_1d

    :catchall_12
    move-exception v0

    move-object v2, v0

    .line 433
    invoke-static {v2}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1d
    move v0, v6

    move/from16 v6, v21

    goto :goto_20

    :goto_1e
    if-eqz v7, :cond_20

    .line 434
    :try_start_2a
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_13

    goto :goto_1f

    :catchall_13
    move-exception v0

    move-object v3, v0

    .line 437
    invoke-static {v3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 440
    :cond_20
    :goto_1f
    throw v2

    :cond_21
    move-object/from16 v29, v8

    move/from16 v22, v9

    move-wide/from16 v23, v10

    move/from16 v20, v12

    const/16 v21, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_20
    if-eqz v6, :cond_23

    .line 446
    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object v3, v3, Lcom/startapp/networkTest/data/RadioInfo;->ConnectionType:Lcom/startapp/networkTest/enums/ConnectionTypes;

    sget-object v4, Lcom/startapp/networkTest/enums/ConnectionTypes;->e:Lcom/startapp/networkTest/enums/ConnectionTypes;

    if-ne v3, v4, :cond_22

    .line 447
    invoke-static {}, Lcom/startapp/g3;->a()Lcom/startapp/g3;

    move-result-object v3

    iget-object v4, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v4, v4, Lcom/startapp/networkTest/results/ConnectivityTestResult;->WifiInfo:Lcom/startapp/networkTest/data/WifiInfo;

    invoke-virtual {v3, v4}, Lcom/startapp/g3;->a(Lcom/startapp/networkTest/data/WifiInfo;)Lcom/startapp/networkTest/data/IspInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IspInfo:Lcom/startapp/networkTest/data/IspInfo;

    goto :goto_21

    .line 449
    :cond_22
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/y4;->GEOIP_MOBILE_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    iget-object v3, v3, Lcom/startapp/networkTest/data/RadioInfo;->ConnectionType:Lcom/startapp/networkTest/enums/ConnectionTypes;

    sget-object v4, Lcom/startapp/networkTest/enums/ConnectionTypes;->d:Lcom/startapp/networkTest/enums/ConnectionTypes;

    if-ne v3, v4, :cond_23

    .line 450
    invoke-static {}, Lcom/startapp/g3;->a()Lcom/startapp/g3;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/startapp/g3;->a(Lcom/startapp/networkTest/data/WifiInfo;)Lcom/startapp/networkTest/data/IspInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IspInfo:Lcom/startapp/networkTest/data/IspInfo;

    .line 461
    :cond_23
    :goto_21
    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v3, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v3}, Lcom/startapp/d2;->g(Lcom/startapp/d2;)Lcom/startapp/j8;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/j8;->h()Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->RadioInfoOnEnd:Lcom/startapp/networkTest/data/RadioInfo;

    .line 462
    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v14

    iput-wide v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationOverallNoSleep:J

    .line 463
    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v3, v23

    iput-wide v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationOverall:J

    .line 464
    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v3, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v3}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/p2;->d(Landroid/content/Context;)Lcom/startapp/networkTest/enums/IdleStates;

    move-result-object v3

    iput-object v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IdleStateOnEnd:Lcom/startapp/networkTest/enums/IdleStates;

    .line 465
    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v6, v29

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->MultiCdnInfo:Ljava/util/ArrayList;

    .line 466
    iget-object v2, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    move/from16 v3, v22

    int-to-long v3, v3

    move/from16 v5, v20

    int-to-long v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    .line 467
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    mul-long v7, v7, v5

    add-long/2addr v7, v3

    move/from16 v3, v16

    int-to-long v3, v3

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    .line 468
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    mul-long v5, v5, v3

    add-long/2addr v5, v7

    int-to-long v3, v0

    const-wide/high16 v7, 0x4018000000000000L    # 6.0

    .line 469
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    mul-long v7, v7, v3

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerMultiSuccess:J

    .line 471
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v0, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->AirportCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 472
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v2, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;

    invoke-static {v2}, Lcom/startapp/s9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->AirportCode:Ljava/lang/String;

    .line 476
    :cond_24
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    move-object/from16 v7, v26

    .line 477
    invoke-direct {v1, v7}, Lcom/startapp/d2$b;->a(Ljava/util/List;)V

    .line 480
    :cond_25
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->CLEAR_CT_LOCATION_INFO()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 481
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    new-instance v2, Lcom/startapp/networkTest/data/LocationInfo;

    invoke-direct {v2}, Lcom/startapp/networkTest/data/LocationInfo;-><init>()V

    iput-object v2, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    .line 484
    :cond_26
    iget-object v0, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    return-object v0

    :catchall_14
    move-exception v0

    goto :goto_22

    :catchall_15
    move-exception v0

    move-object/from16 v20, v14

    :goto_22
    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    move-object/from16 v18, v4

    goto :goto_23

    :catchall_16
    move-exception v0

    move-object/from16 v20, v14

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    :goto_23
    move-object/from16 v19, v20

    move/from16 v14, v24

    move/from16 v4, v25

    goto :goto_24

    :catchall_17
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v20, v14

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    move-object/from16 v19, v20

    move/from16 v14, v24

    goto :goto_24

    :cond_27
    move/from16 v25, v4

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    const-wide/16 v4, -0x1

    .line 485
    :try_start_2b
    iput-wide v4, v0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationDNS:J

    .line 486
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v4, "DNS Timeout"

    invoke-direct {v0, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_18

    :catchall_18
    move-exception v0

    move-object/from16 v20, v11

    move/from16 v14, v24

    move/from16 v4, v25

    goto/16 :goto_2a

    :catchall_19
    move-exception v0

    move/from16 v25, v4

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    move-object/from16 v20, v11

    move/from16 v14, v24

    goto :goto_2a

    :catchall_1a
    move-exception v0

    move/from16 v25, v4

    move/from16 v24, v14

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    :goto_24
    move-object/from16 v20, v11

    goto :goto_2a

    :catchall_1b
    move-exception v0

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    move-object v9, v5

    goto :goto_27

    :catchall_1c
    move-exception v0

    goto :goto_26

    :catchall_1d
    move-exception v0

    goto :goto_25

    :catchall_1e
    move-exception v0

    move-object/from16 v24, v11

    :goto_25
    move-wide/from16 v27, v14

    :goto_26
    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    :goto_27
    const/4 v14, 0x0

    :goto_28
    move-object/from16 v20, v24

    goto :goto_2a

    :catchall_1f
    move-exception v0

    move-wide/from16 v27, v14

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    goto :goto_29

    :catchall_20
    move-exception v0

    const/16 v21, 0x0

    move-object/from16 v32, v8

    move-object v8, v6

    move-object/from16 v6, v32

    move-wide/from16 v27, v14

    :goto_29
    const/4 v14, 0x0

    .line 519
    :goto_2a
    :try_start_2c
    iget-object v5, v1, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/startapp/d2;->a(Lcom/startapp/d2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 520
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/startapp/d2$b;->a:Lcom/startapp/networkTest/results/ConnectivityTestResult;

    iget-object v1, v15, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ErrorReason:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ErrorReason:Ljava/lang/String;

    .line 522
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_21

    if-eqz v14, :cond_28

    .line 527
    invoke-virtual {v6, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_28
    const/4 v1, 0x1

    add-int/2addr v4, v1

    move-object/from16 v1, p0

    move-object v8, v6

    move-wide/from16 v10, v22

    move-wide/from16 v14, v27

    const/4 v5, 0x1

    goto/16 :goto_2

    :catchall_21
    move-exception v0

    if-eqz v14, :cond_29

    invoke-virtual {v6, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_29
    throw v0

    :cond_2a
    :goto_2b
    move-object v1, v4

    return-object v1
.end method

.method public a(FI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/startapp/networkTest/results/ConnectivityTestResult;)V
    .locals 9

    .line 530
    iget-object v0, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->j(Lcom/startapp/d2;)Lcom/startapp/b5;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapp/b5;->f(J)V

    .line 532
    iget-object v0, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v0}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapp/w7;->onConnectivityTestResult(Lcom/startapp/networkTest/results/ConnectivityTestResult;)V

    :cond_0
    if-nez p1, :cond_2

    .line 538
    iget-object p1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {p1}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {p1}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapp/w7;->a()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 547
    iget-object v1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v1}, Lcom/startapp/d2;->j(Lcom/startapp/d2;)Lcom/startapp/b5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/b5;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    iget-object v1, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 549
    new-instance v0, Lcom/startapp/k0;

    iget-object v1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {v1}, Lcom/startapp/d2;->a(Lcom/startapp/d2;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/startapp/k0;-><init>(Lcom/startapp/e4;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/d2$b;->b:Lcom/startapp/k0;

    .line 550
    iget-object v1, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->CtId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapp/k0;->g(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/startapp/d2$b;->b:Lcom/startapp/k0;

    iget-object v1, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->AirportCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapp/k0;->b(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/startapp/d2$b;->b:Lcom/startapp/k0;

    iget-object v1, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;

    iget-wide v1, v1, Lcom/startapp/networkTest/data/TimeInfo;->TimestampMillis:J

    iget-wide v3, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationDNS:J

    add-long/2addr v1, v3

    iget-wide v3, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationTcpConnect:J

    add-long/2addr v1, v3

    iget-wide v3, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationHttpReceive:J

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/k0;->e(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/startapp/d2$b;->b:Lcom/startapp/k0;

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->LTR_LOCATIONPROVIDER()Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/k0;->a(Lcom/startapp/networkTest/controller/LocationController$ProviderMode;)V

    .line 554
    iget-object v2, p0, Lcom/startapp/d2$b;->b:Lcom/startapp/k0;

    iget-object v3, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;

    const/16 v4, 0xa

    const/16 v5, 0xc8

    const/16 v6, 0x7530

    const/16 v7, 0x38

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/startapp/k0;->a(Ljava/lang/String;IIIIZ)V

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    .line 560
    iget-object p1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {p1}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 561
    iget-object p1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {p1}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapp/w7;->a()V

    :cond_4
    return-void
.end method

.method public a(Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;J)V
    .locals 0

    .line 562
    sget-object p2, Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;->r:Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;->t:Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;

    if-ne p1, p2, :cond_1

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/startapp/d2$b;->b:Lcom/startapp/k0;

    invoke-virtual {p1}, Lcom/startapp/k0;->c()V

    .line 565
    iget-object p1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {p1}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 566
    iget-object p1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {p1}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object p1

    iget-object p2, p0, Lcom/startapp/d2$b;->b:Lcom/startapp/k0;

    invoke-virtual {p2}, Lcom/startapp/k0;->a()Lcom/startapp/networkTest/results/P3TestResult;

    move-result-object p2

    check-cast p2, Lcom/startapp/networkTest/results/LatencyResult;

    invoke-interface {p1, p2}, Lcom/startapp/w7;->onLatencyTestResult(Lcom/startapp/networkTest/results/LatencyResult;)V

    .line 567
    iget-object p1, p0, Lcom/startapp/d2$b;->c:Lcom/startapp/d2;

    invoke-static {p1}, Lcom/startapp/d2;->e(Lcom/startapp/d2;)Lcom/startapp/w7;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapp/w7;->a()V

    :cond_1
    return-void
.end method

.method public b(FI)V
    .locals 0

    return-void
.end method

.method public c(FI)V
    .locals 0

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/d2$b;->a([Ljava/lang/Void;)Lcom/startapp/networkTest/results/ConnectivityTestResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;

    invoke-virtual {p0, p1}, Lcom/startapp/d2$b;->a(Lcom/startapp/networkTest/results/ConnectivityTestResult;)V

    return-void
.end method
