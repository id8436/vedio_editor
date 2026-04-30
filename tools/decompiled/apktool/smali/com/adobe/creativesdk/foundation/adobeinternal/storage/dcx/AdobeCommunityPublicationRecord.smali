.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;
.super Ljava/lang/Object;
.source "AdobeCommunityPublicationRecord.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobePublicationRecordProtocol;


# instance fields
.field public alias:Ljava/lang/String;

.field private artwork:Ljava/lang/String;

.field private artworkVersion:Ljava/lang/String;

.field private assetId:Ljava/lang/String;

.field public categoryId:Ljava/lang/String;

.field public communityId:Ljava/lang/String;

.field private copyNewArtworkFile:Z

.field public creatorIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public custom:Ljava/lang/Object;

.field public desc:Ljava/lang/String;

.field public discoverable:Z

.field private mainResource:Ljava/lang/String;

.field private mainResourceVersion:Ljava/lang/String;

.field private newArtworkComponentId:Ljava/lang/String;

.field private newArtworkFile:Ljava/lang/String;

.field private newArtworkFileType:Ljava/lang/String;

.field private resourcePath:Ljava/lang/String;

.field public subCategoryIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Lorg/json/JSONArray;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->title:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->discoverable:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->communityId:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->title:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->discoverable:Z

    .line 99
    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getArtwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->artwork:Ljava/lang/String;

    return-object v0
.end method

.method public getArtworkComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkComponentId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtworkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->artworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->assetId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->creatorIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCustom()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->custom:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataForCreation()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorInvalidPublicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v2, "title is missing"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->communityId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->communityId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 205
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorInvalidPublicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v2, "communityId is missing"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 211
    :try_start_0
    const-string/jumbo v1, "metadata"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->getMetadata()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string/jumbo v1, "communityId"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->communityId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 214
    const-string/jumbo v1, "new-artwork-file"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string/jumbo v1, "new-artwork-type"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFileType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    :cond_4
    :goto_0
    return-object v0

    .line 216
    :cond_5
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkComponentId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 217
    const-string/jumbo v1, "new-artwork-component-id"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkComponentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorMissingJSONData:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;)V

    throw v0
.end method

.method public getDataForUpdate()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 230
    :try_start_0
    const-string/jumbo v1, "metadata"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->getMetadata()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 232
    const-string/jumbo v1, "new-artwork-file"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string/jumbo v1, "new-artwork-type"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFileType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkComponentId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 235
    const-string/jumbo v1, "new-artwork-component-id"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkComponentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorMissingJSONData:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;)V

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->desc:Ljava/lang/String;

    return-object v0
.end method

.method protected getMetadata()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    const-string/jumbo v0, "title"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->alias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    const-string/jumbo v0, "alias"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->alias:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->artwork:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->artworkVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 163
    const-string/jumbo v2, "resource_path"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->artwork:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string/jumbo v2, "resource_version"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->artworkVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string/jumbo v2, "artwork"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->tags:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 168
    const-string/jumbo v0, "tags"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->tags:Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->desc:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 171
    const-string/jumbo v0, "description"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->categoryId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 174
    const-string/jumbo v0, "category_id"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->categoryId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->subCategoryIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 177
    const-string/jumbo v0, "sub_category_ids"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->subCategoryIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->creatorIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 180
    const-string/jumbo v0, "creator_ids"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->creatorIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->custom:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 183
    const-string/jumbo v0, "custom"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->custom:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_7
    const-string/jumbo v2, "undiscoverable"

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->discoverable:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->mainResource:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->mainResourceVersion:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 188
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 189
    const-string/jumbo v2, "resource_path"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->mainResource:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string/jumbo v2, "resource_version"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->mainResourceVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v2, "main_resource"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_8
    return-object v1

    .line 185
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategoryIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->subCategoryIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTags()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->tags:Lorg/json/JSONArray;

    return-object v0
.end method

.method public isDiscoverable()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->discoverable:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->alias:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setArtworkComponentId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkComponentId:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkComponentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    .line 125
    :cond_0
    return-void
.end method

.method public setArtworkFile(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFileType:Ljava/lang/String;

    .line 110
    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->copyNewArtworkFile:Z

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkComponentId:Ljava/lang/String;

    .line 116
    :cond_0
    return-void
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->assetId:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->categoryId:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setCreatorIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->creatorIds:Ljava/util/ArrayList;

    .line 322
    return-void
.end method

.method public setCustom(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->custom:Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->desc:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setDiscoverable(Z)V
    .locals 0

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->discoverable:Z

    .line 314
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->resourcePath:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setSubCategoryIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->subCategoryIds:Ljava/util/ArrayList;

    .line 298
    return-void
.end method

.method public setTags(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->tags:Lorg/json/JSONArray;

    .line 330
    return-void
.end method

.method public stageResourcesAt(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    .line 135
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->copyNewArtworkFile:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageFileUtils;->copyFileAtomicallyFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 143
    :goto_0
    if-eqz v0, :cond_2

    .line 144
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityPublicationRecord;->newArtworkFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageFileUtils;->moveFileAtomicallyFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 146
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorFileWriteFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v2, "Staging copy/move failed"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeCommunityException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;Ljava/lang/String;)V

    throw v0
.end method
