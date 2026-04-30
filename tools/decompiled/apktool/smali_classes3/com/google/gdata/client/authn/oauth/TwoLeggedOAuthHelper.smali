.class public Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;
.super Ljava/lang/Object;
.source "TwoLeggedOAuthHelper.java"


# instance fields
.field private final parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

.field private final signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/authn/oauth/OAuthSigner;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    .line 38
    iput-object p2, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    .line 39
    return-void
.end method


# virtual methods
.method addCommonRequestParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthSignatureMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    invoke-interface {v1}, Lcom/google/gdata/client/authn/oauth/OAuthSigner;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthSignatureMethod(Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-static {}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthTimestamp(Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthNonce()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-static {}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthNonce(Ljava/lang/String;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getBaseParameters()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->getSignatureBaseString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    iget-object v2, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    iget-object v3, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-interface {v2, v0, v3}, Lcom/google/gdata/client/authn/oauth/OAuthSigner;->getSignature(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->setOAuthSignature(Ljava/lang/String;)V

    .line 83
    :cond_3
    return-void
.end method

.method addParametersAndRetrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->addCommonRequestParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v2, Lcom/google/gdata/client/authn/oauth/OAuthHelper$HeaderKeyValuePair;

    invoke-direct {v2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$HeaderKeyValuePair;-><init>()V

    .line 125
    const-string/jumbo v0, "realm"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "oauth_signature"

    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getBaseParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->reset()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OAuth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->validateInputParameters()V

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->addParametersAndRetrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validateInputParameters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthConsumerKeyExists()V

    .line 43
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->signer:Lcom/google/gdata/client/authn/oauth/OAuthSigner;

    instance-of v0, v0, Lcom/google/gdata/client/authn/oauth/OAuthHmacSha1Signer;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/TwoLeggedOAuthHelper;->parameters:Lcom/google/gdata/client/authn/oauth/OAuthParameters;

    invoke-virtual {v0}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->assertOAuthConsumerSecretExists()V

    .line 46
    :cond_0
    return-void
.end method
