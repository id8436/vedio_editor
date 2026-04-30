.class public Lcom/adobe/premiereclip/dcx/DCXModelController;
.super Ljava/lang/Object;
.source "DCXModelController.java"

# interfaces
.implements Lcom/adobe/sync/SyncController$ISyncControllerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/adobe/sync/SyncController$IDCXModelInterface;",
        ":",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/adobe/sync/SyncController$ISyncControllerInterface;"
    }
.end annotation


# static fields
.field private static final AdobeCacheDigestKey:Ljava/lang/String; = "AdobeCacheDigestKey"

.field private static final AdobeImageResultCompositeImageURLKey:Ljava/lang/String; = "compositeImageURL"

.field private static final DELETED_DIRECTORY_PREFIX:Ljava/lang/String; = "_deleted"

.field private static final PULLED_DIRECTORY_PREFIX:Ljava/lang/String; = "_pulled"

.field private static final SETTINGS_SYNC_ENABLED_ON_WIFI:Ljava/lang/String; = "PSMIXSettingsSyncEnabledOnWifi"

.field private static formatter:Ljava/text/SimpleDateFormat; = null

.field private static formatter2:Ljava/text/SimpleDateFormat; = null

.field private static instance:Lcom/adobe/premiereclip/dcx/DCXModelController; = null

.field private static final projectPathPrefix:Ljava/lang/String; = "Projects/v01"


# instance fields
.field private currentContext:Landroid/content/Context;

.field private currentUserId:Ljava/lang/String;

.field private dcxProjectManagetListener:Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;

.field private isProjectSyncing:Z

.field private isSyncEnabled:Z

.field private mBasicDCXModelList:Ljava/util/List;

.field private mCurrentOpenProjectPath:Ljava/lang/String;

.field private mInitalized:Z

.field private mLowDiskSpaceSyncStop:Z

.field private mPathToCompositionDirectory:Ljava/lang/String;

.field private mPathToUserCompositionDirectory:Ljava/lang/String;

.field private mPathToUserDeletedDirectory:Ljava/lang/String;

.field private mPathToUserPulledDirectory:Ljava/lang/String;

.field private mProjectHashPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSyncController:Lcom/adobe/sync/SyncController;

.field private mSyncInitialize:Z

.field private mTemporaryDirectory:Ljava/lang/String;

.field private preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

.field private projectPathIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

.field private projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

.field private projectsUpdateListiner:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;

.field private volatile refreshCloud:Z

.field private syncStatusChangeListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncStatusChangeListener;

.field private typeArgumentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter:Ljava/text/SimpleDateFormat;

    .line 99
    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter2:Ljava/text/SimpleDateFormat;

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter:Ljava/text/SimpleDateFormat;

    .line 104
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter2:Ljava/text/SimpleDateFormat;

    .line 106
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter2:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 112
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXModelController;

    const-class v1, Lcom/adobe/premiereclip/dcx/BasicDCXModel;

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->instance:Lcom/adobe/premiereclip/dcx/DCXModelController;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsUpdateListiner:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;

    .line 87
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    .line 88
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    .line 89
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->dcxProjectManagetListener:Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;

    .line 90
    iput-boolean v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->isProjectSyncing:Z

    .line 91
    iput-boolean v3, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncEnabled:Z

    .line 92
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mCurrentOpenProjectPath:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectPathIdMap:Ljava/util/HashMap;

    .line 94
    iput-boolean v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mLowDiskSpaceSyncStop:Z

    .line 95
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->currentContext:Landroid/content/Context;

    .line 96
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->currentUserId:Ljava/lang/String;

    .line 100
    iput-boolean v3, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->refreshCloud:Z

    .line 114
    iput-boolean v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    .line 115
    iput-boolean v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncInitialize:Z

    .line 117
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserPulledDirectory:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserDeletedDirectory:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mTemporaryDirectory:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    .line 130
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    .line 1623
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->syncStatusChangeListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncStatusChangeListener;

    .line 193
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->typeArgumentClass:Ljava/lang/Class;

    .line 194
    return-void
.end method

.method private addProjectPathToProjectId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectPathIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectPathIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :cond_0
    return-void
.end method

