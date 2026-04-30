.class public Lcom/adobe/sync/database/ComponentInfoModel;
.super Ljava/lang/Object;
.source "ComponentInfoModel.java"


# instance fields
.field private UCID:Ljava/lang/String;

.field private assetSyncStatus:Ljava/lang/String;

.field private assetURL:Ljava/lang/String;

.field private createdDate:Ljava/lang/String;

.field private localPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetSyncStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentInfoModel;->assetSyncStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentInfoModel;->assetURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentInfoModel;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentInfoModel;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentInfoModel;->UCID:Ljava/lang/String;

    return-object v0
.end method

.method public setAssetSyncStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentInfoModel;->assetSyncStatus:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setAssetURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentInfoModel;->assetURL:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentInfoModel;->createdDate:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentInfoModel;->localPath:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUCID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentInfoModel;->UCID:Ljava/lang/String;

    .line 23
    return-void
.end method
