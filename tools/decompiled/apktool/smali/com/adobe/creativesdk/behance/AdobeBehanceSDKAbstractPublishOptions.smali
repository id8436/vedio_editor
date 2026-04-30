.class public Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;
.super Ljava/lang/Object;
.source "AdobeBehanceSDKAbstractPublishOptions.java"


# instance fields
.field private mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    .line 27
    return-void
.end method


# virtual methods
.method protected getBehanceSDKPublishOptions()Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    return-object v0
.end method

.method public getFacebookClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationHandlerActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getNotificationHandlerActivityClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPublishListener()Lcom/adobe/creativesdk/behance/IAdobeBehanceProjectPublishListener;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/behance/IAdobeBehanceProjectPublishListener;

    return-object v0
.end method

.method public getTwitterConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTwitterConsumerSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFacebookEnabled()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->isFacebookShareEnabled()Z

    move-result v0

    return v0
.end method

.method public isTwitterShareEnabled()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->isTwitterShareEnabled()Z

    move-result v0

    return v0
.end method

.method public setFacebookClientID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->setFacebookClientId(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setFacebookShareEnabled(Z)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->setFacebookShareEnabled(Z)V

    .line 63
    return-void
.end method

.method public setNotificationHandlerActivityClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->setNotificationHandlerActivityClass(Ljava/lang/Class;)V

    .line 83
    return-void
.end method

.method public setPublishListener(Lcom/adobe/creativesdk/behance/IAdobeBehanceProjectPublishListener;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->setPublishListener(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V

    .line 159
    return-void
.end method

.method public setTwitterConsumerKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->setTwitterConsumerKey(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setTwitterConsumerSecretKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->setTwitterConsumerSecretKey(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setTwitterShareEnabled(Z)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;->mBehanceSDKAbstractPublishOptions:Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->setTwitterShareEnabled(Z)V

    .line 72
    return-void
.end method
