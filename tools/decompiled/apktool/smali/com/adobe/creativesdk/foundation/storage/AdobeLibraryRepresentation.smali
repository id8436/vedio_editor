.class public Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
.super Ljava/lang/Object;
.source "AdobeLibraryRepresentation.java"


# static fields
.field public static final AdobeLibraryRepresentationRelationshipTypeAlternate:Ljava/lang/String; = "alternate"

.field public static final AdobeLibraryRepresentationRelationshipTypePrimary:Ljava/lang/String; = "primary"

.field public static final AdobeLibraryRepresentationRelationshipTypeRendition:Ljava/lang/String; = "rendition"


# instance fields
.field private mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

.field protected mFilePath:Ljava/lang/String;

.field protected mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

.field protected mSourceHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 83
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 78
    return-void
.end method


# virtual methods
.method public clearOrder()V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 391
    return-void
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
    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    :cond_0
    return-object v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 268
    const-wide/16 v0, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    const-string/jumbo v0, "library#length"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->getLongVal(Ljava/lang/Object;)J

    move-result-wide v0

    .line 274
    :cond_0
    :goto_0
    return-wide v0

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentPath(Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 351
    const-string/jumbo v0, "getContentPath not valid on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 352
    return v1
.end method

.method public getContentURL()Ljava/net/URI;
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    const-string/jumbo v1, "getContentURL not valid on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    const-string/jumbo v1, "This method not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    const-string/jumbo v0, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "library#height"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 211
    :cond_0
    :goto_1
    return v1

    .line 206
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v1

    goto :goto_1
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 100
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setFilePath(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mSourceHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->setSourceHref(Ljava/lang/String;)V

    .line 110
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v1

    .line 104
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;)V

    goto :goto_0
.end method

.method public getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    return-object v0
.end method

.method public getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

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

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

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
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrder()I
    .locals 3

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    const-string/jumbo v0, "library#representationOrder"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_2

    .line 282
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    move v1, v0

    .line 288
    :cond_0
    :goto_1
    return v1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    const-string/jumbo v2, "library#representationOrder"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    const-string/jumbo v0, "library#rel"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    if-nez v0, :cond_0

    .line 175
    const-string/jumbo v0, "relationship"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepresentationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackingData()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 314
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 316
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getAllNodeDictKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    const-string/jumbo v3, "#trackingdata"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "#trackingdata"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 326
    :cond_1
    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "library#linktype"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    if-nez p2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-object v0

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 305
    const-string/jumbo v0, "%s#%s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    const-string/jumbo v1, "%s#%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    const-string/jumbo v0, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string/jumbo v0, "library#width"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 195
    :cond_0
    :goto_1
    return v1

    .line 190
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v1

    goto :goto_1
.end method

.method public haveLocalFile()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    const-string/jumbo v0, "haveLocalFile not valid on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 357
    return v1
.end method

.method public isCompatibleType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->isCompatibleType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExternalLink()Z
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullSize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    const-string/jumbo v0, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string/jumbo v0, "library#isfullSize"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    :cond_0
    return v1

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    const-string/jumbo v2, "library#isfullSize"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 252
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected setComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 1

    .prologue
    .line 394
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 396
    return-void
.end method

.method public setContentLength(J)V
    .locals 2

    .prologue
    .line 382
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 383
    return-void
.end method

.method protected setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mFilePath:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setFullSize(Z)V
    .locals 2

    .prologue
    .line 370
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 371
    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 379
    return-void
.end method

.method public setOrder(I)V
    .locals 2

    .prologue
    .line 386
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 387
    return-void
.end method

.method public setRelationship(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 367
    return-void
.end method

.method protected setSourceHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->mSourceHref:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 361
    const-string/jumbo v0, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 362
    return v1
.end method

.method public setWidth(I)V
    .locals 2

    .prologue
    .line 374
    const/4 v0, 0x0

    const-string/jumbo v1, "Setters not allowed on AdobeLibraryRepresentation when using deprecated immutable/mutable model."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyState(ZLjava/lang/String;)V

    .line 375
    return-void
.end method
