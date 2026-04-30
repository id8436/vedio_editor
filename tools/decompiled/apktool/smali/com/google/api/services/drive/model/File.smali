.class public final Lcom/google/api/services/drive/model/File;
.super Lcom/google/api/client/json/GenericJson;
.source "File.java"


# instance fields
.field private appProperties:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private capabilities:Lcom/google/api/services/drive/model/File$Capabilities;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private contentHints:Lcom/google/api/services/drive/model/File$ContentHints;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private createdTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private explicitlyTrashed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileExtension:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private folderColorRgb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fullFileExtension:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private hasAugmentedPermissions:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private hasThumbnail:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private headRevisionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private iconLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private imageMediaMetadata:Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isAppAuthorized:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private lastModifyingUser:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private md5Checksum:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private modifiedByMe:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private modifiedByMeTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private modifiedTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private originalFilename:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private ownedByMe:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private owners:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private parents:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private quotaBytesUsed:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private shared:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sharedWithMeTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sharingUser:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private spaces:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private starred:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private teamDriveId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private thumbnailLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private thumbnailVersion:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private trashed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private trashedTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private trashingUser:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private version:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoMediaMetadata:Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private viewedByMe:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private viewedByMeTime:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private viewersCanCopyContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private webContentLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private webViewLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private writersCanShare:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 2631
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->clone()Lcom/google/api/services/drive/model/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->clone()Lcom/google/api/services/drive/model/File;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File;
    .locals 1

    .prologue
    .line 1399
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File;->clone()Lcom/google/api/services/drive/model/File;

    move-result-object v0

    return-object v0
.end method

.method public getAppProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->appProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCapabilities()Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->capabilities:Lcom/google/api/services/drive/model/File$Capabilities;

    return-object v0
.end method

.method public getContentHints()Lcom/google/api/services/drive/model/File$ContentHints;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->contentHints:Lcom/google/api/services/drive/model/File$ContentHints;

    return-object v0
.end method

.method public getCreatedTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->createdTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExplicitlyTrashed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->explicitlyTrashed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderColorRgb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->folderColorRgb:Ljava/lang/String;

    return-object v0
.end method

.method public getFullFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->fullFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getHasAugmentedPermissions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->hasAugmentedPermissions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHasThumbnail()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->hasThumbnail:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHeadRevisionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->headRevisionId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->iconLink:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageMediaMetadata()Lcom/google/api/services/drive/model/File$ImageMediaMetadata;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->imageMediaMetadata:Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    return-object v0
.end method

.method public getIsAppAuthorized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->isAppAuthorized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyingUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->lastModifyingUser:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public getMd5Checksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->md5Checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedByMe()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->modifiedByMe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getModifiedByMeTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->modifiedByMeTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getModifiedTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->modifiedTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->originalFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnedByMe()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->ownedByMe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOwners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->owners:Ljava/util/List;

    return-object v0
.end method

.method public getParents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->parents:Ljava/util/List;

    return-object v0
.end method

.method public getPermissionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 965
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->permissionIds:Ljava/util/List;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getQuotaBytesUsed()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->quotaBytesUsed:Ljava/lang/Long;

    return-object v0
.end method

.method public getShared()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->shared:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSharedWithMeTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->sharedWithMeTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getSharingUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->sharingUser:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getSpaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->spaces:Ljava/util/List;

    return-object v0
.end method

.method public getStarred()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->starred:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTeamDriveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->teamDriveId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->thumbnailLink:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailVersion()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->thumbnailVersion:Ljava/lang/Long;

    return-object v0
.end method

.method public getTrashed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->trashed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTrashedTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->trashedTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getTrashingUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->trashingUser:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->version:Ljava/lang/Long;

    return-object v0
.end method

.method public getVideoMediaMetadata()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->videoMediaMetadata:Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    return-object v0
.end method

.method public getViewedByMe()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->viewedByMe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getViewedByMeTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->viewedByMeTime:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getViewersCanCopyContent()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->viewersCanCopyContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWebContentLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->webContentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->webViewLink:Ljava/lang/String;

    return-object v0
.end method

.method public getWritersCanShare()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/google/api/services/drive/model/File;->writersCanShare:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File;
    .locals 1

    .prologue
    .line 1394
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    return-object v0
.end method

