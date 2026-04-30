.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;
.super Ljava/lang/Object;
.source "AdobeAssetDataSourceMgr.java"


# static fields
.field private static _sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;


# instance fields
.field _ccFilesChangedFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;

    .line 18
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;

    return-object v0
.end method


# virtual methods
.method public clearFolderAsChanged(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    :cond_0
    return-void

    .line 54
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isFolderMarkedAsChanged(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 27
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v2

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    if-eqz p2, :cond_2

    .line 36
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 31
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public setFolderAsChanged(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->isFolderMarkedAsChanged(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->_ccFilesChangedFolder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method
