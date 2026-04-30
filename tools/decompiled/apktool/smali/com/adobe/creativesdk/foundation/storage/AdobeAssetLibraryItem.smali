.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
.super Ljava/lang/Object;
.source "AdobeAssetLibraryItem.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected creationDate:Ljava/util/Date;

.field protected itemID:Ljava/lang/String;

.field protected library:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;",
            ">;"
        }
    .end annotation
.end field

.field protected modificationDate:Ljava/util/Date;

.field protected name:Ljava/lang/String;

.field protected renditionName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 4

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string/jumbo v0, "library#created"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->getLongVal(Ljava/lang/Object;)J

    move-result-wide v0

    .line 133
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 134
    const-string/jumbo v0, "library#modified"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->getLongVal(Ljava/lang/Object;)J

    move-result-wide v0

    .line 135
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 136
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->name:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->renditionName:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->itemID:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->creationDate:Ljava/util/Date;

    .line 140
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->modificationDate:Ljava/util/Date;

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->library:Ljava/lang/ref/WeakReference;

    .line 143
    return-void
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->creationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getItemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->itemID:Ljava/lang/String;

    return-object v0
.end method

.method public getLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->library:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    return-object v0
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->modificationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getRenditionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->renditionName:Ljava/lang/String;

    return-object v0
.end method

.method public isEqualToAssetLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->itemID:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->itemID:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->itemID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nameOrIdForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->name:Ljava/lang/String;

    .line 161
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->renditionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->renditionName:Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->itemID:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setCreationDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->creationDate:Ljava/util/Date;

    .line 101
    return-void
.end method

.method protected setItemID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->itemID:Ljava/lang/String;

    .line 97
    return-void
.end method

.method protected setLibrary(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->library:Ljava/lang/ref/WeakReference;

    .line 109
    return-void
.end method

.method protected setModificationDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->modificationDate:Ljava/util/Date;

    .line 105
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method protected setRenditionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->renditionName:Ljava/lang/String;

    .line 113
    return-void
.end method
