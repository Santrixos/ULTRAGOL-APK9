.class public Lcom/startapp/sdk/ads/list3d/List3DActivity$d;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/ads/list3d/List3DActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/sdk/ads/list3d/List3DActivity;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/list3d/List3DActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/list3d/List3DActivity$d;->a:Lcom/startapp/sdk/ads/list3d/List3DActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/startapp/sdk/ads/list3d/List3DActivity$d;->a:Lcom/startapp/sdk/ads/list3d/List3DActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
