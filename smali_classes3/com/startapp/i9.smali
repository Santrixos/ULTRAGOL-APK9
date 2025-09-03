.class public Lcom/startapp/i9;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/j9;


# direct methods
.method public constructor <init>(Lcom/startapp/j9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/i9;->a:Lcom/startapp/j9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/i9;->a:Lcom/startapp/j9;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/startapp/j9;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
