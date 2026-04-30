.class public Lcom/adobe/premiereclip/source/CreativeCloudSource;
.super Ljava/lang/Object;
.source "CreativeCloudSource.java"

# interfaces
.implements Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;


# static fields
.field public static final CC_ASSET_BROWSER_FOR_BUG_INTENT_ID:I = 0x2236

.field public static final CC_ASSET_BROWSER_FOR_BUMPER_INTENT_ID:I = 0x4d1

.field public static final CC_ASSET_BROWSER_INTENT_ID:I = 0x2329

.field public static final CC_ASSET_LIGHTROOM_INTENT_ID:I = 0x232a

.field public static final CC_LOGIN_INTENT_ID:I = 0x3e8

.field public static final CC_SIGNUP_INTENT_ID:I = 0x3e9

.field public static final CREATIVE_SDK_CLIP_CLIENT_ID:Ljava/lang/String; = "ClipAndroid1"

.field public static final CREATIVE_SDK_CLIP_CLIENT_SECRET:Ljava/lang/String; = "17544f50-0868-421a-81e3-89333608effb"

.field private static instance:Lcom/adobe/premiereclip/source/CreativeCloudSource;


# instance fields
.field private mAssetBrowserCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;

.field private mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

.field private mInitialized:Z

.field private mLoginCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

.field private mLogoutCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

