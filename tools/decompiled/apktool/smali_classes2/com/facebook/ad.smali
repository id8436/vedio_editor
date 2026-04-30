.class final Lcom/facebook/ad;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/ai;


# instance fields
.field final synthetic a:Lcom/facebook/aj;


# direct methods
.method constructor <init>(Lcom/facebook/aj;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/facebook/ad;->a:Lcom/facebook/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/as;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/ad;->a:Lcom/facebook/aj;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/facebook/ad;->a:Lcom/facebook/aj;

    invoke-virtual {p1}, Lcom/facebook/as;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/aj;->onCompleted(Lorg/json/JSONObject;Lcom/facebook/as;)V

    .line 306
    :cond_0
    return-void
.end method
