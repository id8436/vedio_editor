.class public Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;
.super Ljava/lang/Object;
.source "BehanceSDKRetrieveAccessTokenFromTwitterTaskResult.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private accessTokenSecret:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private exceptionOccurred:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->accessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public isExceptionOccurred()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->exceptionOccurred:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->accessToken:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setAccessTokenSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->accessTokenSecret:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->exception:Ljava/lang/Exception;

    .line 24
    return-void
.end method

.method public setExceptionOccurred(Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->exceptionOccurred:Z

    .line 16
    return-void
.end method
