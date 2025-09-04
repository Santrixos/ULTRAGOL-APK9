.class Lcom/app/thestream/utils/GeminiLigaMXService$1;
.super Ljava/lang/Object;
.source "GeminiLigaMXService.java"

# interfaces
.implements Ljava/lang/Runnable;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/utils/GeminiLigaMXService;->getEquipoInfo(Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/utils/GeminiLigaMXService;

.field final synthetic val$callback:Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

.field final synthetic val$prompt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/app/thestream/utils/GeminiLigaMXService;Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/app/thestream/utils/GeminiLigaMXService;

    .prologue
    iput-object p1, p0, Lcom/app/thestream/utils/GeminiLigaMXService$1;->this$0:Lcom/app/thestream/utils/GeminiLigaMXService;

    iput-object p2, p0, Lcom/app/thestream/utils/GeminiLigaMXService$1;->val$prompt:Ljava/lang/String;

    iput-object p3, p0, Lcom/app/thestream/utils/GeminiLigaMXService$1;->val$callback:Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    iget-object v0, p0, Lcom/app/thestream/utils/GeminiLigaMXService$1;->this$0:Lcom/app/thestream/utils/GeminiLigaMXService;

    iget-object v1, p0, Lcom/app/thestream/utils/GeminiLigaMXService$1;->val$prompt:Ljava/lang/String;

    iget-object v2, p0, Lcom/app/thestream/utils/GeminiLigaMXService$1;->val$callback:Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;

    invoke-static {v0, v1, v2}, Lcom/app/thestream/utils/GeminiLigaMXService;->access$000(Lcom/app/thestream/utils/GeminiLigaMXService;Ljava/lang/String;Lcom/app/thestream/utils/GeminiLigaMXService$GeminiCallback;)V

    return-void
.end method