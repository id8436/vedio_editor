.class public Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;
.super Ljava/util/HashMap;
.source "OAuthProxyResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "x_oauth_approval_url"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string/jumbo v2, "x_oauth_error"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "x_oauth_error_text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "x_oauth_state"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 49
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public getApprovalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "x_oauth_approval_url"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "x_oauth_error"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "x_oauth_error_text"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "x_oauth_state"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setApprovalUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "x_oauth_approval_url"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "x_oauth_error"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "x_oauth_error_text"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "x_oauth_state"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/authn/oauthproxy/OAuthProxyResponse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method
