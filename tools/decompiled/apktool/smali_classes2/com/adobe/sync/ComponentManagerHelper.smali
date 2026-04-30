.class public Lcom/adobe/sync/ComponentManagerHelper;
.super Ljava/lang/Object;
.source "ComponentManagerHelper.java"


# static fields
.field private static formatter:Ljava/text/SimpleDateFormat;

.field private static instance:Lcom/adobe/sync/ComponentManagerHelper;

.field private static isInitialized:Z


# instance fields
.field private currentDownloads:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/adobe/sync/ComponentManagerHelper$PairKey;",
            ">;"
        }
    .end annotation
.end field

.field private currentUploads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/adobe/sync/ComponentManagerHelper$PairKey;",
            "Lcom/adobe/sync/ComponentManagerHelper$PairValue;",
            ">;"
        }
    .end annotation
.end field

.field private databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/adobe/sync/ComponentManagerHelper;->instance:Lcom/adobe/sync/ComponentManagerHelper;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/sync/ComponentManagerHelper;->isInitialized:Z

    .line 30
    sput-object v1, Lcom/adobe/sync/ComponentManagerHelper;->formatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private getComponentInfoModelFromCursor(Landroid/database/Cursor;)Lcom/adobe/sync/database/ComponentInfoModel;
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-direct {v0}, Lcom/adobe/sync/database/ComponentInfoModel;-><init>()V

    .line 116
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setUCID(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetURL(Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setCreatedDate(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setLocalPath(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComponentWaitingModelFromCursor(Landroid/database/Cursor;)Lcom/adobe/sync/database/ComponentWaitingModel;
    .locals 2

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    new-instance v0, Lcom/adobe/sync/database/ComponentWaitingModel;

    invoke-direct {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;-><init>()V

    .line 101
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCompositeId(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setComponentId(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setUCID(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setServerHref(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAdobeId(Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCloudId(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/adobe/sync/ComponentManagerHelper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/adobe/sync/ComponentManagerHelper;->instance:Lcom/adobe/sync/ComponentManagerHelper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/adobe/sync/ComponentManagerHelper;

    invoke-direct {v0}, Lcom/adobe/sync/ComponentManagerHelper;-><init>()V

    sput-object v0, Lcom/adobe/sync/ComponentManagerHelper;->instance:Lcom/adobe/sync/ComponentManagerHelper;

    .line 39
    :cond_0
    sget-object v0, Lcom/adobe/sync/ComponentManagerHelper;->instance:Lcom/adobe/sync/ComponentManagerHelper;

    return-object v0
.end method

.method private insertOrUpdateComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->insertComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->updateComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z

    goto :goto_0
.end method

.method private insertOrUpdateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModel(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentWaitingModel;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->insertComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->updateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z

    goto :goto_0
.end method

.method private updateComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/database/DatabaseHelper;->updateComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z

    move-result v0

    .line 212
    return v0
.end method


# virtual methods
.method public clearOutComponentDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper$PairKey;-><init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    return-void
.end method

.method public deleteComponentWaiting(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/database/DatabaseHelper;->deleteComponentWaiting(Ljava/lang/String;)Z

    move-result v0

    .line 228
    return v0
.end method

.method public getAvailableHrefForUCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModelsForUCID(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/database/ComponentWaitingModel;

    .line 342
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v3}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    .line 344
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAdobeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCloudId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getServerHref()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentInfoModel(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 148
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/database/DatabaseHelper;->getComponentInfo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_1

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 151
    if-ne v0, v2, :cond_0

    .line 152
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    invoke-direct {p0, v1}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModelFromCursor(Landroid/database/Cursor;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 164
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    if-le v0, v2, :cond_1

    .line 160
    new-instance v0, Lcom/adobe/sync/DBException;

    const-string/jumbo v1, "duplicate entries for same assetUrl and createdDate present in database"

    invoke-direct {v0, v1}, Lcom/adobe/sync/DBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/sync/database/DatabaseHelper;->getComponentInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_1

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 130
    if-ne v0, v2, :cond_0

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    invoke-direct {p0, v1}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModelFromCursor(Landroid/database/Cursor;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 143
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 138
    if-le v0, v2, :cond_1

    .line 139
    new-instance v0, Lcom/adobe/sync/DBException;

    const-string/jumbo v1, "duplicate entries for same assetUrl and createdDate present in database"

    invoke-direct {v0, v1}, Lcom/adobe/sync/DBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentWaitingModel(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentWaitingModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/database/DatabaseHelper;->getComponentWaiting(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_1

    .line 171
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 172
    if-ne v0, v2, :cond_0

    .line 173
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    invoke-direct {p0, v1}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModelFromCursor(Landroid/database/Cursor;)Lcom/adobe/sync/database/ComponentWaitingModel;

    move-result-object v0

    .line 175
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    if-le v0, v2, :cond_1

    .line 181
    new-instance v0, Lcom/adobe/sync/DBException;

    const-string/jumbo v1, "duplicate entries for same assetUrl and createdDate present in database"

    invoke-direct {v0, v1}, Lcom/adobe/sync/DBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentWaitingModelsForUCID(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/sync/database/ComponentWaitingModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adobe/sync/database/DatabaseHelper;->getComponentsWaiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    if-eqz v0, :cond_1

    .line 194
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-direct {p0, v0}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModelFromCursor(Landroid/database/Cursor;)Lcom/adobe/sync/database/ComponentWaitingModel;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_1
    return-object v1
.end method

.method public initComponentDownloadFinish(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/sync/ComponentManagerHelper$PairKey;-><init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 295
    :cond_0
    if-nez p3, :cond_1

    .line 296
    invoke-direct {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->insertOrUpdateComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)V

    .line 297
    if-eqz p2, :cond_1

    .line 298
    invoke-direct {p0, p2}, Lcom/adobe/sync/ComponentManagerHelper;->insertOrUpdateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)V

    .line 301
    :cond_1
    return-void
.end method

.method public initComponentDownloadStart(Lcom/adobe/sync/database/ComponentInfoModel;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/sync/ComponentManagerHelper$PairKey;-><init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 284
    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->insertComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z

    .line 288
    :cond_1
    return-void
.end method

.method public initComponentUploadFinish(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/sync/ComponentManagerHelper$PairKey;-><init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentUploads:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentUploads:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_0
    if-nez p3, :cond_1

    .line 322
    invoke-direct {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->insertOrUpdateComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)V

    .line 323
    invoke-direct {p0, p2}, Lcom/adobe/sync/ComponentManagerHelper;->insertOrUpdateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)V

    .line 325
    :cond_1
    return-void
.end method

.method public initComponentUploadStart(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/sync/ComponentManagerHelper$PairKey;-><init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v1, Lcom/adobe/sync/ComponentManagerHelper$PairValue;

    invoke-virtual {p2}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/sync/database/ComponentWaitingModel;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/adobe/sync/ComponentManagerHelper$PairValue;-><init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentUploads:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentUploads:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v0

    .line 310
    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p0, p1}, Lcom/adobe/sync/ComponentManagerHelper;->insertComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z

    .line 313
    :cond_1
    invoke-direct {p0, p2}, Lcom/adobe/sync/ComponentManagerHelper;->insertOrUpdateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)V

    .line 314
    return-void
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 47
    sget-boolean v0, Lcom/adobe/sync/ComponentManagerHelper;->isInitialized:Z

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/adobe/sync/database/DatabaseHelper;

    .line 49
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/sync/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentUploads:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, d MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adobe/sync/ComponentManagerHelper;->formatter:Ljava/text/SimpleDateFormat;

    .line 54
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/sync/ComponentManagerHelper;->isInitialized:Z

    .line 55
    return-void
.end method

.method public insertComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/database/DatabaseHelper;->insertComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z

    move-result v0

    .line 207
    return v0
.end method

.method public insertComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/database/DatabaseHelper;->insertComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z

    move-result v0

    .line 223
    return v0
.end method

.method public isComponentDownloadRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper;->isFileExistLocally(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    new-instance v2, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    invoke-direct {v2, p0, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper$PairKey;-><init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v2}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFileExistLocally(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 234
    sget-object v2, Lcom/adobe/sync/ComponentManagerHelper;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadOfComponentInProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 328
    new-instance v0, Lcom/adobe/sync/ComponentManagerHelper$PairKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper$PairKey;-><init>(Lcom/adobe/sync/ComponentManagerHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentUploads:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentUploads:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/ComponentManagerHelper$PairValue;

    .line 331
    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper$PairValue;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper$PairValue;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 336
    :goto_0
    return v0

    .line 334
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 336
    goto :goto_0
.end method

.method public resetSyncOnChangeCloud()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentDownloads:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 357
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->currentUploads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 358
    return-void
.end method

.method public updateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/sync/DBException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adobe/sync/ComponentManagerHelper;->databaseHelper:Lcom/adobe/sync/database/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/adobe/sync/database/DatabaseHelper;->updateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z

    move-result v0

    .line 217
    return v0
.end method
