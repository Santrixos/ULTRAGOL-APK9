.class public final synthetic Lcom/app/thestream/activities/ActivityWebView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/ActivityWebView;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/ActivityWebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/activities/ActivityWebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {v0}, Lcom/app/thestream/activities/ActivityWebView;->loadData()V

    return-void
.end method
