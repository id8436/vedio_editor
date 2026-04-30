.class public Lcom/adobe/premiereclip/metrics/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"

# interfaces
.implements Lcom/adobe/mobile/Analytics$TimedActionBlock;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/mobile/Analytics$TimedActionBlock",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final REMOTE_SOURCE_DROPBOX:Ljava/lang/String; = "Dropbox"

.field public static final REMOTE_SOURCE_GOOGLE_DRIVE:Ljava/lang/String; = "GoogleDrive"

.field public static final REMOTE_SOURCE_GOOGLE_PHOTOS:Ljava/lang/String; = "GooglePhotos"

.field private static instance:Lcom/adobe/premiereclip/metrics/Metrics;


# instance fields
.field private _analyticsOptIn:Ljava/lang/Boolean;

.field private _buildVersion:Ljava/lang/String;

.field private _communityVideosCount:I

.field private _currentConnectionState:Ljava/lang/String;

.field private _currentExportPrivacy:Ljava/lang/String;

.field private _currentProjectExportTitle:Ljava/lang/String;

.field private _currentProjectID:Ljava/lang/String;

.field private _currentProjectMediaSource:Ljava/lang/String;

.field private _currentProjectOriginalProjectID:Ljava/lang/String;

.field private _currentProjectOriginalTitle:Ljava/lang/String;

.field private _currentProjectTitle:Ljava/lang/String;

.field private _currentProjectType:I

.field private _exportColorLook:Ljava/lang/String;

.field private _fromTemplate:Ljava/lang/Boolean;

.field private _guidesCount:I

.field private _isUserLoggedIn:Ljava/lang/Boolean;

.field private _myProjectsCount:I

.field private _myPublishedVideosCount:I

.field private _numAudioClips:I

.field private _numExportStillImageClips:I

.field private _numExportStorycardClips:I

.field private _numExportTitleClips:I

.field private _numExportVideoClips:I

