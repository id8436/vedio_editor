.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;
.super Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetInternal;
.source "AdobeAsset.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected GUID:Ljava/lang/String;

.field protected creationDate:Ljava/util/Date;

.field protected etag:Ljava/lang/String;

.field protected href:Ljava/net/URI;

.field protected links:Lorg/json/JSONObject;

.field protected modificationDate:Ljava/util/Date;

.field protected name:Ljava/lang/String;

.field protected parentHref:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetInternal;-><init>()V

    .line 247
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 248
    return-void
.end method

.method public static getValidatedAssetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->validAssetName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->escapeAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    if-nez p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    if-ne p1, p0, :cond_2

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_2
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    if-eqz v1, :cond_0

    .line 221
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 223
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->GUID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->GUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->creationDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->creationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 168
    :cond_0
    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->GUID:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/net/URI;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->href:Ljava/net/URI;

    return-object v0
.end method

.method public getLinks()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->links:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->modificationDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->modificationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentHref()Ljava/net/URI;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->parentHref:Ljava/net/URI;

    return-object v0
.end method

.method protected getSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 264
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 265
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method protected setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 252
    return-void
.end method

.method protected setCreationDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->creationDate:Ljava/util/Date;

    .line 178
    return-void
.end method

.method protected setEtag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->etag:Ljava/lang/String;

    .line 137
    return-void
.end method

.method protected setGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->GUID:Ljava/lang/String;

    .line 83
    return-void
.end method

.method protected setHref(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->href:Ljava/net/URI;

    .line 101
    return-void
.end method

.method protected setModificationDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->modificationDate:Ljava/util/Date;

    .line 197
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->name:Ljava/lang/String;

    .line 156
    return-void
.end method

.method protected setParentHref(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->parentHref:Ljava/net/URI;

    .line 119
    return-void
.end method
