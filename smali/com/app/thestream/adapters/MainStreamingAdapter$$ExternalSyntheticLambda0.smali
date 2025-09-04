.class synthetic Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/adapters/MainStreamingAdapter;

.field public final synthetic f$1:Lcom/app/thestream/models/StreamingLink;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/adapters/MainStreamingAdapter;Lcom/app/thestream/models/StreamingLink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/adapters/MainStreamingAdapter;

    iput-object p2, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/app/thestream/models/StreamingLink;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/adapters/MainStreamingAdapter;

    iget-object v1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/app/thestream/models/StreamingLink;

    invoke-static {v0, v1, p1}, Lcom/app/thestream/adapters/MainStreamingAdapter;->lambda$onBindViewHolder$0(Lcom/app/thestream/adapters/MainStreamingAdapter;Lcom/app/thestream/models/StreamingLink;Landroid/view/View;)V

    return-void
.end method