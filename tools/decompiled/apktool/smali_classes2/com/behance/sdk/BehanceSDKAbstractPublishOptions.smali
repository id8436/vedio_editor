.class public abstract Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;
.super Ljava/lang/Object;
.source "BehanceSDKAbstractPublishOptions.java"


# instance fields
.field private facebookClientId:Ljava/lang/String;

.field private facebookShareEnabled:Z

.field private notificationHandlerActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

.field private twitterConsumerKey:Ljava/lang/String;

.field private twitterConsumerSecretKey:Ljava/lang/String;

.field private twitterShareEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->facebookShareEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->twitterShareEnabled:Z

    return-void
.end method


# virtual methods
.method public getFacebookClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->facebookClientId:Ljava/lang/String;

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
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->notificationHandlerActivityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    return-object v0
.end method

.method public getTwitterConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->twitterConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterConsumerSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->twitterConsumerSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public isFacebookShareEnabled()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->facebookShareEnabled:Z

    return v0
.end method

.method public isTwitterShareEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->twitterShareEnabled:Z

    return v0
.end method

.method public setFacebookClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->facebookClientId:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setFacebookShareEnabled(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->facebookShareEnabled:Z

    .line 73
    return-void
.end method

.method public setNotificationHandlerActivityClass(Ljava/lang/Class;)V
    .locals 0
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
    .line 54
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->notificationHandlerActivityClass:Ljava/lang/Class;

    .line 55
    return-void
.end method

.method public setPublishListener(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    .line 162
    return-void
.end method

.method public setTwitterConsumerKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->twitterConsumerKey:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTwitterConsumerSecretKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->twitterConsumerSecretKey:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setTwitterShareEnabled(Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->twitterShareEnabled:Z

    .line 91
    return-void
.end method
