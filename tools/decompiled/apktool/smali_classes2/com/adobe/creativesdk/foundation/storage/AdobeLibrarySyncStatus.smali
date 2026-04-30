.class public Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;
.super Ljava/lang/Object;
.source "AdobeLibrarySyncStatus.java"


# instance fields
.field private lastSyncTime:Ljava/util/Date;

.field private syncing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->lastSyncTime:Ljava/util/Date;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->syncing:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getLastSyncTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->lastSyncTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->lastSyncTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public isSyncing()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->syncing:Z

    return v0
.end method

.method setLastSyncTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->lastSyncTime:Ljava/util/Date;

    .line 57
    return-void
.end method

.method setSyncing(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->syncing:Z

    .line 61
    return-void
.end method
