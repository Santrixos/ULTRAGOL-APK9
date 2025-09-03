.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->destroyBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

.field final synthetic val$adView:Lcom/applovin/adview/AppLovinAdView;

.field final synthetic val$zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/adview/AppLovinAdView;Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    iput-object p3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$zoneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSize:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
