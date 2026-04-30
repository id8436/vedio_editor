.class public Lcom/behance/sdk/OAuth/TwitterClient;
.super Ljava/lang/Object;
.source "TwitterClient.java"


# static fields
.field public static final TWITTER_ACCESS_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field public static final TWITTER_AUTHORIZE_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field public static final TWITTER_OAUTH_CALLBACK_URI:Ljava/lang/String; = "com.behance.behance://oauth.callback"

.field public static final TWITTER_REQUEST_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field private static instance:Lcom/behance/sdk/OAuth/TwitterClient;


# instance fields
.field private mConsumer:Loauth/signpost/OAuthConsumer;

.field private mProvider:Loauth/signpost/OAuthProvider;

.field private oAuthURL:Ljava/lang/String;

.field private oAuthVerifier:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/OAuth/TwitterClient;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/OAuth/TwitterClient;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/behance/sdk/OAuth/TwitterClient;->instance:Lcom/behance/sdk/OAuth/TwitterClient;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/behance/sdk/OAuth/TwitterClient;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/OAuth/TwitterClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/behance/sdk/OAuth/TwitterClient;->instance:Lcom/behance/sdk/OAuth/TwitterClient;

    .line 62
    :cond_0
    sget-object v0, Lcom/behance/sdk/OAuth/TwitterClient;->instance:Lcom/behance/sdk/OAuth/TwitterClient;

    return-object v0
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Loauth/signpost/basic/DefaultOAuthProvider;

    const-string/jumbo v1, "https://api.twitter.com/oauth/request_token"

    const-string/jumbo v2, "https://api.twitter.com/oauth/access_token"

    const-string/jumbo v3, "https://api.twitter.com/oauth/authorize"

    invoke-direct {v0, v1, v2, v3}, Loauth/signpost/basic/DefaultOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/behance/sdk/OAuth/TwitterClient;->mProvider:Loauth/signpost/OAuthProvider;

    .line 71
    new-instance v0, Loauth/signpost/basic/DefaultOAuthConsumer;

    invoke-direct {v0, p1, p2}, Loauth/signpost/basic/DefaultOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/behance/sdk/OAuth/TwitterClient;->mConsumer:Loauth/signpost/OAuthConsumer;

    .line 72
    return-void
.end method


# virtual methods
.method public getOAuthConsumer()Loauth/signpost/OAuthConsumer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/behance/sdk/OAuth/TwitterClient;->mConsumer:Loauth/signpost/OAuthConsumer;

    return-object v0
.end method

.method public getOAuthProvider()Loauth/signpost/OAuthProvider;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/OAuth/TwitterClient;->mProvider:Loauth/signpost/OAuthProvider;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/OAuth/TwitterClient;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getoAuthURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/OAuth/TwitterClient;->oAuthURL:Ljava/lang/String;

    return-object v0
.end method

.method public getoAuthVerifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/behance/sdk/OAuth/TwitterClient;->oAuthVerifier:Ljava/lang/String;

    return-object v0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/behance/sdk/OAuth/TwitterClient;->userName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setoAuthURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/OAuth/TwitterClient;->oAuthURL:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setoAuthVerifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/behance/sdk/OAuth/TwitterClient;->oAuthVerifier:Ljava/lang/String;

    .line 48
    return-void
.end method
