.class Lcom/facebook/g;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/ai;


# instance fields
.field final synthetic a:Lcom/facebook/i;

.field final synthetic b:Lcom/facebook/d;


# direct methods
.method constructor <init>(Lcom/facebook/d;Lcom/facebook/i;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/facebook/g;->b:Lcom/facebook/d;

    iput-object p2, p0, Lcom/facebook/g;->a:Lcom/facebook/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/as;)V
    .locals 3

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/facebook/as;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/facebook/g;->a:Lcom/facebook/i;

    const-string/jumbo v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/i;->a:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/facebook/g;->a:Lcom/facebook/i;

    const-string/jumbo v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/facebook/i;->b:I

    goto :goto_0
.end method