.method private createPathToUserCompositionDirectory(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1365
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1368
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    .line 1374
    :goto_0
    return-void

    .line 1372
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method private createPathToUserDeletedDirectory(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1390
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1394
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserDeletedDirectory:Ljava/lang/String;

    .line 1401
    :goto_0
    return-void

    .line 1398
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserDeletedDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method private createPathToUserDirectories(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1359
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->createPathToUserCompositionDirectory(Ljava/lang/String;)V

    .line 1360
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->createPathToUserPulledDirectory(Ljava/lang/String;)V

    .line 1361
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->createPathToUserDeletedDirectory(Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method private createPathToUserPulledDirectory(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1377
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_pulled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1381
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserPulledDirectory:Ljava/lang/String;

    .line 1387
    :goto_0
    return-void

    .line 1385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_pulled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserPulledDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method private generateDuplicateModelTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 969
    if-nez p1, :cond_0

    .line 970
    const-string/jumbo v0, ""

    .line 1010
    :goto_0
    return-object v0

    .line 993
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 994
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 995
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 998
    array-length v2, v4

    if-le v2, v6, :cond_1

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities;->isInteger(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1000
    :try_start_0
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1001
    const-string/jumbo v2, ""

    .line 1002
    const/4 v0, 0x0

    move v7, v0

    move-object v0, v2

    move v2, v7

    :goto_1
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1002
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_1

    .line 1006
    :catch_0
    move-exception v1

    .line 1007
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1010
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generateProjectId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1193
    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1195
    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    .line 1197
    const-string/jumbo v2, "%016x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->instance:Lcom/adobe/premiereclip/dcx/DCXModelController;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXModelController;

    const-class v1, Lcom/adobe/premiereclip/dcx/BasicDCXModel;

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->instance:Lcom/adobe/premiereclip/dcx/DCXModelController;

    .line 188
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->instance:Lcom/adobe/premiereclip/dcx/DCXModelController;

    return-object v0
.end method

.method private getModelInModelListFromPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 602
    :goto_0
    return-object v0

    .line 592
    :cond_0
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    monitor-enter v2

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 594
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 596
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 601
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getPosterComponentHashValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1124
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 1130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1131
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v3

    .line 1132
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1133
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const-string/jumbo v5, "rendition"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Poster"

    .line 1134
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1135
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v0

    .line 1140
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getProjectPositionInList(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1522
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 1538
    :goto_0
    return v0

    .line 1527
    :cond_0
    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    monitor-enter v3

    .line 1528
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1529
    const/4 v2, 0x0

    .line 1530
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1531
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 1532
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1533
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 1535
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1536
    goto :goto_1

    .line 1537
    :cond_2
    monitor-exit v3

    move v0, v1

    .line 1538
    goto :goto_0

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSyncController(Ljava/lang/String;)Lcom/adobe/sync/SyncController;
    .locals 1

    .prologue
    .line 292
    const-string/jumbo v0, "preferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    goto :goto_0
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1017
    :try_start_0
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1021
    :goto_0
    return-object v0

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method private pushProjectToServerWithoutUnlocking(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getSyncController(Ljava/lang/String;)Lcom/adobe/sync/SyncController;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-virtual {v0, p1}, Lcom/adobe/sync/SyncController;->pushDocumentForSync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeFromProjectPathIdMap(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectPathIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectPathIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_0
    return-void
.end method

.method private removeModelWIPId(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 2

    .prologue
    .line 955
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 957
    if-eqz v0, :cond_0

    .line 958
    const-string/jumbo v1, "psmix#behance_wip_id"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->remove(Ljava/lang/String;)V

    .line 960
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetIdentity(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 2

    .prologue
    .line 1167
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resetIdentity()V

    .line 1172
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v1}, Lcom/adobe/sync/SyncController;->getSyncGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1173
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1174
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetPathToDeletedDirectory()V
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserDeletedDirectory:Ljava/lang/String;

    .line 1356
    return-void
.end method

.method private resetPathToPulledDirectory()V
    .locals 1

    .prologue
    .line 1351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserPulledDirectory:Ljava/lang/String;

    .line 1352
    return-void
.end method

.method private resetPathToUserCompositionDirectory()V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    .line 1348
    return-void
.end method

.method private resetPathToUserDirectories()V
    .locals 0

    .prologue
    .line 1341
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->resetPathToUserCompositionDirectory()V

    .line 1342
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->resetPathToPulledDirectory()V

    .line 1343
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->resetPathToDeletedDirectory()V

    .line 1344
    return-void
.end method

.method private updateComponentsInDuplicatedProject(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 16

    .prologue
    .line 814
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 815
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getAllComponents()Ljava/util/List;

    move-result-object v2

    .line 816
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 818
    invoke-static {}, Lcom/adobe/sync/ComponentManagerHelper;->getInstance()Lcom/adobe/sync/ComponentManagerHelper;

    move-result-object v12

    .line 819
    invoke-virtual {v12}, Lcom/adobe/sync/ComponentManagerHelper;->initialize()V

    .line 820
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 821
    invoke-virtual {v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v10

    .line 822
    invoke-static {v7, v1}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v14

    .line 823
    if-eqz v14, :cond_0

    .line 824
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 825
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v2

    .line 826
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 827
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v5

    .line 828
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 829
    const/4 v9, 0x0

    .line 831
    const/4 v11, 0x0

    .line 833
    :try_start_0
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModel(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentWaitingModel;
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v11, v8

    .line 837
    :goto_1
    if-nez v11, :cond_2

    .line 838
    iget-object v8, v14, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    iget-object v11, v14, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 845
    :cond_1
    :goto_2
    invoke-virtual {v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 847
    :try_start_1
    move-object v0, v10

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 850
    :catch_0
    move-exception v2

    .line 851
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->printStackTrace()V

    goto :goto_0

    .line 834
    :catch_1
    move-exception v8

    .line 835
    invoke-virtual {v8}, Lcom/adobe/sync/DBException;->printStackTrace()V

    goto :goto_1

    .line 840
    :cond_2
    invoke-virtual {v11}, Lcom/adobe/sync/database/ComponentWaitingModel;->getUCID()Ljava/lang/String;

    move-result-object v8

    .line 841
    invoke-virtual {v11}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v15}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 842
    invoke-virtual {v11}, Lcom/adobe/sync/database/ComponentWaitingModel;->getServerHref()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 856
    :cond_3
    return-void
.end method

.method private updateCreationDateInModel(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/util/Date;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "TT;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setAutoRemoveUnusedLocalFiles(Z)V

    .line 1148
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 1150
    if-eqz v2, :cond_0

    .line 1151
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1152
    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXModelController;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1154
    :try_start_0
    const-string/jumbo v3, "createdDate"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1155
    const-string/jumbo v3, "lastModifiedDate"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :goto_0
    const-string/jumbo v1, "apc#properties"

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1161
    invoke-interface {p2, p3}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setCreationTS(Ljava/util/Date;)V

    .line 1163
    :cond_0
    return-void

    .line 1157
    :catch_0
    move-exception v1

    .line 1158
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addCacheImagePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 174
    const-string/jumbo v1, "compositeImageURL"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public addNewProject(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 442
    iget-boolean v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    if-nez v1, :cond_0

    .line 480
    :goto_0
    return v0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, p1

    .line 453
    check-cast v0, Ljava/lang/Comparable;

    .line 455
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 457
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 458
    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    monitor-enter v3

    .line 459
    :try_start_0
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    iget-object v4, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 460
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move v2, v1

    .line 461
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 463
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v1, v2, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 469
    add-int/lit8 v2, v2, -0x1

    .line 470
    goto :goto_1

    .line 471
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 475
    :goto_2
    if-eqz p2, :cond_3

    .line 477
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Ljava/lang/String;)V

    .line 479
    :cond_3
    if-nez p2, :cond_4

    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentID()Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->addProjectPathToProjectId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public changeCloud()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1795
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0}, Lcom/adobe/sync/SyncController;->stopMonitor()V

    .line 1796
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->stopMonitor()V

    .line 1797
    invoke-static {}, Lcom/adobe/sync/ComponentManagerHelper;->getInstance()Lcom/adobe/sync/ComponentManagerHelper;

    move-result-object v0

    .line 1798
    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper;->initialize()V

    .line 1799
    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper;->resetSyncOnChangeCloud()V

    .line 1800
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->currentContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->currentUserId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 1801
    iput-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    .line 1802
    iput-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    .line 1803
    return-void
.end method

.method public collectCloudSyncWithAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public currentOpenProjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mCurrentOpenProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public deleteProject(Lcom/adobe/sync/SyncController$IDCXModelInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    if-nez v0, :cond_0

    .line 703
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 629
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    .line 635
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    .line 637
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 640
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 641
    if-eqz v0, :cond_1

    .line 643
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 655
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mTemporaryDirectory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-static {v2, v1}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 663
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_1
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->removeFromProjectPathIdMap(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    const-string/jumbo v1, "PRClipModel"

    const-string/jumbo v2, "Delete: Composite not found. Failed to move files to temporary directory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 677
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserDeletedDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 682
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-static {v2, v1}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 687
    const-string/jumbo v1, "preferences"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 688
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->removeFromCompositeCache(Ljava/lang/String;)V

    .line 693
    :goto_2
    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getSyncController(Ljava/lang/String;)Lcom/adobe/sync/SyncController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->deleteDocumentAtPath(Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->reloadCollectionViewAfterDelete(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 696
    :catch_1
    move-exception v0

    .line 697
    const-string/jumbo v1, "PRClipModel"

    const-string/jumbo v2, "Delete: Composite found. Failed to move composite to temporary directory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 690
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adobe/sync/database/CompositeLoader;->removeFromCompositeCache(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public deleteProjectWithKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelInModelListFromPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v0

    .line 609
    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->deleteProject(Lcom/adobe/sync/SyncController$IDCXModelInterface;)V

    goto :goto_0
.end method

.method public duplicateModel(Lcom/adobe/sync/SyncController$IDCXModelInterface;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, -0x1

    .line 864
    iget-boolean v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    if-nez v1, :cond_0

    .line 929
    :goto_0
    return v0

    .line 868
    :cond_0
    invoke-static {}, Lcom/adobe/utility/AndroidMiscUtils;->getFreeDiskspace()J

    move-result-wide v2

    .line 869
    const-wide/32 v4, 0x3200000

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 871
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->showLowDiskSpaceAlert()V

    goto :goto_0

    .line 876
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->generateProjectId()Ljava/lang/String;

    move-result-object v1

    .line 879
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 884
    :try_start_0
    invoke-static {v0, v2}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 892
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setDocumentPath(Ljava/lang/String;)V

    .line 894
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 895
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 894
    invoke-virtual {p0, v2, v3, v4}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    .line 897
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->updateComponentsInDuplicatedProject(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 900
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentTitle()Ljava/lang/String;

    move-result-object v3

    .line 901
    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->generateDuplicateModelTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 904
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v2, v0, v4}, Lcom/adobe/premiereclip/dcx/DCXModelController;->updateCreationDateInModel(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/util/Date;)V

    .line 905
    invoke-virtual {p0, v2, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->updateModelTitleWithoutPushToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V

    .line 907
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resetIdentity()V

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "assets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v4}, Lcom/adobe/sync/SyncController;->getSyncGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 911
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V

    .line 913
    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setCompositeId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 916
    :try_start_2
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->reloadModelFromDisk(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/adobe/premiereclip/dcx/DCXModelException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 920
    :goto_2
    :try_start_3
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->addNewProject(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    goto/16 :goto_0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 917
    :catch_1
    move-exception v1

    .line 918
    :try_start_4
    const-string/jumbo v2, "PRClipModel"

    const-string/jumbo v3, "New Document path is null/empty while duplicating"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 924
    :catch_2
    move-exception v0

    .line 925
    const-string/jumbo v1, "PRClipModel"

    const-string/jumbo v2, "BasicDCXModel creation failure."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    const-string/jumbo v0, ""

    invoke-virtual {p0, v6, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->addNewProject(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public duplicateProjectWithKey(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelInModelListFromPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v0

    .line 804
    if-nez v0, :cond_0

    .line 805
    const/4 v0, -0x1

    .line 808
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->duplicateModel(Lcom/adobe/sync/SyncController$IDCXModelInterface;)I

    move-result v0

    goto :goto_0
.end method

.method public forceSync()V
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0}, Lcom/adobe/sync/SyncController;->forceSync()V

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    if-eqz v0, :cond_1

    .line 1810
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->forceSync()V

    .line 1812
    :cond_1
    return-void
.end method

.method public getBehanceWIPId(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1311
    const/4 v1, -0x1

    .line 1313
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 1315
    if-eqz v0, :cond_0

    .line 1316
    const-string/jumbo v2, "psmix#behance_wip_id"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1317
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1318
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1322
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getBrandingProjectId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1026
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1042
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    monitor-enter v3

    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1033
    const/4 v0, 0x0

    move v2, v0

    .line 1034
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1035
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 1036
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getProjectType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Branding"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1037
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    goto :goto_0

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1039
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1040
    goto :goto_1

    .line 1041
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 1042
    goto :goto_0
.end method

.method public getCachedImagePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    const-string/jumbo v2, ""

    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 140
    const-string/jumbo v1, "AdobeCacheDigestKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    :cond_0
    const-string/jumbo v1, "compositeImageURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    if-eqz v1, :cond_1

    .line 148
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 151
    const-string/jumbo v1, "compositeImageURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    const-string/jumbo v1, "AdobeCacheDigestKey"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 168
    :goto_0
    return-object v0

    .line 159
    :cond_2
    const-string/jumbo v1, "compositeImageURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string/jumbo v1, "AdobeCacheDigestKey"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0
.end method

.method public getCompositePulls()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1757
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1758
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v1}, Lcom/adobe/sync/SyncController;->getCompositePulls()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1759
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->getCompositePulls()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1760
    return-object v0
.end method

.method public getCompositePushes()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1764
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1765
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v1}, Lcom/adobe/sync/SyncController;->getCompositePushes()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1766
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->getCompositePushes()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1767
    return-object v0
.end method

.method public getDataset()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    return-object v0
.end method

.method public getLocalBytesConsumed(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1287
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorageBytesConsumed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLowDiskSpaceSyncStop()Z
    .locals 1

    .prologue
    .line 1674
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mLowDiskSpaceSyncStop:Z

    return v0
.end method

.method public getModelAtPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 412
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-object v1

    .line 418
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setDocumentPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    :try_start_1
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->reloadModelFromDisk(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/premiereclip/dcx/DCXModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v1, v0

    .line 432
    goto :goto_0

    .line 422
    :catch_0
    move-exception v2

    .line 423
    :try_start_2
    const-string/jumbo v3, "PRClipModel"

    const-string/jumbo v4, "Document path is null.empty while reading the project"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 426
    :catch_1
    move-exception v0

    .line 427
    const-string/jumbo v2, "PRClipModel"

    const-string/jumbo v3, "BasicDCXModel creation failure."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 429
    goto :goto_1
.end method

.method public getNumberOfLayers(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1207
    const/4 v3, 0x2

    .line 1209
    const/4 v2, 0x0

    .line 1210
    const-string/jumbo v5, ""

    .line 1212
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1215
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1217
    :goto_0
    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1222
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1229
    if-eqz v1, :cond_1

    .line 1230
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1238
    :cond_1
    :goto_1
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1239
    const-string/jumbo v0, "children"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v5

    move v1, v3

    move v3, v4

    .line 1241
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 1242
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1243
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "layers"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1244
    const-string/jumbo v2, "children"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1245
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v2, v4

    .line 1247
    :goto_3
    if-ge v2, v1, :cond_5

    .line 1248
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1250
    const-string/jumbo v7, "psmix#retouches"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v0

    if-nez v0, :cond_7

    .line 1251
    const/4 v0, 0x1

    .line 1247
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 1232
    :catch_0
    move-exception v1

    .line 1233
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1223
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1224
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1229
    if-eqz v1, :cond_2

    .line 1230
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    move-object v0, v5

    .line 1234
    goto :goto_1

    .line 1232
    :catch_2
    move-exception v0

    .line 1233
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v5

    .line 1235
    goto :goto_1

    .line 1225
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 1226
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1229
    if-eqz v1, :cond_3

    .line 1230
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_3
    move-object v0, v5

    .line 1234
    goto :goto_1

    .line 1232
    :catch_4
    move-exception v0

    .line 1233
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v5

    .line 1235
    goto :goto_1

    .line 1228
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1229
    :goto_7
    if-eqz v1, :cond_4

    .line 1230
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1235
    :cond_4
    :goto_8
    throw v0

    .line 1232
    :catch_5
    move-exception v1

    .line 1233
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1241
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1259
    :catch_6
    move-exception v0

    move v1, v3

    .line 1260
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1263
    :cond_6
    return v1

    .line 1259
    :catch_7
    move-exception v0

    goto :goto_9

    .line 1228
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 1225
    :catch_8
    move-exception v0

    goto :goto_6

    .line 1223
    :catch_9
    move-exception v0

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public getPathToCompositionDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getPathToUserCompositionDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getPathToUserDeletedDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserDeletedDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getPathToUserPulledDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserPulledDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectPathIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectPathIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 938
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProjectTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1272
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 1274
    if-eqz v0, :cond_0

    .line 1275
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1276
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1277
    check-cast v0, Ljava/lang/String;

    .line 1281
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/sync/SyncController;->getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnmanagedDataPathForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/sync/SyncController;->getUnmanagedDataPathForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initalize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->refreshCloud:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->refreshCloud:Z

    .line 207
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 226
    :cond_0
    invoke-static {p1}, Lcom/adobe/premiereclip/util/Utilities;->getDiskCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mTemporaryDirectory:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Projects/v01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToCompositionDirectory:Ljava/lang/String;

    .line 234
    :cond_2
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->createPathToUserDirectories(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mProjectHashPathMap:Ljava/util/Map;

    .line 239
    iput-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsUpdateListiner:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;

    .line 240
    iput-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    .line 241
    iput-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectPathIdMap:Ljava/util/HashMap;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    .line 245
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->currentContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->currentUserId:Ljava/lang/String;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    .line 249
    const-string/jumbo v0, "DCXModelController"

    const-string/jumbo v1, "DCXModelController initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public initializeModelFromDisk()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 366
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    if-nez v0, :cond_1

    .line 409
    :cond_0
    return-void

    .line 370
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 378
    if-eqz v4, :cond_0

    move v1, v2

    .line 379
    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    .line 380
    aget-object v3, v4, v1

    .line 382
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 382
    invoke-virtual {p0, v0, v5, v7}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setAutoRemoveUnusedLocalFiles(Z)V

    .line 387
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 392
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setDocumentPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 394
    :try_start_1
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->reloadModelFromDisk(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/premiereclip/dcx/DCXModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->addNewProject(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)I

    .line 379
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v3

    .line 396
    const-string/jumbo v5, "PRClipModel"

    const-string/jumbo v6, "New Document path is null.empty while reading the project"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 401
    :catch_1
    move-exception v0

    .line 402
    const-string/jumbo v3, "PRClipModel"

    const-string/jumbo v5, "BasicDCXModel creation failure."

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public initializeSync()V
    .locals 8

    .prologue
    .line 274
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initializeSyncEnabledFromPreferences()V

    .line 277
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 278
    new-instance v0, Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "adobe-premiereclip"

    .line 279
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserPulledDirectory()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserDeletedDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncEnabled()Z

    move-result v6

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/adobe/sync/SyncController;-><init>(Ljava/lang/String;Lcom/adobe/sync/SyncController$ISyncControllerInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    .line 281
    new-instance v0, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    const-string/jumbo v1, "adobe-premiereclip-preferences"

    .line 282
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserPulledDirectory()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserDeletedDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncEnabled()Z

    move-result v6

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;-><init>(Ljava/lang/String;Lcom/adobe/sync/SyncController$ISyncControllerInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0}, Lcom/adobe/sync/SyncController;->startMonitor()V

    .line 286
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->startMonitor()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncInitialize:Z

    .line 289
    :cond_0
    return-void
.end method

.method public initializeSyncEnabledFromPreferences()V
    .locals 3

    .prologue
    .line 1646
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1645
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1647
    const-string/jumbo v1, "PSMIXSettingsSyncEnabledOnWifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncEnabled:Z

    .line 1648
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    return v0
.end method

.method public isProjectSyncing()Z
    .locals 1

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->isProjectSyncing:Z

    return v0
.end method

.method public isSyncEnabled()Z
    .locals 1

    .prologue
    .line 1651
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncEnabled:Z

    return v0
.end method

.method public isSyncInitialized()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncInitialize:Z

    return v0
.end method

.method public loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1

    .prologue
    .line 1690
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getSyncController(Ljava/lang/String;)Lcom/adobe/sync/SyncController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1695
    :goto_0
    return-object v0

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    .line 1695
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public projectsUpdated()V
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsUpdateListiner:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsUpdateListiner:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;->projectsUpdated()V

    .line 1454
    :cond_0
    return-void
.end method

.method public pullStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->pullStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v0, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->pullStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 1480
    :cond_1
    return-void
.end method

.method public pullStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->pullStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v0, :cond_1

    .line 1498
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->pullStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1500
    :cond_1
    return-void
.end method

.method public pushProjectForPositionToServer(I)V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 487
    if-eqz v0, :cond_0

    .line 491
    :try_start_0
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->reloadModelFromDisk(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/premiereclip/dcx/DCXModelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void

    .line 492
    :catch_0
    move-exception v1

    .line 493
    const-string/jumbo v2, "PRClipModel"

    const-string/jumbo v3, "Document path is null.empty while reading the project"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 1

    .prologue
    .line 515
    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServerWithoutUnlocking(Ljava/lang/String;)V

    .line 520
    :cond_0
    return-void
.end method

.method public pushProjectToServer(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getSyncController(Ljava/lang/String;)Lcom/adobe/sync/SyncController;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    invoke-virtual {v0, p1}, Lcom/adobe/sync/SyncController;->unlockCompositeForProject(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p1}, Lcom/adobe/sync/SyncController;->acceptPulledBranchIfPresent(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p1}, Lcom/adobe/sync/SyncController;->acceptPushedBranchIfPresent(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0, p1}, Lcom/adobe/sync/SyncController;->pushDocumentForSync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->pushStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->pushStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 1471
    :cond_1
    return-void
.end method

.method public pushStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->pushStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->pushStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1490
    :cond_1
    return-void
.end method

.method public pushesOrPullsContainsCompositeId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/SyncController;->pushesOrPullsContainsCompositeId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->pushesOrPullsContainsCompositeId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushesOrPullsExist()Z
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0}, Lcom/adobe/sync/SyncController;->pushesOrPullsExist()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->pushesOrPullsExist()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushesOrPullsExist(Z)Z
    .locals 1

    .prologue
    .line 1779
    if-eqz p1, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0}, Lcom/adobe/sync/SyncController;->pushesOrPullsExist()Z

    move-result v0

    .line 1782
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushesOrPullsExist()Z

    move-result v0

    goto :goto_0
.end method

.method public refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1546
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->typeArgumentClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$IDCXModelInterface;

    .line 1547
    invoke-interface {v0, p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setDocumentPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1550
    :try_start_1
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->reloadModelFromDisk(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/premiereclip/dcx/DCXModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1555
    :goto_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPositionInList(Ljava/lang/String;)I

    move-result v1

    .line 1557
    if-ne v1, v4, :cond_2

    .line 1559
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->addNewProject(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)I

    .line 1565
    :goto_1
    sget-object v2, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    if-ne p2, v2, :cond_0

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->dcxProjectManagetListener:Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;

    if-eqz v1, :cond_0

    .line 1566
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPosterComponentHashValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1567
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->dcxProjectManagetListener:Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getRenditionPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;->updatePosterForProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    if-eqz v1, :cond_1

    .line 1570
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;->compositeRefreshed(Ljava/lang/String;)V

    .line 1578
    :cond_1
    :goto_2
    return-void

    .line 1551
    :catch_0
    move-exception v1

    .line 1552
    const-string/jumbo v2, "PRClipModel"

    const-string/jumbo v3, "Document path is null.empty while reading the project"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1573
    :catch_1
    move-exception v0

    .line 1574
    const-string/jumbo v1, "PRClipModel"

    const-string/jumbo v2, "BasicDCXModel creation failure."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1563
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public reloadCollectionViewAfterDelete(Z)V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method public reloadModelFromDisk(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/premiereclip/dcx/DCXModelException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1048
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXModelException;

    const-string/jumbo v1, "Document Path cannot be null/empty"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_1
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v6}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    .line 1055
    if-eqz v3, :cond_6

    .line 1057
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setAutoRemoveUnusedLocalFiles(Z)V

    .line 1059
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    .line 1060
    if-eqz v4, :cond_6

    .line 1063
    const-string/jumbo v0, "id"

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1064
    invoke-interface {p1, v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setDocumentID(Ljava/lang/String;)V

    .line 1067
    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1068
    invoke-interface {p1, v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setDocumentTitle(Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1074
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1075
    const-string/jumbo v1, "createdDate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1076
    const-string/jumbo v2, "lastModifiedDate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1077
    const-string/jumbo v5, "projectMode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1079
    if-eqz v1, :cond_2

    .line 1081
    :try_start_0
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setCreationTS(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 1088
    :try_start_1
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setLastModifiedTS(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1094
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1095
    invoke-interface {p1, v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setProjectMode(Ljava/lang/String;)V

    .line 1100
    :cond_4
    invoke-virtual {v4, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 1101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1102
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v2

    .line 1103
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1104
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    const-string/jumbo v5, "rendition"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Poster"

    .line 1105
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1107
    :try_start_2
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    invoke-interface {p1, v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setRenditionPath(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1120
    :cond_6
    :goto_2
    return-void

    .line 1082
    :catch_0
    move-exception v1

    .line 1083
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 1089
    :catch_1
    move-exception v1

    .line 1090
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 1111
    :catch_2
    move-exception v0

    .line 1112
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_2
.end method

.method public removePosterInModel(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 3

    .prologue
    .line 1732
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1734
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1754
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelInModelListFromPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v0

    .line 1739
    if-eqz v0, :cond_0

    .line 1742
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1743
    if-eqz v1, :cond_0

    .line 1744
    const-string/jumbo v2, "/poster"

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 1745
    if-eqz v2, :cond_0

    .line 1746
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1747
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setRenditionPath(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto :goto_0
.end method

.method public removeProjectFromList(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelInModelListFromPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v0

    .line 1508
    if-eqz v0, :cond_0

    .line 1509
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1510
    invoke-interface {v0}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->removeFromProjectPathIdMap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetControllerOnLogin()V
    .locals 0

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->uninitalize()V

    .line 314
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->uninitializeSync()V

    .line 316
    return-void
.end method

.method public resolveConflict(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 3

    .prologue
    .line 1680
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1681
    const-string/jumbo v1, "preferences"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1682
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergePreferences()V

    .line 1686
    :goto_0
    return-void

    .line 1684
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->doMerge()V

    goto :goto_0
.end method

.method public setBehanceWIPId(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getPathToUserCompositionDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1330
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1331
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "psmix#behance_wip_id"

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :goto_0
    return-void

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCurrentOpenProjectPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1428
    if-nez p1, :cond_1

    .line 1429
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mCurrentOpenProjectPath:Ljava/lang/String;

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1434
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    if-eqz v1, :cond_0

    .line 1435
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mCurrentOpenProjectPath:Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/SyncController;->lockCompositeForProject(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDCXProjectManagerListener(Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;)V
    .locals 0

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->dcxProjectManagetListener:Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;

    .line 1594
    return-void
.end method

.method public setLowDiskSpaceSyncStop(Z)V
    .locals 0

    .prologue
    .line 1669
    iput-boolean p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mLowDiskSpaceSyncStop:Z

    .line 1671
    return-void
.end method

.method public setProjectSyncing(Z)V
    .locals 1

    .prologue
    .line 1634
    iput-boolean p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->isProjectSyncing:Z

    .line 1635
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->syncStatusChangeListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncStatusChangeListener;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->syncStatusChangeListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncStatusChangeListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncStatusChangeListener;->syncStatusUpdated()V

    .line 1638
    :cond_0
    return-void
.end method

.method public setProjectsSyncStatusListener(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;)V
    .locals 0

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    .line 1586
    return-void
.end method

.method public setProjectsSyncStatusListenerForSyncIcon(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;)V
    .locals 0

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsSyncStatusListenerForSyncIcon:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;

    .line 1590
    return-void
.end method

.method public setProjectsUpdateListiner(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;)V
    .locals 0

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsUpdateListiner:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;

    .line 1582
    return-void
.end method

.method public setRefreshCloud(Z)V
    .locals 0

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->refreshCloud:Z

    .line 257
    return-void
.end method

.method public setSyncEnabled(Z)V
    .locals 2

    .prologue
    .line 1657
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1656
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1658
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1659
    const-string/jumbo v1, "PSMIXSettingsSyncEnabledOnWifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1661
    iput-boolean p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncEnabled:Z

    .line 1664
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/SyncController;->setNetworkPreference(Z)V

    .line 1665
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->setNetworkPreference(Z)V

    .line 1666
    return-void
.end method

.method public setSyncStatusCangeListener(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncStatusChangeListener;)V
    .locals 0

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->syncStatusChangeListener:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncStatusChangeListener;

    .line 1627
    return-void
.end method

.method public showLowDiskSpaceAlert()V
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsUpdateListiner:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->projectsUpdateListiner:Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;->showLowDiskSpaceAlert()V

    .line 1461
    :cond_0
    return-void
.end method

.method public syncHasFinished()V
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setProjectSyncing(Z)V

    .line 1424
    return-void
.end method

.method public syncHasStarted()V
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setProjectSyncing(Z)V

    .line 1419
    return-void
.end method

.method public trackComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1406
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1407
    if-eqz v1, :cond_0

    .line 1408
    const-string/jumbo v2, "psmix#sample_composition"

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1409
    const-string/jumbo v2, "psmix#sample_composition"

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return v0

    .line 1409
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uninitalize()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    .line 323
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->resetPathToUserDirectories()V

    .line 324
    return-void
.end method

.method public uninitializeSync()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0}, Lcom/adobe/sync/SyncController;->stopMonitor()V

    .line 304
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/PreferenceSyncController;->stopMonitor()V

    .line 306
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncController:Lcom/adobe/sync/SyncController;

    .line 307
    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->preferenceSyncController:Lcom/adobe/premiereclip/dcx/PreferenceSyncController;

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mSyncInitialize:Z

    .line 310
    :cond_0
    return-void
.end method

.method public updateModelTitle(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    if-nez v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 727
    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_0

    .line 731
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setAutoRemoveUnusedLocalFiles(Z)V

    .line 733
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_0

    .line 736
    const-string/jumbo v1, "name"

    invoke-virtual {v0, p2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    const-string/jumbo v1, "modified"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setCompositeState(Ljava/lang/String;)V

    .line 738
    invoke-interface {p1, p2}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setDocumentTitle(Ljava/lang/String;)V

    .line 739
    invoke-interface {p1}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServerWithoutUnlocking(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateModelTitleWithoutPushToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setAutoRemoveUnusedLocalFiles(Z)V

    .line 791
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_0

    .line 794
    const-string/jumbo v1, "name"

    invoke-virtual {v0, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    invoke-interface {p2, p3}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setDocumentTitle(Ljava/lang/String;)V

    .line 798
    :cond_0
    return-void
.end method

.method public updatePosterInModel(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1701
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1702
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setAutoRemoveUnusedLocalFiles(Z)V

    .line 1704
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mBasicDCXModelList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1707
    :cond_1
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelInModelListFromPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v9

    .line 1709
    if-eqz v9, :cond_0

    .line 1713
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 1714
    if-eqz v0, :cond_0

    .line 1716
    :try_start_0
    const-string/jumbo v1, "/poster"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 1717
    if-eqz v1, :cond_2

    .line 1718
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1723
    :goto_1
    invoke-interface {v9, p2}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setRenditionPath(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 1720
    :cond_2
    :try_start_1
    const-string/jumbo v1, "Poster"

    const/4 v2, 0x0

    const-string/jumbo v3, "image/jpeg"

    const-string/jumbo v4, "rendition"

    const-string/jumbo v5, "poster"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateProjectEditMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelInModelListFromPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v2

    .line 759
    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mInitalized:Z

    if-nez v0, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-interface {v2}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-interface {v2}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 763
    invoke-virtual {p0, v0, v1, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    .line 766
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setAutoRemoveUnusedLocalFiles(Z)V

    .line 768
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    .line 770
    if-eqz v4, :cond_2

    .line 771
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 773
    :try_start_0
    const-string/jumbo v1, "projectMode"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_1
    const-string/jumbo v1, "apc#properties"

    invoke-virtual {v4, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    invoke-interface {v2, p2}, Lcom/adobe/sync/SyncController$IDCXModelInterface;->setProjectMode(Ljava/lang/String;)V

    .line 782
    :cond_2
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushProjectToServer(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    .line 776
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateProjectTitleWithKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXModelController;->mPathToUserCompositionDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelInModelListFromPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v0

    .line 749
    if-nez v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 752
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->updateModelTitle(Lcom/adobe/sync/SyncController$IDCXModelInterface;Ljava/lang/String;)V

    goto :goto_0
.end method
