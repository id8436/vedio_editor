.class public Lcom/adobe/sync/database/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final COLUMN_ADOBE_ID:Ljava/lang/String; = "adobeId"

.field private static final COLUMN_ASSET_URL:Ljava/lang/String; = "assetURL"

.field private static final COLUMN_CLOUD_ID:Ljava/lang/String; = "cloudId"

.field private static final COLUMN_COMPONENT_ID:Ljava/lang/String; = "componentId"

.field private static final COLUMN_COMPOSITE_ID:Ljava/lang/String; = "compositeId"

.field private static final COLUMN_CREATED_DATE:Ljava/lang/String; = "createdDate"

.field private static final COLUMN_LOCAL_PATH:Ljava/lang/String; = "localPath"

.field private static final COLUMN_SERVER_HREF:Ljava/lang/String; = "serverHref"

.field private static final COLUMN_SYNC_STATUS:Ljava/lang/String; = "syncStatus"

.field private static final COLUMN_UCID:Ljava/lang/String; = "ucid"

.field private static final CREATE_SECONDARY_INDEX_COMPONENT_INFO:Ljava/lang/String; = "CREATE INDEX componentInfoIndex ON componentInfo(assetURL, createdDate)"

.field private static final CREATE_TABLE_COMPONENT_INFO:Ljava/lang/String; = "CREATE TABLE componentInfo(ucid TEXT PRIMARY KEY,assetURL TEXT,createdDate TEXT,localPath TEXT,syncStatus TEXT)"

.field private static final CREATE_TABLE_COMPONENT_WAITING:Ljava/lang/String; = "CREATE TABLE componentWaiting(compositeId TEXT,componentId TEXT PRIMARY KEY,ucid TEXT,serverHref TEXT,syncStatus TEXT,adobeId TEXT,cloudId TEXT)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "PremiereClip.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TABLE_COMPONENT_INFO:Ljava/lang/String; = "componentInfo"

.field private static final TABLE_COMPONENT_WAITING:Ljava/lang/String; = "componentWaiting"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 62
    const-string/jumbo v0, "PremiereClip.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public deleteComponentWaiting(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 201
    const-string/jumbo v3, "componentWaiting"

    const-string/jumbo v4, "componentId = ? "

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 204
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 207
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getComponentInfo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select * from componentInfo where ucid=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public getComponentInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select * from componentInfo where assetURL=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "createdDate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public getComponentWaiting(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select * from componentWaiting where componentId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public getComponentsWaiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select * from componentWaiting where ucid=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "adobeId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "cloudId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " =\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method public insertComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 93
    const-string/jumbo v2, "ucid"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getUCID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "assetURL"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v2, "createdDate"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v2, "localPath"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v2, "syncStatus"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "componentInfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 100
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public insertComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 109
    const-string/jumbo v2, "ucid"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getUCID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v2, "compositeId"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v2, "componentId"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, "syncStatus"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v2, "serverHref"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getServerHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "adobeId"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAdobeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v2, "cloudId"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCloudId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v2, "componentWaiting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 118
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public listComponentWaitingTable()V
    .locals 8

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "select * from componentWaiting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 215
    const-string/jumbo v0, "Sqlite-Unmanaged"

    const-string/jumbo v2, "printing sqlite table started..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 217
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 218
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    const-string/jumbo v5, "Sqlite-Unmanaged"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adobeId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string/jumbo v2, "Sqlite-Unmanaged"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cloudId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v2, "Sqlite-Unmanaged"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serverHref is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const-string/jumbo v0, "Sqlite-Unmanaged"

    const-string/jumbo v1, "printing sqlite table end..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "CREATE TABLE componentInfo(ucid TEXT PRIMARY KEY,assetURL TEXT,createdDate TEXT,localPath TEXT,syncStatus TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "CREATE INDEX componentInfoIndex ON componentInfo(assetURL, createdDate)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "CREATE TABLE componentWaiting(compositeId TEXT,componentId TEXT PRIMARY KEY,ucid TEXT,serverHref TEXT,syncStatus TEXT,adobeId TEXT,cloudId TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "DatabaseHelper"

    const-string/jumbo v1, "Sync: onUpgrade called, componentWaiting table will be deleted and recreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string/jumbo v0, "DROP TABLE IF EXISTS componentWaiting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "CREATE TABLE componentWaiting(compositeId TEXT,componentId TEXT PRIMARY KEY,ucid TEXT,serverHref TEXT,syncStatus TEXT,adobeId TEXT,cloudId TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public updateComponentInfo(Lcom/adobe/sync/database/ComponentInfoModel;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getUCID()Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 172
    const-string/jumbo v5, "localPath"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v5, "syncStatus"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v5, "componentInfo"

    const-string/jumbo v6, "ucid = ? "

    new-array v7, v1, [Ljava/lang/String;

    aput-object v3, v7, v0

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 175
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 178
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public updateComponentInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 159
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 160
    const-string/jumbo v4, "syncStatus"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v4, "componentInfo"

    const-string/jumbo v5, "ucid = ? "

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 162
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 165
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public updateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/adobe/sync/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 183
    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getComponentId()Ljava/lang/String;

    move-result-object v3

    .line 184
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 185
    const-string/jumbo v5, "syncStatus"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v5, "serverHref"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getServerHref()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v5, "cloudId"

    invoke-virtual {p1}, Lcom/adobe/sync/database/ComponentWaitingModel;->getCloudId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v5, "componentWaiting"

    const-string/jumbo v6, "componentId = ? "

    new-array v7, v1, [Ljava/lang/String;

    aput-object v3, v7, v0

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 190
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 193
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
