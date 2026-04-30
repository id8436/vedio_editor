.class public Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;
.super Ljava/lang/Object;
.source "AdobePhoto.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field protected _GUID:Ljava/lang/String;

.field protected _baseHref:Ljava/lang/String;

.field protected _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field protected _creationDate:Ljava/util/Date;

.field protected _href:Ljava/lang/String;

.field protected _internalID:Ljava/lang/String;

.field protected _modificationDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_internalID:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_href:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_baseHref:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_creationDate:Ljava/util/Date;

    .line 68
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_modificationDate:Ljava/util/Date;

    .line 70
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-void
.end method


# virtual methods
.method public getBaseHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_baseHref:Ljava/lang/String;

    return-object v0
.end method

.method protected getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0
.end method

.method public getCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_internalID:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_internalID:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_href:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_href:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_baseHref:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_baseHref:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_creationDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_creationDate:Ljava/util/Date;

    .line 206
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_modificationDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_modificationDate:Ljava/util/Date;

    .line 207
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 209
    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_creationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_href:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_internalID:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_modificationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method protected getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypePhoto:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    return-object v0
.end method

.method public isEqualToPhoto(Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;)Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_internalID:Ljava/lang/String;

    .line 219
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    .line 220
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_href:Ljava/lang/String;

    .line 221
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_baseHref:Ljava/lang/String;

    .line 222
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_creationDate:Ljava/util/Date;

    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_modificationDate:Ljava/util/Date;

    .line 224
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 225
    return-void
.end method

.method public setBaseHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_baseHref:Ljava/lang/String;

    .line 135
    return-void
.end method

.method protected setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 183
    return-void
.end method

.method protected setCreationDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_creationDate:Ljava/util/Date;

    .line 151
    return-void
.end method

.method protected setGUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_href:Ljava/lang/String;

    .line 119
    return-void
.end method

.method protected setInternalID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_internalID:Ljava/lang/String;

    .line 87
    return-void
.end method

.method protected setModificationDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_modificationDate:Ljava/util/Date;

    .line 167
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_internalID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_GUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_href:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_baseHref:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_creationDate:Ljava/util/Date;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_modificationDate:Ljava/util/Date;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 240
    return-void
.end method
