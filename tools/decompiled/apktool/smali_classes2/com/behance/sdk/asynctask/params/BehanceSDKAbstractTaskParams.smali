.class public Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.super Ljava/lang/Object;
.source "BehanceSDKAbstractTaskParams.java"


# instance fields
.field private clientID:Ljava/lang/String;

.field private userVerified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;->userVerified:Z

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAccessToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserVerified()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;->userVerified:Z

    return v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;->clientID:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUserVerified(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;->userVerified:Z

    .line 58
    return-void
.end method
