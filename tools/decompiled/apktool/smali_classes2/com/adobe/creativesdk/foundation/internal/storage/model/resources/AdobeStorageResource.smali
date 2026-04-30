.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;
.super Ljava/lang/Object;
.source "AdobeStorageResource.java"


# instance fields
.field protected cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field public collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

.field public collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

.field public created:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public href:Ljava/net/URI;

.field public internalID:Ljava/lang/String;

.field public isCollection:Z

.field public links:Lorg/json/JSONObject;

.field public modified:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public ordinal:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_PRIVATE:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    .line 88
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_OWNER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    .line 96
    :cond_0
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->type:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->etag:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->created:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->created:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->modified:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->modified:Ljava/lang/String;

    .line 101
    iget-boolean v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->isCollection:Z

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->isCollection:Z

    .line 102
    iget-wide v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->ordinal:J

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->ordinal:J

    .line 103
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    .line 104
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 105
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    .line 107
    return-void
.end method


# virtual methods
.method public getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShared()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_PRIVATE:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 118
    return-void
.end method
