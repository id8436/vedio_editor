.class public Lcom/adobe/sync/database/ComponentWaitingModel;
.super Ljava/lang/Object;
.source "ComponentWaitingModel.java"


# instance fields
.field private UCID:Ljava/lang/String;

.field private adobeId:Ljava/lang/String;

.field private assetSyncStatus:Ljava/lang/String;

.field private cloudId:Ljava/lang/String;

.field private componentId:Ljava/lang/String;

.field private compositeId:Ljava/lang/String;

.field private serverHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdobeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->adobeId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetSyncStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->assetSyncStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->cloudId:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->componentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompositeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->compositeId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->serverHref:Ljava/lang/String;

    return-object v0
.end method

.method public getUCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->UCID:Ljava/lang/String;

    return-object v0
.end method

.method public setAdobeId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->adobeId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setAssetSyncStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->assetSyncStatus:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCloudId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->cloudId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setComponentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->componentId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setCompositeId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->compositeId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setServerHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->serverHref:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUCID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/adobe/sync/database/ComponentWaitingModel;->UCID:Ljava/lang/String;

    .line 41
    return-void
.end method