.field private mStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-direct {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->instance:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mInitialized:Z

    .line 93
    iput-object v2, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    .line 96
    iput-object v2, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLoginCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    .line 97
    iput-object v2, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    .line 98
    iput-object v2, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAssetBrowserCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;

    .line 101
    new-instance v0, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource$1;-><init>(Lcom/adobe/premiereclip/source/CreativeCloudSource;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    .line 131
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v1, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onCreate(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLoginCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/source/CreativeCloudSource;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLoginCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/source/CreativeCloudSource;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/source/CreativeCloudSource;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;)Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    return-object p1
.end method

.method public static getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->instance:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/adobe/premiereclip/source/CreativeCloudSource;

    invoke-direct {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->instance:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    .line 145
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->instance:Lcom/adobe/premiereclip/source/CreativeCloudSource;

    return-object v0
.end method

.method private initializationCheck()Z
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mInitialized:Z

    if-nez v0, :cond_0

    .line 169
    const-string/jumbo v0, "App"

    const-string/jumbo v1, "CCSource is not initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mInitialized:Z

    return v0
.end method

.method private openCreativeCloudImagePicker(Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;I)V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->initializationCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->popupFileBrowser(Landroid/app/Activity;ILcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final cancelCCDownloads(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->cancelOngoingDownloads(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public final didFinishDownloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3

    .prologue
    .line 355
    if-eqz p4, :cond_0

    .line 356
    const-string/jumbo v0, "CCSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in picking image from AssetBrowser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAssetBrowserCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;->onDownloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 363
    return-void

    .line 358
    :cond_0
    const-string/jumbo v0, "CCSource"

    const-string/jumbo v1, "didpickimage hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public didRejectAssetDownload()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAssetBrowserCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;

    invoke-interface {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;->onRejectDownload()V

    .line 378
    return-void
.end method

.method public didStartDownloadAsset()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAssetBrowserCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;

    invoke-interface {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;->onStartDownload()V

    .line 368
    return-void
.end method

.method public didUpdateProgressOfAssetDownload(DLjava/lang/String;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAssetBrowserCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;->onUpdateDownloadProgress(DLjava/lang/String;)V

    .line 373
    return-void
.end method

.method public getAdobeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 382
    const-string/jumbo v0, ""

    .line 384
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final handleCreativeCloudImagePickerResponse(Ljava/lang/String;IILandroid/content/Intent;Landroid/content/Context;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;)V
    .locals 3

    .prologue
    .line 241
    if-eqz p4, :cond_0

    .line 242
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;

    invoke-direct {v0, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;-><init>(Landroid/content/Intent;)V

    .line 243
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;->getSelectionAssetArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    iput-object p6, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAssetBrowserCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didSelectCreativeCloudAssetInMediaPickerWithAssetCount(I)V

    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 250
    invoke-static {}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    move-result-object v2

    invoke-virtual {v2, p1, p5, v0, p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->downloadCCAsset(Ljava/lang/String;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;)V

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method public final handleCreativeCloudLightroomResponse(Ljava/lang/String;IILjava/util/ArrayList;Landroid/content/Context;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 269
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    iput-object p6, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAssetBrowserCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudAssetBrowserCallback;

    .line 271
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 272
    new-instance v2, Lcom/adobe/premiereclip/source/CreativeCloudSource$1AdobePhotoSelection;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource$1AdobePhotoSelection;-><init>(Lcom/adobe/premiereclip/source/CreativeCloudSource;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 273
    invoke-static {}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1, p5, v2, p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->downloadCCAsset(Ljava/lang/String;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;)V

    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method

.method public final handleLoginActivityResponse(IILandroid/content/Intent;Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;)V
    .locals 1

    .prologue
    .line 332
    iput-object p4, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLoginCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLoginCallback;

    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 334
    return-void
.end method

.method public final handleOnPause()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onPause()V

    .line 161
    return-void
.end method

.method public final handleOnResume()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onResume()V

    .line 165
    return-void
.end method

.method public final initializeIfNotInitialized(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mInitialized:Z

    if-nez v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->initializeCSDKFoundation(Landroid/content/Context;)V

    .line 151
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    .line 152
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->setAuthenticationEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mInitialized:Z

    .line 157
    :cond_0
    return-void
.end method

.method public final isCCDownloadOngoing(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->isDownloadPending(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isLoggedIn()Z
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->initializationCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->isAuthenticated()Z

    move-result v0

    goto :goto_0
.end method

.method public final login(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->initializationCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;-><init>()V

    .line 292
    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withActivity(Landroid/app/Activity;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 293
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withRequestCode(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->build()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->login(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    goto :goto_0
.end method

.method public final logout(Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->initializationCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    .line 302
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->logout()V

    .line 305
    invoke-static {}, Lcom/adobe/sync/s3utils/S3TransferManager;->getInstance()Lcom/adobe/sync/s3utils/S3TransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/sync/s3utils/S3TransferManager;->cancelTransfers()V

    .line 306
    iget-object v0, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;->didLogout(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 307
    iput-object v1, p0, Lcom/adobe/premiereclip/source/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/premiereclip/source/CreativeCloudSource$ICreativeCloudLogoutCallback;

    .line 308
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didSignOut()V

    goto :goto_0
.end method

.method public final openCreativeCloudImagePicker(Landroid/app/Activity;Ljava/util/EnumSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;-><init>()V

    .line 191
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->ENABLE_MULTI_SELECT:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->SHOW_MULTI_SELECT_ON_POPUP:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->options:Ljava/util/EnumSet;

    .line 193
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_MP4:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_M4V:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_QUICKTIME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    .line 194
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;->ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    .line 193
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->createFromMimeTypes(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->mimeTypeFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    .line 201
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    invoke-static {p2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->createFromDataSources(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->dataSourceFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    .line 204
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 206
    const/16 v1, 0x2329

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;I)V

    .line 207
    return-void
.end method

.method public final openCreativeCloudImagePickerForBug(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;-><init>()V

    .line 224
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 225
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;->ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    .line 224
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->createFromMimeTypes(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->mimeTypeFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    .line 227
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 228
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    .line 227
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->createFromDataSources(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->dataSourceFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    .line 230
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 232
    const/16 v1, 0x2236

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;I)V

    .line 233
    return-void
.end method

.method public final openCreativeCloudPickerForBumper(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;-><init>()V

    .line 211
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_MP4:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_QUICKTIME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 212
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;->ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    .line 211
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->createFromMimeTypes(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->mimeTypeFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    .line 214
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 215
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    .line 214
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->createFromDataSources(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->dataSourceFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    .line 217
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 219
    const/16 v1, 0x4d1

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;I)V

    .line 220
    return-void
.end method

.method public final signup(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->initializationCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;-><init>()V

    .line 325
    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withActivity(Landroid/app/Activity;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v1

    const/16 v2, 0x3e9

    .line 326
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withRequestCode(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->build()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->promptForSignUp(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    goto :goto_0
.end method
