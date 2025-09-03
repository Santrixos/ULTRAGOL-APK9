.class public final synthetic Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/adapters/AdapterCategory;

.field public final synthetic f$1:Lcom/app/thestream/models/Category;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/adapters/AdapterCategory;Lcom/app/thestream/models/Category;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/adapters/AdapterCategory;

    iput-object p2, p0, Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;->f$1:Lcom/app/thestream/models/Category;

    iput p3, p0, Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;->f$0:Lcom/app/thestream/adapters/AdapterCategory;

    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;->f$1:Lcom/app/thestream/models/Category;

    iget v2, p0, Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/app/thestream/adapters/AdapterCategory;->lambda$onBindViewHolder$0$com-app-thestream-adapters-AdapterCategory(Lcom/app/thestream/models/Category;ILandroid/view/View;)V

    return-void
.end method
