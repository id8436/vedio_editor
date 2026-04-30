.class abstract Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;
.super Ljava/lang/Object;
.source "AdobeAuthSignInActivity.java"


# instance fields
.field private _hasQueuedResult:Z

.field private _queuedResultData:Ljava/lang/Object;

.field protected mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->_hasQueuedResult:Z

    .line 302
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->_hasQueuedResult:Z

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->getSocialIngestIDPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSocialIngestIDPKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 390
    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    .line 384
    :sswitch_0
    const-string/jumbo v1, "facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "google"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 386
    :pswitch_0
    const-string/jumbo v0, "facebook"

    goto :goto_1

    .line 388
    :pswitch_1
    const-string/jumbo v0, "google"

    goto :goto_1

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        -0x49eca1c7 -> :sswitch_1
        0x1da19ac6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected createImsClientCommon()Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;)V

    .line 376
    return-object v0
.end method

.method public abstract handleAuthCodeReceived(Ljava/lang/String;)V
.end method

.method public abstract handleDeviceTokenReceived(Ljava/lang/String;)V
.end method

.method protected handleImsAccountResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method protected handleResultFromIMS(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->sentResultViaActivity(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 346
    return-void
.end method

.method public hasAnyQueuedResult()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->_hasQueuedResult:Z

    return v0
.end method

.method protected abstract performProcessQueuedResult(Ljava/lang/Object;)V
.end method

.method public processQueuedResult()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->_queuedResultData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->performProcessQueuedResult(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->resetQueuedData()V

    goto :goto_0
.end method

.method protected resetQueuedData()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->_hasQueuedResult:Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->_queuedResultData:Ljava/lang/Object;

    .line 312
    return-void
.end method

.method protected sentResultViaActivity(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    if-nez v0, :cond_0

    .line 332
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->sendResultBack(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->handleResult(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method

.method public setAuthSingInActivity(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    .line 307
    return-void
.end method

.method protected setQueuedResultData(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->_hasQueuedResult:Z

    .line 316
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->_queuedResultData:Ljava/lang/Object;

    .line 317
    return-void
.end method
