.class public Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
.super Ljava/lang/Object;
.source "AdobeLibraryElement.java"


# instance fields
.field private mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 44
    return-void
.end method


# virtual methods
.method public addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public addTag(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 185
    return-void
.end method

.method public addTags(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 189
    return-void
.end method

.method public elementRepresentationsChanged()V
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 196
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 214
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_0

    .line 215
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 216
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllNodeDictKeys()Ljava/util/List;
    .locals 3
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
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :cond_0
    return-object v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "library#category"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "library#created"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->getLongVal(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDCXElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    const-string/jumbo v1, "Method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRepresentationOfType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModified()J
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "library#modified"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->getLongVal(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    return-object v0
.end method

.method public getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRepresentationWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRepresentations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "tags"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 115
    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNodeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public releaseDCXElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 204
    const-string/jumbo v0, "Method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 205
    return v1
.end method

.method public removeAllRepresentations()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 162
    return-void
.end method

.method public removeRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 193
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryElement when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 181
    return-void
.end method

.method public updateTimestampOnRemove()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