.method public setAppProperties(Ljava/util/Map;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->appProperties:Ljava/util/Map;

    .line 452
    return-object p0
.end method

.method public setCapabilities(Lcom/google/api/services/drive/model/File$Capabilities;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->capabilities:Lcom/google/api/services/drive/model/File$Capabilities;

    .line 471
    return-object p0
.end method

.method public setContentHints(Lcom/google/api/services/drive/model/File$ContentHints;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->contentHints:Lcom/google/api/services/drive/model/File$ContentHints;

    .line 490
    return-object p0
.end method

.method public setCreatedTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->createdTime:Lcom/google/api/client/util/DateTime;

    .line 507
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->description:Ljava/lang/String;

    .line 524
    return-object p0
.end method

.method public setExplicitlyTrashed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->explicitlyTrashed:Ljava/lang/Boolean;

    .line 543
    return-object p0
.end method

.method public setFileExtension(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->fileExtension:Ljava/lang/String;

    .line 562
    return-object p0
.end method

.method public setFolderColorRgb(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->folderColorRgb:Ljava/lang/String;

    .line 583
    return-object p0
.end method

.method public setFullFileExtension(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->fullFileExtension:Ljava/lang/String;

    .line 606
    return-object p0
.end method

.method public setHasAugmentedPermissions(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->hasAugmentedPermissions:Ljava/lang/Boolean;

    .line 625
    return-object p0
.end method

.method public setHasThumbnail(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->hasThumbnail:Ljava/lang/Boolean;

    .line 644
    return-object p0
.end method

.method public setHeadRevisionId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->headRevisionId:Ljava/lang/String;

    .line 663
    return-object p0
.end method

.method public setIconLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->iconLink:Ljava/lang/String;

    .line 680
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->id:Ljava/lang/String;

    .line 697
    return-object p0
.end method

.method public setImageMediaMetadata(Lcom/google/api/services/drive/model/File$ImageMediaMetadata;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->imageMediaMetadata:Lcom/google/api/services/drive/model/File$ImageMediaMetadata;

    .line 714
    return-object p0
.end method

.method public setIsAppAuthorized(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->isAppAuthorized:Ljava/lang/Boolean;

    .line 731
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->kind:Ljava/lang/String;

    .line 748
    return-object p0
.end method

.method public setLastModifyingUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->lastModifyingUser:Lcom/google/api/services/drive/model/User;

    .line 765
    return-object p0
.end method

.method public setMd5Checksum(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->md5Checksum:Ljava/lang/String;

    .line 784
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->mimeType:Ljava/lang/String;

    .line 807
    return-object p0
.end method

.method public setModifiedByMe(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->modifiedByMe:Ljava/lang/Boolean;

    .line 824
    return-object p0
.end method

.method public setModifiedByMeTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->modifiedByMeTime:Lcom/google/api/client/util/DateTime;

    .line 841
    return-object p0
.end method

.method public setModifiedTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->modifiedTime:Lcom/google/api/client/util/DateTime;

    .line 860
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->name:Ljava/lang/String;

    .line 881
    return-object p0
.end method

.method public setOriginalFilename(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->originalFilename:Ljava/lang/String;

    .line 900
    return-object p0
.end method

.method public setOwnedByMe(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->ownedByMe:Ljava/lang/Boolean;

    .line 917
    return-object p0
.end method

.method public setOwners(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/User;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .prologue
    .line 935
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->owners:Ljava/util/List;

    .line 936
    return-object p0
.end method

.method public setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .prologue
    .line 956
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->parents:Ljava/util/List;

    .line 957
    return-object p0
.end method

.method public setPermissionIds(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .prologue
    .line 973
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->permissionIds:Ljava/util/List;

    .line 974
    return-object p0
.end method

.method public setPermissions(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/Permission;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .prologue
    .line 992
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->permissions:Ljava/util/List;

    .line 993
    return-object p0
.end method

.method public setProperties(Ljava/util/Map;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->properties:Ljava/util/Map;

    .line 1012
    return-object p0
.end method

.method public setQuotaBytesUsed(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->quotaBytesUsed:Ljava/lang/Long;

    .line 1031
    return-object p0
.end method

.method public setShared(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->shared:Ljava/lang/Boolean;

    .line 1048
    return-object p0
.end method

.method public setSharedWithMeTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->sharedWithMeTime:Lcom/google/api/client/util/DateTime;

    .line 1065
    return-object p0
.end method

.method public setSharingUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->sharingUser:Lcom/google/api/services/drive/model/User;

    .line 1082
    return-object p0
.end method

.method public setSize(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->size:Ljava/lang/Long;

    .line 1101
    return-object p0
.end method

.method public setSpaces(Ljava/util/List;)Lcom/google/api/services/drive/model/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/File;"
        }
    .end annotation

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->spaces:Ljava/util/List;

    .line 1120
    return-object p0
.end method

.method public setStarred(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->starred:Ljava/lang/Boolean;

    .line 1137
    return-object p0
.end method

.method public setTeamDriveId(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->teamDriveId:Ljava/lang/String;

    .line 1154
    return-object p0
.end method

.method public setThumbnailLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->thumbnailLink:Ljava/lang/String;

    .line 1173
    return-object p0
.end method

.method public setThumbnailVersion(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->thumbnailVersion:Ljava/lang/Long;

    .line 1190
    return-object p0
.end method

.method public setTrashed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->trashed:Ljava/lang/Boolean;

    .line 1209
    return-object p0
.end method

.method public setTrashedTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->trashedTime:Lcom/google/api/client/util/DateTime;

    .line 1226
    return-object p0
.end method

.method public setTrashingUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->trashingUser:Lcom/google/api/services/drive/model/User;

    .line 1245
    return-object p0
.end method

.method public setVersion(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->version:Ljava/lang/Long;

    .line 1264
    return-object p0
.end method

.method public setVideoMediaMetadata(Lcom/google/api/services/drive/model/File$VideoMediaMetadata;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->videoMediaMetadata:Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    .line 1281
    return-object p0
.end method

.method public setViewedByMe(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->viewedByMe:Ljava/lang/Boolean;

    .line 1298
    return-object p0
.end method

.method public setViewedByMeTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->viewedByMeTime:Lcom/google/api/client/util/DateTime;

    .line 1315
    return-object p0
.end method

.method public setViewersCanCopyContent(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->viewersCanCopyContent:Ljava/lang/Boolean;

    .line 1334
    return-object p0
.end method

.method public setWebContentLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->webContentLink:Ljava/lang/String;

    .line 1353
    return-object p0
.end method

.method public setWebViewLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->webViewLink:Ljava/lang/String;

    .line 1370
    return-object p0
.end method

.method public setWritersCanShare(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File;
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/google/api/services/drive/model/File;->writersCanShare:Ljava/lang/Boolean;

    .line 1389
    return-object p0
.end method
