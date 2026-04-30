.class Lcom/google/gdata/client/authn/oauth/OAuthHelper$QueryKeyValuePair;
.super Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;
.source "OAuthHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 153
    const-string/jumbo v0, "="

    const-string/jumbo v1, ""

    const-string/jumbo v2, "&"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/client/authn/oauth/OAuthHelper$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method
