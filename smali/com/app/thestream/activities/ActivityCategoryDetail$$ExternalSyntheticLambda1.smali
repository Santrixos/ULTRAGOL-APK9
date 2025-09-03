.class public final synthetic Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/ActivityCategoryDetail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;

    return-void
.end method


# virtual methods
.method public final onLoadMore(I)V
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/activities/ActivityCategoryDetail;

    invoke-virtual {v0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->setLoadMore(I)V

    return-void
.end method