.field private _userIdentity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/adobe/premiereclip/metrics/Metrics;

    invoke-direct {v0}, Lcom/adobe/premiereclip/metrics/Metrics;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/metrics/Metrics;->instance:Lcom/adobe/premiereclip/metrics/Metrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_analyticsOptIn:Ljava/lang/Boolean;

    .line 38
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentConnectionState:Ljava/lang/String;

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_isUserLoggedIn:Ljava/lang/Boolean;

    .line 41
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_userIdentity:Ljava/lang/String;

    .line 43
    iput v3, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    .line 44
    iput v3, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myPublishedVideosCount:I

    .line 45
    iput v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_communityVideosCount:I

    .line 46
    iput v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_guidesCount:I

    .line 48
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectTitle:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectID:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectExportTitle:Ljava/lang/String;

    .line 51
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_fromTemplate:Ljava/lang/Boolean;

    .line 52
    iput v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectType:I

    .line 53
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectMediaSource:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectOriginalTitle:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectOriginalProjectID:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportVideoClips:I

    .line 58
    iput v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportStillImageClips:I

    .line 59
    iput v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportTitleClips:I

    .line 60
    iput v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportStorycardClips:I

    .line 61
    iput v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numAudioClips:I

    .line 62
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_exportColorLook:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentExportPrivacy:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static addStorycardClipTapped(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    invoke-static {p0, p1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->addStorycardClipTapped(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public static addStorycardDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 463
    invoke-static {p0, p1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->addStorycardDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public static cameraImportTapped(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    invoke-static {p0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->cameraImportTapped(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method private clearUserSpecificInformation()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 266
    iput v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    .line 267
    iput v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myPublishedVideosCount:I

    .line 268
    return-void
.end method

.method public static clipStoryCardMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 546
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->clipStoryCardMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public static clipTitleDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 540
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->clipTitleDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public static clipTitleMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 534
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->clipTitleMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public static clipVoiceoverDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 558
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->clipVoiceoverDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public static clipVoiceoverMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 552
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->clipVoiceoverMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public static creativeCloudFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 499
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->creativeCloudFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public static creativeCloudImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 493
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->creativeCloudImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public static dropboxFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 475
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->dropboxFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public static dropboxImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 469
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->dropboxImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public static goProThumbsLoaded(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 512
    invoke-static {p0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->goProThumbsLoaded(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public static goProTransferAttempted(Ljava/lang/String;I[Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 520
    aget-object v1, p2, v0

    invoke-static {p0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->goProTransferAttempted(Ljava/lang/String;Ljava/util/Map;)V

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method public static goProTransferSucceeded(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {p0, p1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->goProTransferSucceeded(Ljava/lang/String;Ljava/util/Map;)V

    .line 528
    return-void
.end method

.method public static googleDriveFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 487
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->googleDriveFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public static googleDriveImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 481
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->googleDriveImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "Metrics"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method static logError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "Metrics"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method

.method private setActionName(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v0, "adb.event.eventInfo.eventName"

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method private setAppSection(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    const-string/jumbo v0, "adb.page.pageInfo.category.primaryCategory"

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    return-void
.end method

.method private setAuthStep(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    const-string/jumbo v0, "Auth Steps"

    const-string/jumbo v1, "adb.event.eventInfo.eventName"

    invoke-direct {p0, v0, v1, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 217
    const-string/jumbo v0, "adb.event.eventInfo.eventAction"

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    return-void
.end method

.method private setCurrentProjectInfoInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectTitle:Ljava/lang/String;

    const-string/jumbo v1, "hs.project.attributes.title"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 274
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectID:Ljava/lang/String;

    const-string/jumbo v1, "hs.project.attributes.projectId"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 275
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectExportTitle:Ljava/lang/String;

    const-string/jumbo v1, "hs.project.attributes.exportTitle"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_fromTemplate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "hs.project.attributes.isFromTemplate"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    iget v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "hs.project.attributes.projectType"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 278
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectMediaSource:Ljava/lang/String;

    const-string/jumbo v1, "hs.project.attributes.projectMediaSource"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 279
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectOriginalTitle:Ljava/lang/String;

    const-string/jumbo v1, "hs.project.attributes.originalProject.title"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 280
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectOriginalProjectID:Ljava/lang/String;

    const-string/jumbo v1, "hs.project.attributes.originalProject.projectId"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 281
    iget v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "hs.user.projects.count"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 282
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCurrentProjectSignatureInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    iget v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportVideoClips:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "hs.project.sequence.videos"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 288
    iget v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportStillImageClips:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "hs.project.sequence.stillImages"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    iget v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportTitleClips:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "hs.project.sequence.titles"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    iget v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportStorycardClips:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "hs.project.sequence.storycards"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 291
    iget v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numAudioClips:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "hs.project.sequence.audio"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 292
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_exportColorLook:Ljava/lang/String;

    const-string/jumbo v1, "hs.project.sequence.colorLook"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 293
    return-void
.end method

.method private setError(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "ErrorCode"

    invoke-direct {p0, v0, v1, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    return-void
.end method

.method private setGeneralAlertMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    const-string/jumbo v0, "General Alert"

    const-string/jumbo v1, "adb.event.eventInfo.eventName"

    invoke-direct {p0, v0, v1, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    const-string/jumbo v0, "adb.event.eventInfo.eventAction"

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    return-void
.end method

.method private setGeneralErrorMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    const-string/jumbo v0, "General Error"

    const-string/jumbo v1, "adb.event.eventInfo.eventName"

    invoke-direct {p0, v0, v1, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    const-string/jumbo v0, "adb.event.eventInfo.eventAction"

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method private setLoginStateInDictionary(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_isUserLoggedIn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Logged In"

    .line 185
    :goto_0
    const-string/jumbo v1, "%s : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentConnectionState:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string/jumbo v1, "adb.user.profile.attributes.authStatus"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    return-void

    .line 184
    :cond_0
    const-string/jumbo v0, "Logged Out"

    goto :goto_0
.end method

.method private setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    return-void
.end method

.method private setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p3, :cond_0

    .line 116
    if-eqz p1, :cond_1

    .line 118
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setProductCategoryInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    const-string/jumbo v0, "mobile"

    const-string/jumbo v1, "adb.page.pageInfo.productCategory"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    return-void
.end method

.method private setProductClientIDInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    const-string/jumbo v0, "PremiereClip_app"

    const-string/jumbo v1, "adb.user.profile.attributes.clientId"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 255
    return-void
.end method

.method private setProductLanguageInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    const-string/jumbo v0, "en-us"

    const-string/jumbo v1, "adb.page.pageInfo.language"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    return-void
.end method

.method private setProductNamespaceInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    const-string/jumbo v0, "clip"

    const-string/jumbo v1, "adb.page.pageInfo.namespace"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    return-void
.end method

.method private setProductVersionInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_buildVersion:Ljava/lang/String;

    const-string/jumbo v1, "adb.page.pageInfo.productVersion"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 237
    return-void
.end method

.method private setRegistrationStatusInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    const-string/jumbo v0, ""

    const-string/jumbo v1, "adb.user.profile.attributes.regStatus"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method private setStateName(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    const-string/jumbo v0, "adb.page.pageInfo.pageName"

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    return-void
.end method

.method private setUserIDInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_userIdentity:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_userIdentity:Ljava/lang/String;

    .line 201
    const-string/jumbo v1, "Adobe Account (Free)"

    .line 209
    :goto_0
    const-string/jumbo v1, "adb.user.profile.profileId"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    return-void

    .line 205
    :cond_0
    const-string/jumbo v0, "Unknown"

    .line 206
    const-string/jumbo v1, "Not Registered"

    goto :goto_0
.end method

.method public static sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/adobe/premiereclip/metrics/Metrics;->instance:Lcom/adobe/premiereclip/metrics/Metrics;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/adobe/premiereclip/metrics/Metrics;

    invoke-direct {v0}, Lcom/adobe/premiereclip/metrics/Metrics;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/metrics/Metrics;->instance:Lcom/adobe/premiereclip/metrics/Metrics;

    .line 95
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/metrics/Metrics;->instance:Lcom/adobe/premiereclip/metrics/Metrics;

    return-object v0
.end method


# virtual methods
.method public call(JJLjava/util/Map;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 1137
    const-string/jumbo v0, "MyProjects:OpenedProject"

    .line 1138
    invoke-direct {p0, v0, p5}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1139
    invoke-direct {p0, p5}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 1140
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "hs.project.openDuration.inApp"

    invoke-direct {p0, v1, v2, p5}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1141
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "hs.project.openDuration.total"

    invoke-direct {p0, v1, v2, p5}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADBMobile trackTimedActionEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->logDebug(Ljava/lang/String;)V

    .line 1144
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(JJLjava/util/Map;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/premiereclip/metrics/Metrics;->call(JJLjava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public clearCrashlyticsProjectInfo()V
    .locals 0

    .prologue
    .line 3135
    return-void
.end method

.method public clearCurrentProjectInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 584
    iput-object v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectTitle:Ljava/lang/String;

    .line 585
    iput-object v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectID:Ljava/lang/String;

    .line 586
    iput-object v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectExportTitle:Ljava/lang/String;

    .line 587
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_fromTemplate:Ljava/lang/Boolean;

    .line 588
    iput v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectType:I

    .line 589
    iput-object v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectMediaSource:Ljava/lang/String;

    .line 590
    iput-object v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectOriginalTitle:Ljava/lang/String;

    .line 591
    iput-object v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectOriginalProjectID:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public clearCurrentProjectSignature()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 624
    iput v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportVideoClips:I

    .line 625
    iput v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportStillImageClips:I

    .line 626
    iput v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportTitleClips:I

    .line 627
    iput v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportStorycardClips:I

    .line 628
    iput v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numAudioClips:I

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_exportColorLook:Ljava/lang/String;

    .line 630
    return-void
.end method

.method public clearExportInfo()V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentExportPrivacy:Ljava/lang/String;

    .line 642
    return-void
.end method

.method public contextDataForCommunityVideoAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2607
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 2609
    return-object v0
.end method

.method public contextDataForCommunityVideoState()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2776
    const-string/jumbo v1, "Organizer"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 2777
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 2778
    iget v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_communityVideosCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "hs.community.videos.count"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2780
    return-object v0
.end method

.method public contextDataForEditorAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 823
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 824
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 826
    return-object v0
.end method

.method public contextDataForEditorClipAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1294
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 1295
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 1297
    return-object v0
.end method

.method public contextDataForEditorClipState()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1625
    const-string/jumbo v1, "ProjectEditor"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 1626
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 1627
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 1629
    return-object v0
.end method

.method public contextDataForEditorSequenceAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1650
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1651
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 1652
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 1654
    return-object v0
.end method

.method public contextDataForEditorSoundtrackAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2047
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2048
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 2049
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 2051
    return-object v0
.end method

.method public contextDataForEditorState()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 992
    const-string/jumbo v1, "ProjectEditor"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 993
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 994
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 996
    return-object v0
.end method

.method public contextDataForExportAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2205
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 2206
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 2207
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureInDictionary(Ljava/util/Map;)V

    .line 2209
    return-object v0
.end method

.method public contextDataForExportState()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2413
    const-string/jumbo v1, "Export"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 2414
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 2415
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 2416
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureInDictionary(Ljava/util/Map;)V

    .line 2418
    return-object v0
.end method

.method public contextDataForGuideBrowserState()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2924
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2925
    const-string/jumbo v1, "Organizer"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 2926
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 2927
    iget v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_guidesCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "hs.guides.count"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2929
    return-object v0
.end method

.method public contextDataForGuidesBrowserActions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2819
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2820
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 2822
    return-object v0
.end method

.method public contextDataForMiscActions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2968
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2969
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 2971
    return-object v0
.end method

.method public contextDataForMiscState()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3191
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 3193
    return-object v0
.end method

.method public contextDataForMyProjectsActions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1040
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 1042
    return-object v0
.end method

.method public contextDataForMyProjectsState()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1261
    const-string/jumbo v1, "Organizer"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 1262
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 1263
    iget v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "hs.user.projects.count"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1265
    return-object v0
.end method

.method public contextDataForMyPublishedVideosAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3204
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 3206
    return-object v0
.end method

.method public contextDataForMyPublishedVideosState()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3377
    const-string/jumbo v1, "Organizer"

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 3378
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 3379
    iget v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myPublishedVideosCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "hs.user.published.videos.count"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3381
    return-object v0
.end method

.method public contextDataForPresentationAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2566
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 2567
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 2569
    return-object v0
.end method

.method public didAddSoundtrackFromLocation(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2068
    const-string/jumbo v0, "ProjectEditor:Soundtrack:Added"

    .line 2069
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2071
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2072
    const-string/jumbo v2, "hs.project.sequence.soundtrack.source"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2074
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2075
    return-void
.end method

.method public didAddVideoClipWithHeight(IIDF)V
    .locals 5

    .prologue
    .line 1706
    const-string/jumbo v0, "ProjectEditor:AddedVideoClip"

    .line 1707
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1708
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1710
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos.attributes.height"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1711
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos.attributes.width"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1712
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos.attributes.frameRate"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1713
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos.attributes.speed"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1715
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1716
    return-void
.end method

.method public didAttemptExternalLaunch(Z)V
    .locals 3

    .prologue
    .line 1918
    if-eqz p1, :cond_0

    const-string/jumbo v0, "ClipNotification"

    .line 1919
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TourView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":AttemptedExternalLaunch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1920
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1921
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1923
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1924
    return-void

    .line 1918
    :cond_0
    const-string/jumbo v0, "OtherApps"

    goto :goto_0
.end method

.method public didAttemptImportOfCreativeCloudFileAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1740
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:AttemptedImport"

    .line 1741
    const-string/jumbo v1, "MyFiles"

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectMediaSource(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1743
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1745
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1746
    return-void
.end method

.method public didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1782
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:Lightroom:AttemptedImport"

    .line 1783
    const-string/jumbo v1, "Lightroom"

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectMediaSource(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1785
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1787
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1788
    return-void
.end method

.method public didAttemptImportOfRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProjectEditor:MediaPicker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":AttemptedImport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1877
    const-string/jumbo v1, "MyFiles"

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectMediaSource(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1879
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1881
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1882
    return-void
.end method

.method public didAttemptSignIn()V
    .locals 3

    .prologue
    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 672
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 673
    const-string/jumbo v1, "Authentication Action:Sign In:Attempted"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 674
    const-string/jumbo v1, "Attempted Sign In"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 675
    return-void
.end method

.method public didAttemptSignOutWithAdobeID()V
    .locals 3

    .prologue
    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setUserIDInDictionary(Ljava/util/Map;)V

    .line 773
    const-string/jumbo v1, "Authentication Action:Sign Out:Attempted"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 774
    const-string/jumbo v1, "Attempted Sign Out"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 775
    return-void
.end method

.method public didAttemptSignUp()V
    .locals 4

    .prologue
    .line 656
    const-string/jumbo v0, "Registration Step"

    .line 657
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 659
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 660
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 661
    const-string/jumbo v2, "Signup Start"

    const-string/jumbo v3, "adb.event.eventInfo.eventAction"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 663
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 664
    return-void
.end method

.method public didAuthenticateUserWithAdobeID(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 730
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_isUserLoggedIn:Ljava/lang/Boolean;

    .line 732
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->setUserLoggedIn(Ljava/lang/Boolean;)V

    .line 734
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_analyticsOptIn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_userIdentity:Ljava/lang/String;

    .line 744
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_userIdentity:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->setUserIdentifier(Ljava/lang/String;)V

    .line 749
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 750
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 752
    const-string/jumbo v1, "Authentication Action:Sign In:Authenticated"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 753
    const-string/jumbo v1, "Authenticated User"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 755
    const-string/jumbo v1, "Authentication Action:Sign In:User Logged In"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 756
    const-string/jumbo v1, "userLoggedIn"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 763
    :cond_0
    return-void
.end method

.method public didBecomeActive()V
    .locals 2

    .prologue
    .line 350
    const-string/jumbo v0, "App:BecameActive"

    .line 351
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 354
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 355
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductCategoryInDictionary(Ljava/util/Map;)V

    .line 356
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductVersionInDictionary(Ljava/util/Map;)V

    .line 357
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductNamespaceInDictionary(Ljava/util/Map;)V

    .line 358
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductLanguageInDictionary(Ljava/util/Map;)V

    .line 360
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 361
    return-void
.end method

.method public didCancelDownloadOfCreativeCloudFileAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1771
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:CancelledAssetDownload"

    .line 1772
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1773
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1775
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1776
    return-void
.end method

.method public didCancelDownloadOfCreativeCloudPhotoAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1813
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:Lightroom:CancelledAssetDownload"

    .line 1814
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1815
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1817
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1818
    return-void
.end method

.method public didCancelDownloadOfRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProjectEditor:MediaPicker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":CancelledAssetDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1908
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1909
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1911
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1912
    return-void
.end method

.method public didCancelSignIn()V
    .locals 3

    .prologue
    .line 680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 681
    const-string/jumbo v1, "Authentication Action:Sign In:Cancelled"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 682
    const-string/jumbo v1, "Cancelled Sign In"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 683
    return-void
.end method

.method public didCancelVideoRenderForExport()V
    .locals 2

    .prologue
    .line 2290
    const-string/jumbo v0, "Export:RenderVideo:Cancelled"

    .line 2291
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2293
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2295
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2296
    return-void
.end method

.method public didCancelVideoUploadToExportDestination(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2324
    const-string/jumbo v0, "Export:UploadVideo:Cancelled"

    .line 2325
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2327
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2328
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2330
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2331
    return-void
.end method

.method public didCancelVideoUploadToPremiereProAfterSyncAlert(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2376
    const-string/jumbo v0, "Export:UploadVideoActionAfterSyncAlert:Cancelled"

    .line 2377
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2379
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2380
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2382
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2383
    return-void
.end method

.method public didChangeAutoPaceSlider(F)V
    .locals 4

    .prologue
    .line 2114
    const-string/jumbo v0, "ProjectEditor:Soundtrack:ChangedPaceSlider"

    .line 2115
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2116
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2117
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.soundtrack.pace"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2119
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2120
    return-void
.end method

.method public didChangeClipExposureSlider(FLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1362
    const-string/jumbo v0, "ClipEditor:BrightnessMenu:ChangedExposureSlider"

    .line 1363
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1364
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1365
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.exposure"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1366
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1368
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1369
    return-void
.end method

.method public didChangeClipHighlightsSlider(FLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1339
    const-string/jumbo v0, "ClipEditor:BrightnessMenu:ChangedHighlightsSlider"

    .line 1340
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1341
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1342
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.highlights"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1343
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1345
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1346
    return-void
.end method

.method public didChangeClipShadowsSlider(FLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1316
    const-string/jumbo v0, "ClipEditor:BrightnessMenu:ChangedShadowsSlider"

    .line 1317
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1318
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1319
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.shadows"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1320
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1322
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1323
    return-void
.end method

.method public didChangeClipSpeedSlider(FLjava/lang/String;D)V
    .locals 5

    .prologue
    .line 1508
    const-string/jumbo v0, "ClipEditor:SpeedMenu:ChangedSpeedSlider"

    .line 1509
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1510
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1511
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.speed"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1512
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1513
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1515
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1516
    return-void
.end method

.method public didChangeClipVolumeSlider(FLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1433
    const-string/jumbo v0, "ClipEditor:AudioMenu:ChangedVolumeSlider"

    .line 1434
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1435
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1436
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.volume"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1437
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1439
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1440
    return-void
.end method

.method public didChangeSoundtrackInPoint(F)V
    .locals 4

    .prologue
    .line 2134
    const-string/jumbo v0, "ProjectEditor:Soundtrack:ChangedInPoint"

    .line 2135
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2136
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2137
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.soundtrack.inPoint"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2139
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2140
    return-void
.end method

.method public didChangeSoundtrackVolumeSlider(F)V
    .locals 4

    .prologue
    .line 2124
    const-string/jumbo v0, "ProjectEditor:Soundtrack:ChangedVolumeSlider"

    .line 2125
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2126
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2127
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.soundtrack.volume"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2129
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2130
    return-void
.end method

.method public didCompleteAutocreateDuration(DII)V
    .locals 5

    .prologue
    .line 849
    const-string/jumbo v0, "ProjectEditor:Autocreate"

    .line 850
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 851
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 852
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 853
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 854
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.stillimages"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 856
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 857
    return-void
.end method

.method public didCompletedUpgradeForCurrentCBLProject(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1228
    const-string/jumbo v0, "MyProjects:UpgradeCBLProjectToDCX"

    .line 1229
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1230
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1231
    const-string/jumbo v2, "hs.project.attributes.projectId"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1233
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1234
    return-void
.end method

.method public didConvertProjectToFreeform()V
    .locals 2

    .prologue
    .line 1011
    const-string/jumbo v0, "ProjectEditor:ConvertToFreeform"

    .line 1012
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 1014
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1015
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureInDictionary(Ljava/util/Map;)V

    .line 1017
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1018
    return-void
.end method

.method public didCreateNewAutomaticProject()V
    .locals 2

    .prologue
    .line 1248
    const-string/jumbo v0, "MyProjects:NewProject:CreatedAutomaticProject"

    .line 1249
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1250
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1251
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 1253
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1254
    return-void
.end method

.method public didCreateNewFreeformProject()V
    .locals 2

    .prologue
    .line 1238
    const-string/jumbo v0, "MyProjects:NewProject:CreatedFreeformProject"

    .line 1239
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1240
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1241
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 1243
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1244
    return-void
.end method

.method public didCreateNewProject()V
    .locals 2

    .prologue
    .line 1093
    const-string/jumbo v0, "MyProjects:NewProject:CreatedProject"

    .line 1094
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1095
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1096
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 1098
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1099
    return-void
.end method

.method public didCreateStorycardFromClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1594
    const-string/jumbo v0, "ClipEditor:StorycardMenu:CreatedStorycard"

    .line 1595
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1596
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1597
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1599
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1600
    return-void
.end method

.method public didDeleteMyProject(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1180
    const-string/jumbo v0, "MyProjects:DeletedProject"

    .line 1181
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1182
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1183
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1184
    const-string/jumbo v2, "hs.user.projects.project.attributes.projectId"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1186
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1187
    return-void
.end method

.method public didDeleteVideoMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3271
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:DeletedVideo"

    .line 3272
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3274
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3275
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3277
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3278
    return-void
.end method

.method public didDenyDownloadOfUnsupportedCreativeCloudAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1823
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:DenyUnsupportedAsset"

    .line 1824
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1825
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1827
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1828
    return-void
.end method

.method public didDenyExportDueToMissingMediaOnDevice()V
    .locals 2

    .prologue
    .line 963
    const-string/jumbo v0, "ProjectEditor:DeniedExport:MissingMediaOnDevice"

    .line 964
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 966
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 967
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureInDictionary(Ljava/util/Map;)V

    .line 969
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 970
    return-void
.end method

.method public didDenyUploadDueToMissingMediaInCloudForDestination(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2348
    const-string/jumbo v0, "Export:UploadVideo:Failed:MissingMediaInCloud"

    .line 2349
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2351
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2352
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2354
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2355
    return-void
.end method

.method public didDetectCrash()V
    .locals 2

    .prologue
    .line 3140
    const-string/jumbo v0, "DetectedCrash"

    .line 3141
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3142
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3144
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3145
    return-void
.end method

.method public didDetectMisconfiguredExportDestination(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2267
    const-string/jumbo v0, "Export:DetectedMisconfiguredDestination"

    .line 2268
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2270
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2271
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2273
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2274
    return-void
.end method

.method public didDimissOptionsForCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2690
    const-string/jumbo v0, "CommunityVideos:TappedOptions:Cancel"

    .line 2691
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2693
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2694
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2695
    const-string/jumbo v2, "hs.community.videos.video.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2697
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2698
    return-void
.end method

.method public didDimissOptionsForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3295
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:Cancel"

    .line 3296
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3298
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3299
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3301
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3302
    return-void
.end method

.method public didDoubleTapClipExposureSliderForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1374
    const-string/jumbo v0, "ClipEditor:BrightnessMenu:DoubleTappedExposureSlider"

    .line 1375
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1376
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1377
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1379
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1380
    return-void
.end method

.method public didDoubleTapClipHighlightsSliderForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1351
    const-string/jumbo v0, "ClipEditor:BrightnessMenu:DoubleTappedHighlightsSlider"

    .line 1352
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1353
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1354
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1356
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1357
    return-void
.end method

.method public didDoubleTapClipShadowsSliderForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1328
    const-string/jumbo v0, "ClipEditor:BrightnessMenu:DoubleTappedShadowsSlider"

    .line 1329
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1330
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1331
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1333
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1334
    return-void
.end method

.method public didDoubleTapClipSpeedSliderForClipType(Ljava/lang/String;D)V
    .locals 4

    .prologue
    .line 1521
    const-string/jumbo v0, "ClipEditor:SpeedMenu:DoubleTappedSpeedSlider"

    .line 1522
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1523
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1524
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1525
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1527
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1528
    return-void
.end method

.method public didDoubleTapClipVolumeSliderForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1445
    const-string/jumbo v0, "ClipEditor:AudioMenu:DoubleTappedVolumeSlider"

    .line 1446
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1447
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1448
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1450
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1451
    return-void
.end method

.method public didDoubleTapSoundtrackVolumeSlider()V
    .locals 2

    .prologue
    .line 2144
    const-string/jumbo v0, "ProjectEditor:Soundtrack:DoubleTappedVolumeSlider"

    .line 2145
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2146
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2148
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2149
    return-void
.end method

.method public didDownloadCreativeCloudFileAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1751
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:DownloadedAsset"

    .line 1752
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1753
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1755
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1756
    return-void
.end method

.method public didDownloadCreativeCloudPhotoAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1793
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:Lightroom:DownloadedAsset"

    .line 1794
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1795
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1797
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1798
    return-void
.end method

.method public didDownloadRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProjectEditor:MediaPicker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":DownloadedAsset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1888
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1889
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1891
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1892
    return-void
.end method

.method public didEditExportProjectTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2227
    const-string/jumbo v0, "Export:EditedProjectTitle"

    .line 2229
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectExportTitle:Ljava/lang/String;

    .line 2231
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2232
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2234
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2235
    return-void
.end method

.method public didEditProjectTitleInProjectEditor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 873
    const-string/jumbo v0, "ProjectEditor:EditedProjectTitle"

    .line 875
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectTitle:Ljava/lang/String;

    .line 877
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 878
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 880
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 881
    return-void
.end method

.method public didEditTitleForMyProject(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1204
    const-string/jumbo v0, "MyProjects:EditedProjectTitle"

    .line 1205
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1206
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1207
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1208
    const-string/jumbo v2, "hs.user.projects.project.attributes.projectId"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1210
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1211
    return-void
.end method

.method public didFailDownloadOfCreativeCloudFileAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1761
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:FailedAssetDownload"

    .line 1762
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1763
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1765
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1766
    return-void
.end method

.method public didFailDownloadOfCreativeCloudPhotoAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1803
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:Lightroom:FailedAssetDownload"

    .line 1804
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1805
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1807
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1808
    return-void
.end method

.method public didFailDownloadOfRemoteSourceAssetInMediaPicker(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProjectEditor:MediaPicker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":FailedAssetDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1898
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1899
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1901
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1902
    return-void
.end method

.method public didFailImportOfMyDeviceICloudAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1697
    const-string/jumbo v0, "ProjectEditor:MediaPicker:OnMyDevice:FailedAssetImport:iCloud"

    .line 1698
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1699
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1701
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1702
    return-void
.end method

.method public didFailOpeningClipGuidesLoadURLWithGuideID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2900
    const-string/jumbo v0, "GuidesBrowser:ClipScheme:GuidesHost:LoadGuide:Failed"

    .line 2901
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuidesBrowserActions()Ljava/util/Map;

    move-result-object v1

    .line 2902
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2903
    const-string/jumbo v2, "hs.guides.guide.id"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2905
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2906
    return-void
.end method

.method public didFailOpeningClipGuidesStartURLWithGuideID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2911
    const-string/jumbo v0, "GuidesBrowser:ClipScheme:GuidesHost:StartGuide:Failed"

    .line 2912
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuidesBrowserActions()Ljava/util/Map;

    move-result-object v1

    .line 2913
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2914
    const-string/jumbo v2, "hs.guides.guide.id"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2916
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2917
    return-void
.end method

.method public didFailShareForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3348
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:TappedShare:Destination:Failed"

    .line 3349
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3351
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3352
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3353
    const-string/jumbo v2, "hs.user.published.videos.video.destination"

    invoke-direct {p0, p3, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3355
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3356
    return-void
.end method

.method public didFailSignInWithError(I)V
    .locals 3

    .prologue
    .line 688
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 689
    const-string/jumbo v1, "Authentication Action:Sign In:Failed"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 690
    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setError(ILjava/util/Map;)V

    .line 691
    const-string/jumbo v1, "Failed Sign In"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 692
    return-void
.end method

.method public didFailSignOutWithError(I)V
    .locals 3

    .prologue
    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 790
    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setError(ILjava/util/Map;)V

    .line 792
    const-string/jumbo v1, "Authentication Action:Sign Out:Failed"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 794
    const-string/jumbo v1, "Failed Sign Out"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 795
    return-void
.end method

.method public didFailToPlayVideoForClipCommunityURLWithCCVID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2726
    const-string/jumbo v0, "CommunityVideos:ClipScheme:CommunityHost:PlayVideo:Failed"

    .line 2727
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2729
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2730
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2732
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2733
    return-void
.end method

.method public didFailToPlayVideoForClipVideoURLWithCCVID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3094
    const-string/jumbo v0, "ClipScheme:VideoHost:PlayVideo:Failed"

    .line 3095
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3097
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3098
    const-string/jumbo v2, "hs.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3100
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3101
    return-void
.end method

.method public didFailVideoRenderForExport()V
    .locals 2

    .prologue
    .line 2301
    const-string/jumbo v0, "Export:RenderVideo:Failed"

    .line 2302
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2304
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2306
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2307
    return-void
.end method

.method public didFailVideoUploadToExportDestination(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2336
    const-string/jumbo v0, "Export:UploadVideo:Failed"

    .line 2337
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2339
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2340
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2342
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2343
    return-void
.end method

.method public didFetchCommunityVideosList()V
    .locals 4

    .prologue
    .line 2626
    const-string/jumbo v0, "CommunityVideos:FetchedList"

    .line 2627
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2629
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2630
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_communityVideosCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.community.videos.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2632
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2633
    return-void
.end method

.method public didFetchMyPublishedVideosList()V
    .locals 4

    .prologue
    .line 3223
    const-string/jumbo v0, "MyPublishedVideos:FetchedList"

    .line 3224
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3226
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3227
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myPublishedVideosCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.published.videos.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3229
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3230
    return-void
.end method

.method public didFinishProjectOpenForMyProject(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1149
    const-string/jumbo v0, "MyProjects:OpenedProject"

    .line 1150
    invoke-static {v0, p0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackTimedActionEnd(Ljava/lang/String;Lcom/adobe/mobile/Analytics$TimedActionBlock;)V

    .line 1151
    return-void
.end method

.method public didGrantAuthorizationForPermission(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2979
    const-string/jumbo v0, "Permissions:AuthorizationGranted:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2980
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 2981
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2983
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2984
    return-void
.end method

.method public didImportMyDeviceAssetInMediaPicker()V
    .locals 2

    .prologue
    .line 1687
    const-string/jumbo v0, "ProjectEditor:MediaPicker:OnMyDevice:ImportedAsset"

    .line 1688
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1689
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1691
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1692
    return-void
.end method

.method public didMisconfigureDestinationForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3322
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:TappedShare:Destination:Misconfigured"

    .line 3323
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3325
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3326
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3327
    const-string/jumbo v2, "hs.user.published.videos.video.destination"

    invoke-direct {p0, p3, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3329
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3330
    return-void
.end method

.method public didModifyAnalyticsCollection(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 305
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_analyticsOptIn:Ljava/lang/Boolean;

    .line 307
    invoke-static {p1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->setPrivacyStatus(Ljava/lang/Boolean;)V

    .line 309
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string/jumbo v0, "EnabledAnalyticsCollection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 313
    :cond_0
    return-void
.end method

.method public didOpenClipCommunityURL()V
    .locals 2

    .prologue
    .line 2703
    const-string/jumbo v0, "CommunityVideos:ClipScheme:CommunityHost:Open:Success"

    .line 2704
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2706
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2708
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2709
    return-void
.end method

.method public didOpenClipCommunityVideoURLWithCCVID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2714
    const-string/jumbo v0, "CommunityVideos:ClipScheme:CommunityHost:OpenVideo:Success"

    .line 2715
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2717
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2718
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2720
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2721
    return-void
.end method

.method public didOpenClipGuidesLoadURLWithGuideID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2876
    const-string/jumbo v0, "GuidesBrowser:ClipScheme:GuidesHost:LoadGuide:Success"

    .line 2877
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuidesBrowserActions()Ljava/util/Map;

    move-result-object v1

    .line 2878
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2879
    const-string/jumbo v2, "hs.guides.guide.id"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2880
    const-string/jumbo v2, "hs.guides.guide.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2882
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2883
    return-void
.end method

.method public didOpenClipGuidesStartURLWithGuideID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2888
    const-string/jumbo v0, "GuidesBrowser:ClipScheme:GuidesHost:StartGuide:Success"

    .line 2889
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuidesBrowserActions()Ljava/util/Map;

    move-result-object v1

    .line 2890
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2891
    const-string/jumbo v2, "hs.guides.guide.id"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2892
    const-string/jumbo v2, "hs.guides.guide.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2894
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2895
    return-void
.end method

.method public didOpenClipGuidesURL()V
    .locals 2

    .prologue
    .line 2866
    const-string/jumbo v0, "GuidesBrowser:ClipScheme:GuidesHost:Open:Success"

    .line 2867
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuidesBrowserActions()Ljava/util/Map;

    move-result-object v1

    .line 2868
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2870
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2871
    return-void
.end method

.method public didOpenClipProjectsCreateURL(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1216
    const-string/jumbo v0, "MyProjects:ClipScheme:ProjectsHost:CreateProject"

    .line 1217
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectMediaSource(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1219
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1220
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1221
    const-string/jumbo v2, "hs.project.attributes.originalsource"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1223
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1224
    return-void
.end method

.method public didOpenClipVideoURLWithCCVID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3082
    const-string/jumbo v0, "ClipScheme:VideoHost:OpenVideo:Success"

    .line 3083
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3085
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3086
    const-string/jumbo v2, "hs.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3088
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3089
    return-void
.end method

.method public didPlaySequenceWithDuration(DIILjava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 834
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ProjectEditor:Playback:PlayedFullSequence"

    .line 835
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 836
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 837
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 838
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 839
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.audio"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 841
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 842
    return-void

    .line 834
    :cond_0
    const-string/jumbo v0, "ProjectEditor:Playback:PlayedSequence"

    goto :goto_0
.end method

.method public didPlayVideoForClipCommunityURLWithCCVID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2738
    const-string/jumbo v0, "CommunityVideos:ClipScheme:CommunityHost:PlayVideo:Success"

    .line 2739
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2741
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2742
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2744
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2745
    return-void
.end method

.method public didPlayVideoForClipVideoURLWithCCVID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3106
    const-string/jumbo v0, "ClipScheme:VideoHost:PlayVideo:Success"

    .line 3107
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3109
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3110
    const-string/jumbo v2, "hs.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3112
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3113
    return-void
.end method

.method public didReceiveClipCommunityURLFromSourceApplication(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3052
    const-string/jumbo v0, "ClipScheme:CommunityHost:ReceivedURL:%@"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3053
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3054
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3056
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3057
    return-void
.end method

.method public didReceiveClipGuidesURLFromSourceApplication(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3072
    const-string/jumbo v0, "ClipScheme:GuidesHost:ReceivedURL:%@"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3073
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3074
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3076
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3077
    return-void
.end method

.method public didReceiveClipProjectsURLFromSourceApplication(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3062
    const-string/jumbo v0, "ClipScheme:ProjectsHost:ReceivedURL:%@"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3063
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3064
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3066
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3067
    return-void
.end method

.method public didReceiveClipVideoURLFromSourceApplication(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3042
    const-string/jumbo v0, "ClipScheme:VideoHost:ReceivedURL:%@"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3043
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3044
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3046
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3047
    return-void
.end method

.method public didRefreshMyProjects()V
    .locals 4

    .prologue
    .line 1104
    const-string/jumbo v0, "MyProjects:Refreshed"

    .line 1105
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1106
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1107
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1109
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1110
    return-void
.end method

.method public didRenderVideoForExport()V
    .locals 2

    .prologue
    .line 2279
    const-string/jumbo v0, "Export:RenderVideo:Success"

    .line 2280
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2282
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2284
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2285
    return-void
.end method

.method public didReplaceSoundtrackFromLocation(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2091
    const-string/jumbo v0, "ProjectEditor:Soundtrack:Replaced"

    .line 2092
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2094
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2095
    const-string/jumbo v2, "hs.project.sequence.soundtrack.source"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2097
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2098
    return-void
.end method

.method public didRequestHelpWhileAuthorizationDeniedForPermission(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2999
    const-string/jumbo v0, "Permissions:RequestedHelpWhileDenied:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3000
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3001
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3003
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3004
    return-void
.end method

.method public didRequestHelpWhileAuthorizationRestrictedForPermission(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3009
    const-string/jumbo v0, "Permissions:RequestedHelpWhileRestricted:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3010
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3011
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3013
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3014
    return-void
.end method

.method public didResignActive()V
    .locals 2

    .prologue
    .line 366
    const-string/jumbo v0, "App:ResignedActive"

    .line 367
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 369
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 370
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 371
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductCategoryInDictionary(Ljava/util/Map;)V

    .line 372
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductVersionInDictionary(Ljava/util/Map;)V

    .line 373
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductNamespaceInDictionary(Ljava/util/Map;)V

    .line 374
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductLanguageInDictionary(Ljava/util/Map;)V

    .line 376
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 377
    return-void
.end method

.method public didRetrieveDeviceFreeSpaceBytes(J)V
    .locals 5

    .prologue
    .line 383
    const-string/jumbo v0, "App:RetrievedDeviceFreeSpace"

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 386
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 387
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 388
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductCategoryInDictionary(Ljava/util/Map;)V

    .line 389
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductVersionInDictionary(Ljava/util/Map;)V

    .line 391
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "hs.device.filesystem.freesize.bytes"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 393
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 394
    return-void
.end method

.method public didRevokeAuthorizationForPermission(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2989
    const-string/jumbo v0, "Permissions:AuthorizationRevoked:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2990
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 2991
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2993
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2994
    return-void
.end method

.method public didScrollOrganizerToCommunityVideos()V
    .locals 2

    .prologue
    .line 2615
    const-string/jumbo v0, "CommunityVideos:ScrolledToCenter"

    .line 2616
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2618
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2620
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2621
    return-void
.end method

.method public didScrollOrganizerToMyProjects()V
    .locals 2

    .prologue
    .line 1048
    const-string/jumbo v0, "MyProjects:ScrolledToCenter"

    .line 1049
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1051
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1053
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1054
    return-void
.end method

.method public didScrollOrganizerToMyPublishedVideos()V
    .locals 2

    .prologue
    .line 3212
    const-string/jumbo v0, "MyPublishedVideos:ScrolledToCenter"

    .line 3213
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3215
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3217
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3218
    return-void
.end method

.method public didSelectCreativeCloudAssetInMediaPickerWithAssetCount(I)V
    .locals 4

    .prologue
    .line 1855
    const-string/jumbo v0, "ProjectEditor:MediaPicker:CreativeCloud:SelectedAssets"

    .line 1856
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1857
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1858
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.import.cc.assets.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1860
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1861
    return-void
.end method

.method public didSelectFinishingTouchesLook(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1984
    const-string/jumbo v0, "ProjectEditor:FinishingTouches:LooksMenu:SelectedLook"

    .line 1985
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1986
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1987
    const-string/jumbo v2, "hs.project.sequence.colorLook"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1989
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1990
    return-void
.end method

.method public didSendVideoUploadToPremiereProAfterSyncAlert(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2387
    const-string/jumbo v0, "Export:UploadVideoActionAfterSyncAlert:Success"

    .line 2388
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2390
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2391
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2393
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2394
    return-void
.end method

.method public didSetApplicationInstanceID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public didShareMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3361
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:TappedShare:Destination:Succeeded"

    .line 3362
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3364
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3365
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3366
    const-string/jumbo v2, "hs.user.published.videos.video.destination"

    invoke-direct {p0, p3, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3368
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3369
    return-void
.end method

.method public didShootIntoStorycardInSequenceWithDuration(DII)V
    .locals 5

    .prologue
    .line 1945
    const-string/jumbo v0, "ProjectEditor:Storycard:StorycardShot"

    .line 1946
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1947
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1948
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1949
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1950
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.storycards"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1952
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1953
    return-void
.end method

.method public didShowBecomeActiveView()V
    .locals 3

    .prologue
    .line 401
    const-string/jumbo v0, "AppActive"

    .line 402
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 404
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 405
    const-string/jumbo v2, "OS"

    invoke-direct {p0, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 406
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 408
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 409
    return-void
.end method

.method public didShowCCVExportFailureView()V
    .locals 2

    .prologue
    .line 2465
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2466
    const-string/jumbo v1, "CCVFailure"

    .line 2468
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2469
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setExportDestinationInfoInDictionary(Ljava/util/Map;)V

    .line 2471
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2472
    return-void
.end method

.method public didShowCCVExportProgressView()V
    .locals 2

    .prologue
    .line 2443
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2444
    const-string/jumbo v1, "CCVProgress"

    .line 2446
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2447
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setExportDestinationInfoInDictionary(Ljava/util/Map;)V

    .line 2449
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2450
    return-void
.end method

.method public didShowCCVExportSuccessView()V
    .locals 2

    .prologue
    .line 2454
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2455
    const-string/jumbo v1, "CCVSuccess"

    .line 2457
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2458
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setExportDestinationInfoInDictionary(Ljava/util/Map;)V

    .line 2460
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2461
    return-void
.end method

.method public didShowCCVExportView()V
    .locals 2

    .prologue
    .line 2433
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2434
    const-string/jumbo v1, "CCV"

    .line 2436
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2438
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2439
    return-void
.end method

.method public didShowCameraCaptureView()V
    .locals 2

    .prologue
    .line 1025
    const-string/jumbo v0, "CameraCapture"

    .line 1026
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorState()Ljava/util/Map;

    move-result-object v1

    .line 1028
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1030
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 1031
    return-void
.end method

.method public didShowCommunityVideosView()V
    .locals 2

    .prologue
    .line 2786
    const-string/jumbo v0, "CommunityVideos"

    .line 2787
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoState()Ljava/util/Map;

    move-result-object v1

    .line 2788
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2790
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2791
    return-void
.end method

.method public didShowDetailViewForGuide(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2945
    const-string/jumbo v0, "GuideDetail"

    .line 2946
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuideBrowserState()Ljava/util/Map;

    move-result-object v1

    .line 2947
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2948
    const-string/jumbo v2, "hs.guides.guide.id"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2949
    const-string/jumbo v2, "hs.guides.guide.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2951
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2952
    return-void
.end method

.method public didShowGuideBrowserView()V
    .locals 2

    .prologue
    .line 2935
    const-string/jumbo v0, "GuideBrowser"

    .line 2936
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuideBrowserState()Ljava/util/Map;

    move-result-object v1

    .line 2937
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2939
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2940
    return-void
.end method

.method public didShowMyProjectsView()V
    .locals 2

    .prologue
    .line 1271
    const-string/jumbo v0, "MyProjects"

    .line 1272
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsState()Ljava/util/Map;

    move-result-object v1

    .line 1273
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1275
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 1276
    return-void
.end method

.method public didShowMyPublishedVideosView()V
    .locals 2

    .prologue
    .line 3387
    const-string/jumbo v0, "MyPublishedVideos"

    .line 3388
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosState()Ljava/util/Map;

    move-result-object v1

    .line 3389
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3391
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 3392
    return-void
.end method

.method public didShowOfflineSignOutConfirmation()V
    .locals 3

    .prologue
    .line 780
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 781
    const-string/jumbo v1, "Authentication Action:Sign Out:Attempted:Confirmation Shown"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 783
    const-string/jumbo v1, "Offline Sign Out Confirmation Shown"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 784
    return-void
.end method

.method public didShowOptionsViewForCommunityVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2796
    const-string/jumbo v0, "CommunityVideos:Options"

    .line 2797
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoState()Ljava/util/Map;

    move-result-object v1

    .line 2798
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2799
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2800
    const-string/jumbo v2, "hs.community.videos.video.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2802
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2803
    return-void
.end method

.method public didShowOptionsViewForMyPublishedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3397
    const-string/jumbo v0, "MyPublishedVideos:Options"

    .line 3398
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosState()Ljava/util/Map;

    move-result-object v1

    .line 3399
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3400
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3402
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 3403
    return-void
.end method

.method public didShowPopUpForUploadToPremiereProAfterSyncAlert(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2398
    const-string/jumbo v0, "Export:UploadVideoActionAfterSyncAlert:PopUpShown"

    .line 2399
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2401
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2402
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2404
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2405
    return-void
.end method

.method public didShowPremiereProExportFailureView()V
    .locals 4

    .prologue
    .line 2549
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2550
    const-string/jumbo v1, "PremiereFailure"

    .line 2552
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2553
    const-string/jumbo v2, "Premiere Pro"

    const-string/jumbo v3, "hs.project.export.destination"

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2555
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2556
    return-void
.end method

.method public didShowPremiereProExportSuccessView()V
    .locals 4

    .prologue
    .line 2538
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2539
    const-string/jumbo v1, "PremiereSuccess"

    .line 2541
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2542
    const-string/jumbo v2, "Premiere Pro"

    const-string/jumbo v3, "hs.project.export.destination"

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2544
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2545
    return-void
.end method

.method public didShowPremiereProExportUploadView()V
    .locals 4

    .prologue
    .line 2527
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2528
    const-string/jumbo v1, "PremiereUpload"

    .line 2530
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2531
    const-string/jumbo v2, "Premiere Pro"

    const-string/jumbo v3, "hs.project.export.destination"

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2533
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2534
    return-void
.end method

.method public didShowPremiereProExportView()V
    .locals 4

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2517
    const-string/jumbo v1, "PremierePro"

    .line 2519
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2520
    const-string/jumbo v2, "Premiere Pro"

    const-string/jumbo v3, "hs.project.export.destination"

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2522
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2523
    return-void
.end method

.method public didShowPresentationView()V
    .locals 3

    .prologue
    .line 2588
    const-string/jumbo v0, "Presentation"

    .line 2589
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2591
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2592
    const-string/jumbo v2, "ProjectEditor"

    invoke-direct {p0, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 2593
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 2594
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectInfoInDictionary(Ljava/util/Map;)V

    .line 2595
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureInDictionary(Ljava/util/Map;)V

    .line 2597
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2598
    return-void
.end method

.method public didShowProjectEditorView()V
    .locals 2

    .prologue
    .line 1002
    const-string/jumbo v0, "ProjectEditor"

    .line 1003
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorState()Ljava/util/Map;

    move-result-object v1

    .line 1004
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1006
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 1007
    return-void
.end method

.method public didShowResignedActiveView()V
    .locals 3

    .prologue
    .line 414
    const-string/jumbo v0, "AppNotActive"

    .line 415
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 417
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 418
    const-string/jumbo v2, "OS"

    invoke-direct {p0, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 419
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 421
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    return-void
.end method

.method public didShowShareVideoDetailViewForMyPublishedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3419
    const-string/jumbo v0, "MyPublishedVideos:ShareVideoDetail"

    .line 3420
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosState()Ljava/util/Map;

    move-result-object v1

    .line 3421
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3422
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3423
    const-string/jumbo v2, "hs.user.published.videos.video.destination"

    invoke-direct {p0, p3, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3425
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 3426
    return-void
.end method

.method public didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2501
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2502
    const-string/jumbo v1, "ShareVideoFailure"

    .line 2504
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2505
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2506
    const-string/jumbo v2, "hs.project.export.privacy"

    invoke-direct {p0, p2, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2508
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2509
    return-void
.end method

.method public didShowShareVideoSuccessViewForDestination(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2488
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2489
    const-string/jumbo v1, "ShareVideoSuccess"

    .line 2491
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2492
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2493
    const-string/jumbo v2, "hs.project.export.privacy"

    invoke-direct {p0, p2, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2495
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2496
    return-void
.end method

.method public didShowShareVideoViewForDestination(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2476
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportState()Ljava/util/Map;

    move-result-object v0

    .line 2477
    const-string/jumbo v1, "ShareVideo"

    .line 2479
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2480
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2482
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 2483
    return-void
.end method

.method public didShowShareViewForMyPublishedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3408
    const-string/jumbo v0, "MyPublishedVideos:Share"

    .line 3409
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosState()Ljava/util/Map;

    move-result-object v1

    .line 3410
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3411
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3413
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 3414
    return-void
.end method

.method public didShowSplashScreen()V
    .locals 3

    .prologue
    .line 428
    const-string/jumbo v0, "SplashScreen"

    .line 429
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 431
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 432
    const-string/jumbo v2, "Organizer"

    invoke-direct {p0, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 433
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 435
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 436
    return-void
.end method

.method public didShowWelcomeView()V
    .locals 3

    .prologue
    .line 441
    const-string/jumbo v0, "Welcome"

    .line 442
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 444
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setStateName(Ljava/lang/String;Ljava/util/Map;)V

    .line 445
    const-string/jumbo v2, "Organizer"

    invoke-direct {p0, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setAppSection(Ljava/lang/String;Ljava/util/Map;)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 448
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 449
    return-void
.end method

.method public didSignInWithAdobeID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 697
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_isUserLoggedIn:Ljava/lang/Boolean;

    .line 699
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 701
    iget-object v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_analyticsOptIn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_userIdentity:Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_userIdentity:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->setUserIdentifier(Ljava/lang/String;)V

    .line 714
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 715
    const-string/jumbo v1, "Authentication Action:Sign In:Signed In"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 716
    const-string/jumbo v1, "Signed In"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 718
    const-string/jumbo v1, "Authentication Action:Sign In:Successful"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 719
    const-string/jumbo v1, "signInSuccessful"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 725
    return-void
.end method

.method public didSignOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 800
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_isUserLoggedIn:Ljava/lang/Boolean;

    .line 801
    iput-object v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_userIdentity:Ljava/lang/String;

    .line 802
    invoke-static {v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->setUserIdentifier(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->clearUserSpecificInformation()V

    .line 806
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->setUserLoggedIn(Ljava/lang/Boolean;)V

    .line 808
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 809
    const-string/jumbo v1, "Authentication Action:Sign Out:Success"

    const-string/jumbo v2, "mobile.hs.event"

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 811
    const-string/jumbo v1, "Signed Out"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 812
    return-void
.end method

.method public didStartAppWithBuildName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_analyticsOptIn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string/jumbo v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_buildVersion:Ljava/lang/String;

    .line 327
    const-string/jumbo v0, "App:Started"

    .line 328
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 330
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 331
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 332
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductCategoryInDictionary(Ljava/util/Map;)V

    .line 333
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductVersionInDictionary(Ljava/util/Map;)V

    .line 334
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductNamespaceInDictionary(Ljava/util/Map;)V

    .line 335
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductLanguageInDictionary(Ljava/util/Map;)V

    .line 336
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductClientIDInDictionary(Ljava/util/Map;)V

    .line 338
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public didStartProjectOpenForMyProject(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1127
    const-string/jumbo v0, "MyProjects:OpenedProject"

    .line 1128
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1129
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1130
    const-string/jumbo v2, "hs.user.projects.project.attributes.projectId"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1132
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V

    .line 1133
    return-void
.end method

.method public didTapCancelShareForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3335
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:TappedShare:Destination:Cancelled"

    .line 3336
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3338
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3339
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3340
    const-string/jumbo v2, "hs.user.published.videos.video.destination"

    invoke-direct {p0, p3, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3342
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3343
    return-void
.end method

.method public didTapClipAudioMenuForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1409
    const-string/jumbo v0, "ClipEditor:TappedAudioMenu"

    .line 1410
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1411
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1412
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1414
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1415
    return-void
.end method

.method public didTapClipBrightnessMenuForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1305
    const-string/jumbo v0, "ClipEditor:TappedBrightnessMenu"

    .line 1306
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1307
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1308
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1310
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1311
    return-void
.end method

.method public didTapClipDuplicateMenuForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1535
    const-string/jumbo v0, "ClipEditor:TappedDuplicateMenu"

    .line 1536
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1537
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1538
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1540
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1541
    return-void
.end method

.method public didTapClipMoreMenuForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1387
    const-string/jumbo v0, "ClipEditor:TappedMoreMenu"

    .line 1388
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1389
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1390
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1392
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1393
    return-void
.end method

.method public didTapClipSpeedMenuForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1497
    const-string/jumbo v0, "ClipEditor:TappedSpeedMenu"

    .line 1498
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1499
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1500
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1502
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1503
    return-void
.end method

.method public didTapClipStorycardMenuForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1572
    const-string/jumbo v0, "ClipEditor:TappedStorycardMenu"

    .line 1573
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1574
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1575
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1577
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1578
    return-void
.end method

.method public didTapClipTextMenuForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1397
    const-string/jumbo v0, "ClipEditor:TappedTextMenu"

    .line 1398
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1399
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1400
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1402
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1403
    return-void
.end method

.method public didTapCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2638
    const-string/jumbo v0, "CommunityVideos:TappedVideo"

    .line 2639
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2641
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2642
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2643
    const-string/jumbo v2, "hs.community.videos.video.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2645
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2646
    return-void
.end method

.method public didTapDeleteForMyProject(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1168
    const-string/jumbo v0, "MyProjects:TappedDelete"

    .line 1169
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1170
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1171
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1172
    const-string/jumbo v2, "hs.user.projects.project.attributes.projectId"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1174
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1175
    return-void
.end method

.method public didTapDeleteInOptionsForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3259
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:TappedDelete"

    .line 3260
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3262
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3263
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3265
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3266
    return-void
.end method

.method public didTapDeleteSoundtrack()V
    .locals 2

    .prologue
    .line 2103
    const-string/jumbo v0, "ProjectEditor:Soundtrack:TappedDelete"

    .line 2104
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2106
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2108
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2109
    return-void
.end method

.method public didTapDuplicateClipForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1559
    const-string/jumbo v0, "ClipEditor:DuplicateMenu:TappedDuplicateClip"

    .line 1560
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1561
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1562
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1564
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1565
    return-void
.end method

.method public didTapDuplicateForMyProject(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1156
    const-string/jumbo v0, "MyProjects:TappedDuplicate"

    .line 1157
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1158
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1159
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1160
    const-string/jumbo v2, "hs.user.projects.project.attributes.projectId"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1162
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1163
    return-void
.end method

.method public didTapExport()V
    .locals 2

    .prologue
    .line 951
    const-string/jumbo v0, "ProjectEditor:TappedExport"

    .line 952
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 954
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 955
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureInDictionary(Ljava/util/Map;)V

    .line 957
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 958
    return-void
.end method

.method public didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2242
    const-string/jumbo v0, "Export:TappedExportDestination"

    .line 2243
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2245
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2246
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2247
    const-string/jumbo v2, "hs.project.export.privacy"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2249
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2250
    return-void
.end method

.method public didTapFinishingTouchesForSequenceWithDuration(DII)V
    .locals 5

    .prologue
    .line 1961
    const-string/jumbo v0, "ProjectEditor:TappedFinishingTouches"

    .line 1962
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1963
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1964
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1965
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.audio"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1966
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1968
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1969
    return-void
.end method

.method public didTapFinishingTouchesLooksMenu()V
    .locals 2

    .prologue
    .line 1974
    const-string/jumbo v0, "ProjectEditor:FinishingTouches:TappedLooksMenu"

    .line 1975
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1976
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1978
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1979
    return-void
.end method

.method public didTapGetStartedForGuide(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2840
    const-string/jumbo v0, "GuidesBrowser:TappedGetStarted"

    .line 2841
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuidesBrowserActions()Ljava/util/Map;

    move-result-object v1

    .line 2842
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2843
    const-string/jumbo v2, "hs.guides.guide.id"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2844
    const-string/jumbo v2, "hs.guides.guide.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2846
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2847
    return-void
.end method

.method public didTapGetStartedForNewProject(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1070
    const-string/jumbo v0, "MyProjects:NewProject:TappedGetStarted"

    .line 1071
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1072
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1073
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1074
    const-string/jumbo v2, "hs.project.attributes.title"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1076
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1077
    return-void
.end method

.method public didTapGuide(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2828
    const-string/jumbo v0, "GuidesBrowser:TappedGuide"

    .line 2829
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuidesBrowserActions()Ljava/util/Map;

    move-result-object v1

    .line 2830
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2831
    const-string/jumbo v2, "hs.guides.guide.id"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2832
    const-string/jumbo v2, "hs.guides.guide.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2834
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2835
    return-void
.end method

.method public didTapHomeInProjectEditor()V
    .locals 2

    .prologue
    .line 977
    const-string/jumbo v0, "ProjectEditor:TappedHome"

    .line 978
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 980
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 981
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureInDictionary(Ljava/util/Map;)V

    .line 983
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 984
    return-void
.end method

.method public didTapMediaPickerCreativeCloud()V
    .locals 2

    .prologue
    .line 1730
    const-string/jumbo v0, "ProjectEditor:MediaPicker:TappedCreativeCloud"

    .line 1731
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1732
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1734
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1735
    return-void
.end method

.method public didTapMediaPickerForSequenceWithDuration(DII)V
    .locals 5

    .prologue
    .line 1663
    const-string/jumbo v0, "ProjectEditor:TappedMediaPicker"

    .line 1664
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1665
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1666
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1667
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.audio"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1668
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1670
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1671
    return-void
.end method

.method public didTapMediaPickerOnMyDevice()V
    .locals 2

    .prologue
    .line 1676
    const-string/jumbo v0, "ProjectEditor:MediaPicker:TappedOnMyDevice"

    .line 1677
    const-string/jumbo v1, "MyDevice"

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectMediaSource(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1679
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1681
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1682
    return-void
.end method

.method public didTapMediaPickerRemoteSource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProjectEditor:MediaPicker:Tapped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1867
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1868
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1870
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1871
    return-void
.end method

.method public didTapMediaPickerTitle()V
    .locals 2

    .prologue
    .line 1833
    const-string/jumbo v0, "ProjectEditor:MediaPicker:TappedTitle"

    .line 1834
    const-string/jumbo v1, "Title"

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectMediaSource(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1836
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1838
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1839
    return-void
.end method

.method public didTapMediaPickerUseCamera()V
    .locals 2

    .prologue
    .line 1844
    const-string/jumbo v0, "ProjectEditor:MediaPicker:TappedUseCamera"

    .line 1845
    const-string/jumbo v1, "Camera"

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectMediaSource(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1847
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1849
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1850
    return-void
.end method

.method public didTapMoreApps()V
    .locals 2

    .prologue
    .line 3149
    const-string/jumbo v0, "App:Settings:TapMoreApps"

    .line 3151
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3152
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3154
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3155
    return-void
.end method

.method public didTapMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3235
    const-string/jumbo v0, "MyPublishedVideos:TappedVideo"

    .line 3236
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3238
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3239
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3241
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3242
    return-void
.end method

.method public didTapNewProject()V
    .locals 4

    .prologue
    .line 1059
    const-string/jumbo v0, "MyProjects:TappedNewProject"

    .line 1060
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1061
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1062
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1064
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1065
    return-void
.end method

.method public didTapOpenInSafariInOptionsForCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2677
    const-string/jumbo v0, "CommunityVideos:TappedOptions:TappedOpenInSafari"

    .line 2678
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2680
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2681
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2682
    const-string/jumbo v2, "hs.community.videos.video.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2684
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2685
    return-void
.end method

.method public didTapOptionsForCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2651
    const-string/jumbo v0, "CommunityVideos:TappedOptions"

    .line 2652
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2654
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2655
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2656
    const-string/jumbo v2, "hs.community.videos.video.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2658
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2659
    return-void
.end method

.method public didTapOptionsForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3247
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions"

    .line 3248
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3250
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3251
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3253
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3254
    return-void
.end method

.method public didTapPlayVideoInOptionsForCommunityVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2664
    const-string/jumbo v0, "CommunityVideos:TappedOptions:TappedPlayVideo"

    .line 2665
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v1

    .line 2667
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2668
    const-string/jumbo v2, "hs.community.videos.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2669
    const-string/jumbo v2, "hs.community.videos.video.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2671
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2672
    return-void
.end method

.method public didTapPosterFrameForMyProject(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1115
    const-string/jumbo v0, "MyProjects:TappedProject"

    .line 1116
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1117
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1118
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1119
    const-string/jumbo v2, "hs.user.projects.project.attributes.projectId"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1121
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1122
    return-void
.end method

.method public didTapPresentationMode()V
    .locals 2

    .prologue
    .line 2575
    const-string/jumbo v0, "ProjectEditor:TappedPresentationMode"

    .line 2576
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForPresentationAction()Ljava/util/Map;

    move-result-object v1

    .line 2578
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2580
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2581
    return-void
.end method

.method public didTapProjectTitleInProjectEditor()V
    .locals 2

    .prologue
    .line 863
    const-string/jumbo v0, "ProjectEditor:TappedProjectName"

    .line 864
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 865
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 867
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 868
    return-void
.end method

.method public didTapProjectTitleInProjectExport()V
    .locals 2

    .prologue
    .line 2217
    const-string/jumbo v0, "Export:TappedProjectName"

    .line 2218
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2219
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2221
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2222
    return-void
.end method

.method public didTapReplaceSoundtrack()V
    .locals 2

    .prologue
    .line 2080
    const-string/jumbo v0, "ProjectEditor:Soundtrack:TappedReplace"

    .line 2081
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2083
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2085
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2086
    return-void
.end method

.method public didTapResetTooltips()V
    .locals 2

    .prologue
    .line 3159
    const-string/jumbo v0, "App:Settings:ResetTooltips"

    .line 3160
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3161
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3163
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3164
    return-void
.end method

.method public didTapSettingsLink(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3168
    const-string/jumbo v0, "App:Settings:TapLink"

    .line 3169
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3170
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3171
    const-string/jumbo v2, "hs.settings.link"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3173
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3174
    return-void
.end method

.method public didTapShareDestinationForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3309
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:TappedShare:Destination:Tapped"

    .line 3310
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3312
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3313
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3314
    const-string/jumbo v2, "hs.user.published.videos.video.destination"

    invoke-direct {p0, p3, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3316
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3317
    return-void
.end method

.method public didTapShareForExportPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2360
    const-string/jumbo v0, "Export:UploadVideo:TappedShare"

    .line 2361
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2363
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2364
    const-string/jumbo v2, "CCV"

    const-string/jumbo v3, "hs.project.export.destination"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2365
    const-string/jumbo v2, "hs.project.export.video.ccvid"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2366
    const-string/jumbo v2, "hs.project.export.video.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2368
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2369
    return-void
.end method

.method public didTapShareInOptionsForMyPublishedVideoWithCCVID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3283
    const-string/jumbo v0, "MyPublishedVideos:TappedOptions:TappedShare"

    .line 3284
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyPublishedVideosAction()Ljava/util/Map;

    move-result-object v1

    .line 3286
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3287
    invoke-virtual {p0, p1, p2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3289
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3290
    return-void
.end method

.method public didTapShootForStorycardInSequenceWithDuration(DII)V
    .locals 5

    .prologue
    .line 1931
    const-string/jumbo v0, "ProjectEditor:Storycard:TappedShoot"

    .line 1932
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1933
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1934
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1935
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.videos"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1936
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.storycards"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1938
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1939
    return-void
.end method

.method public didTapSoundtrack()V
    .locals 2

    .prologue
    .line 2057
    const-string/jumbo v0, "ProjectEditor:TappedSoundtrack"

    .line 2058
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v1

    .line 2060
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2062
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2063
    return-void
.end method

.method public didTapSplitClipForClipType(Ljava/lang/String;DD)V
    .locals 4

    .prologue
    .line 1546
    const-string/jumbo v0, "ClipEditor:DuplicateMenu:TappedSplitClip"

    .line 1547
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1548
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1549
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1550
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.cti"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1551
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1553
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1554
    return-void
.end method

.method public didTapSyncCloudInProjectEditor()V
    .locals 2

    .prologue
    .line 888
    const-string/jumbo v0, "ProjectEditor:TappedSyncCloud"

    .line 889
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 890
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 892
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 893
    return-void
.end method

.method public didTapSyncDetailProjectResync()V
    .locals 2

    .prologue
    .line 928
    const-string/jumbo v0, "ProjectEditor:SyncStatus:SyncDetail:TappedResync"

    .line 929
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 930
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 932
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 933
    return-void
.end method

.method public didTapSyncErrorDeleteSoundtrack()V
    .locals 2

    .prologue
    .line 938
    const-string/jumbo v0, "ProjectEditor:SyncStatus:Soundtrack:TappedDelete"

    .line 939
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 941
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 943
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 944
    return-void
.end method

.method public didTapSyncStatusProjectCancelSync()V
    .locals 2

    .prologue
    .line 908
    const-string/jumbo v0, "ProjectEditor:SyncStatus:TappedCancelSync"

    .line 909
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 910
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 912
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 913
    return-void
.end method

.method public didTapSyncStatusProjectResync()V
    .locals 2

    .prologue
    .line 898
    const-string/jumbo v0, "ProjectEditor:SyncStatus:TappedResync"

    .line 899
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 900
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 902
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 903
    return-void
.end method

.method public didTapSyncStatusProjectSyncDetail()V
    .locals 2

    .prologue
    .line 918
    const-string/jumbo v0, "ProjectEditor:SyncStatus:TappedSyncDetail"

    .line 919
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorAction()Ljava/util/Map;

    move-result-object v1

    .line 920
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 922
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 923
    return-void
.end method

.method public didTapTitleForMyProject(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1192
    const-string/jumbo v0, "MyProjects:TappedProjectName"

    .line 1193
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1194
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1195
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1196
    const-string/jumbo v2, "hs.user.projects.project.attributes.projectId"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1198
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1199
    return-void
.end method

.method public didTapTryAGuide()V
    .locals 4

    .prologue
    .line 1082
    const-string/jumbo v0, "MyProjects:NewProject:TappedTryAGuide"

    .line 1083
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMyProjectsActions()Ljava/util/Map;

    move-result-object v1

    .line 1084
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1085
    iget v2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "hs.user.projects.count"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1087
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1088
    return-void
.end method

.method public didTapTurnIntoStorycardForClipType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1583
    const-string/jumbo v0, "ClipEditor:StorycardMenu:TappedTurnIntoStorycard"

    .line 1584
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1585
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1586
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1588
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1589
    return-void
.end method

.method public didTapVideoForGuide(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2852
    const-string/jumbo v0, "GuidesBrowser:TappedGuideVideo"

    .line 2853
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForGuidesBrowserActions()Ljava/util/Map;

    move-result-object v1

    .line 2854
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2855
    const-string/jumbo v2, "hs.guides.guide.id"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2856
    const-string/jumbo v2, "hs.guides.guide.title"

    invoke-direct {p0, p2, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2857
    const-string/jumbo v2, "hs.guides.guide.video.id"

    invoke-direct {p0, p3, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2858
    const-string/jumbo v2, "hs.guides.guide.video.title"

    invoke-direct {p0, p4, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2860
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2861
    return-void
.end method

.method public didToggleAddBumperSetting(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 3021
    const-string/jumbo v1, "App:Settings:BumperToggled%s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "On"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3022
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3023
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3025
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3026
    return-void

    .line 3021
    :cond_0
    const-string/jumbo v0, "Off"

    goto :goto_0
.end method

.method public didToggleAddWatermarkSetting(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 3030
    const-string/jumbo v1, "App:Settings:WatermarkToggled%s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "On"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3031
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3032
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3034
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3035
    return-void

    .line 3030
    :cond_0
    const-string/jumbo v0, "Off"

    goto :goto_0
.end method

.method public didToggleAutoExportForDestination(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2255
    const-string/jumbo v0, "Export:ToggledAutoExportDestination"

    .line 2256
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2258
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2259
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2261
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2262
    return-void
.end method

.method public didToggleClipAudioFadeIn(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1469
    const-string/jumbo v1, "ClipEditor:AudioMenu:ToggledFadeIn"

    .line 1470
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v2

    .line 1471
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1472
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1473
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.clip.audioFadeIn"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1474
    const-string/jumbo v0, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1476
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1477
    return-void

    .line 1472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleClipAudioFadeOut(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1482
    const-string/jumbo v1, "ClipEditor:AudioMenu:ToggledFadeOut"

    .line 1483
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v2

    .line 1484
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1485
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1486
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.clip.audioFadeOut"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1487
    const-string/jumbo v0, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1489
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1490
    return-void

    .line 1485
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleClipPlayAudio(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1420
    const-string/jumbo v1, "ClipEditor:AudioMenu:ToggledPlayAudio"

    .line 1421
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v2

    .line 1422
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1423
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1424
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.clip.playAudio"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1425
    const-string/jumbo v0, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1427
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1428
    return-void

    .line 1423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleClipSmartVolume(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1456
    const-string/jumbo v1, "ClipEditor:AudioMenu:ToggledSmartVolume"

    .line 1457
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v2

    .line 1458
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1459
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1460
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.clip.smartVolume"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1461
    const-string/jumbo v0, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p2, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1463
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1464
    return-void

    .line 1459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleFinishingTouchesCrossFade(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2030
    const-string/jumbo v1, "ProjectEditor:FinishingTouches:ToggledCrossFade"

    .line 2031
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v2

    .line 2032
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2033
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2034
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.crossFade"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2036
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2037
    return-void

    .line 2033
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleFinishingTouchesFadeIn(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1995
    const-string/jumbo v1, "ProjectEditor:FinishingTouches:ToggledFadeIn"

    .line 1996
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v2

    .line 1997
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1998
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1999
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.fadeIn"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2001
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2002
    return-void

    .line 1998
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleFinishingTouchesFadeOut(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2007
    const-string/jumbo v1, "ProjectEditor:FinishingTouches:ToggledFadeOut"

    .line 2008
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v2

    .line 2009
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2010
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2011
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.fadeOut"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2013
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2014
    return-void

    .line 2010
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleFinishingTouchesMotion(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2019
    const-string/jumbo v1, "ProjectEditor:FinishingTouches:ToggledMotion"

    .line 2020
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v2

    .line 2021
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2022
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2023
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.motion"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2025
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2026
    return-void

    .line 2022
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleMediaPickerType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProjectEditor:MediaPicker:OnMyDevice:SwitchTo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1721
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSequenceAction()Ljava/util/Map;

    move-result-object v1

    .line 1722
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1724
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1725
    return-void
.end method

.method public didToggleSoundtrackAutoMix(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2178
    const-string/jumbo v1, "ProjectEditor:Soundtrack:ToggledAutoMix"

    .line 2179
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v2

    .line 2180
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2181
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2182
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.soundtrack.autoMix"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2184
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2185
    return-void

    .line 2181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleSoundtrackFadeIn(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2154
    const-string/jumbo v1, "ProjectEditor:Soundtrack:ToggledFadeIn"

    .line 2155
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v2

    .line 2156
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2157
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2158
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.soundtrack.fadeIn"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2160
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2161
    return-void

    .line 2157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleSoundtrackFadeOut(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2166
    const-string/jumbo v1, "ProjectEditor:Soundtrack:ToggledFadeOut"

    .line 2167
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v2

    .line 2168
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2169
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2170
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.soundtrack.fadeOut"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2172
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2173
    return-void

    .line 2169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleSoundtrackSnapToBeat(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2189
    const-string/jumbo v1, "ProjectEditor:Soundtrack:ToggledSnapToBeat"

    .line 2190
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorSoundtrackAction()Ljava/util/Map;

    move-result-object v2

    .line 2191
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2192
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2193
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "hs.project.sequence.soundtrack.snapToBeat"

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2195
    invoke-static {v1, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2196
    return-void

    .line 2192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didToggleWifiOnly(Z)V
    .locals 4

    .prologue
    .line 3178
    const-string/jumbo v1, "App:Settings:WifiOnlyToggled%s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "On"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3179
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForMiscActions()Ljava/util/Map;

    move-result-object v1

    .line 3180
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 3182
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 3183
    return-void

    .line 3178
    :cond_0
    const-string/jumbo v0, "Off"

    goto :goto_0
.end method

.method public didTrimClipForClipType(Ljava/lang/String;Ljava/lang/Boolean;DDD)V
    .locals 5

    .prologue
    .line 1608
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ClipEditor:TrimmedClipInPoint"

    .line 1609
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1610
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1611
    const-string/jumbo v2, "hs.project.sequence.clip.attributes.type"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1612
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.inPoint"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1613
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1614
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.mediaDuration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1616
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1617
    return-void

    .line 1608
    :cond_0
    const-string/jumbo v0, "ClipEditor:TrimmedClipOutPoint"

    goto :goto_0
.end method

.method public didTwoFingerPan(DDD)V
    .locals 5

    .prologue
    .line 1634
    const-string/jumbo v0, "ClipEditor:TwoFingerPan"

    .line 1635
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForEditorClipAction()Ljava/util/Map;

    move-result-object v1

    .line 1636
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 1637
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.inPoint"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1638
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.duration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1639
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string/jumbo v3, "hs.project.sequence.clip.mediaDuration"

    invoke-direct {p0, v2, v3, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 1641
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 1642
    return-void
.end method

.method public didUploadVideoToExportDestination(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2312
    const-string/jumbo v0, "Export:UploadVideo:Success"

    .line 2313
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForExportAction()Ljava/util/Map;

    move-result-object v1

    .line 2315
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2316
    const-string/jumbo v2, "hs.project.export.destination"

    invoke-direct {p0, p1, v2, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2318
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2319
    return-void
.end method

.method public duplicateTargetCallToMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2751
    const-string/jumbo v1, "hs.testandtarget.action"

    .line 2752
    invoke-virtual {p0}, Lcom/adobe/premiereclip/metrics/Metrics;->contextDataForCommunityVideoAction()Ljava/util/Map;

    move-result-object v2

    .line 2753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".targetLocation"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".assignedGroup"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2757
    if-eqz p3, :cond_0

    .line 2758
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2760
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v4, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2764
    :cond_0
    const-string/jumbo v0, "TestAndTarget"

    .line 2765
    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->setActionName(Ljava/lang/String;Ljava/util/Map;)V

    .line 2767
    invoke-static {v0, v2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 2768
    return-void
.end method

.method public setCCVID(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3439
    const-string/jumbo v0, "hs.user.published.videos.video.ccvid"

    invoke-direct {p0, p1, v0, p3}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3440
    const-string/jumbo v0, "hs.user.published.videos.video.title"

    invoke-direct {p0, p2, v0, p3}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 3441
    return-void
.end method

.method public setCommonActionInfoInDictionary(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setUserIDInDictionary(Ljava/util/Map;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setLoginStateInDictionary(Ljava/util/Map;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductClientIDInDictionary(Ljava/util/Map;)V

    .line 179
    return-void
.end method

.method public setCommonStateInfoInDictionary(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setUserIDInDictionary(Ljava/util/Map;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setLoginStateInDictionary(Ljava/util/Map;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductCategoryInDictionary(Ljava/util/Map;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductVersionInDictionary(Ljava/util/Map;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductNamespaceInDictionary(Ljava/util/Map;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductLanguageInDictionary(Ljava/util/Map;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setProductClientIDInDictionary(Ljava/util/Map;)V

    .line 169
    return-void
.end method

.method public setCommunityVideosCount(I)V
    .locals 0

    .prologue
    .line 2810
    iput p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_communityVideosCount:I

    .line 2811
    return-void
.end method

.method public setConnectionState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentConnectionState:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setCrashlyticsProjectInfo()V
    .locals 0

    .prologue
    .line 3127
    return-void
.end method

.method public setCurrentProjectInfoWithTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectTitle:Ljava/lang/String;

    .line 573
    iput-object p2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectID:Ljava/lang/String;

    .line 574
    iput-object p3, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectExportTitle:Ljava/lang/String;

    .line 575
    iput-object p4, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_fromTemplate:Ljava/lang/Boolean;

    .line 576
    iput p5, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectType:I

    .line 577
    iput-object p6, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectOriginalTitle:Ljava/lang/String;

    .line 578
    iput-object p7, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectOriginalProjectID:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public setCurrentProjectMediaSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectMediaSource:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public setCurrentProjectSignatureWithVideoClips(IIIIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 603
    iput p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportVideoClips:I

    .line 604
    iput p2, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportStillImageClips:I

    .line 605
    iput p3, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportTitleClips:I

    .line 606
    iput p4, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numExportStorycardClips:I

    .line 607
    iput p5, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_numAudioClips:I

    .line 608
    iput-object p6, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_exportColorLook:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public setCurrentProjectType(I)V
    .locals 0

    .prologue
    .line 614
    iput p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentProjectType:I

    .line 615
    return-void
.end method

.method public setExportDestinationInfoInDictionary(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2424
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "hs.project.export.destination"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2425
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentExportPrivacy:Ljava/lang/String;

    const-string/jumbo v1, "hs.project.export.privacy"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/metrics/Metrics;->setObject(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 2426
    return-void
.end method

.method public setExportPrivacy(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_currentExportPrivacy:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public setGuidesCount(I)V
    .locals 0

    .prologue
    .line 2959
    iput p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_guidesCount:I

    .line 2960
    return-void
.end method

.method public setLoggingEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 299
    invoke-static {p1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->setDebugLogging(Ljava/lang/Boolean;)V

    .line 300
    return-void
.end method

.method public setMyProjectsCount(I)V
    .locals 0

    .prologue
    .line 1283
    iput p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myProjectsCount:I

    .line 1284
    return-void
.end method

.method public setMyPublishedVideosCount(I)V
    .locals 0

    .prologue
    .line 3433
    iput p1, p0, Lcom/adobe/premiereclip/metrics/Metrics;->_myPublishedVideosCount:I

    .line 3434
    return-void
.end method
