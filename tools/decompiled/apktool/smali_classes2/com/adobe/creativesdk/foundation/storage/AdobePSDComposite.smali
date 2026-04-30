.class public Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;
.super Ljava/lang/Object;
.source "AdobePSDComposite.java"


# instance fields
.field private _current:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

.field private _dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field private _psdHref:Ljava/lang/String;

.field private _pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

.field private _pushed:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setInitializeMetadataFromManifest(Z)V

    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assets/psd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDComposite.Constructor"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_psdHref:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    invoke-static {v0, v1, p2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromHref(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setInitializeMetadataFromManifest(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_psdHref:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_psdHref:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getStringByRemovingPercentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->getMD5HashOfString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setCompositeId(Ljava/lang/String;)V

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assets/psd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDComposite.Constructor"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDComposite.Constructor"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)V
    .locals 6

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const-string/jumbo v2, "application/vnd.adobe.psd+dcx"

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setInitializeMetadataFromManifest(Z)V

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assets/psd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->setVersion(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->setBounds(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)V

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "unmodified"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setCompositeState(Ljava/lang/String;)V

    .line 113
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDComposite.Constructor"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 105
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDComposite.Constructor"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getStringByRemovingPercentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDComposite.getStringByRemovingPercentEncoding"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptPushWithError()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->acceptPush()Z

    move-result v0

    return v0
.end method

.method public commitChanges()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z

    move-result v0

    return v0
.end method

.method public getCurrent()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_current:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_current:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    return-object v0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_current:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_current:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_current:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->setMutableDcxBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    goto :goto_0
.end method

.method getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    return-object v0
.end method

.method public getPsdHref()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_psdHref:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v2, "href"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_psdHref:Ljava/lang/String;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_psdHref:Ljava/lang/String;

    return-object v0

    .line 276
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getPulled()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    return-object v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    if-nez v1, :cond_1

    .line 180
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->setDcxBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    goto :goto_0
.end method

.method public getPushed()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pushed:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pushed:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    return-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pushed:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    if-nez v1, :cond_1

    .line 202
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pushed:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_pushed:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->setDcxBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    goto :goto_0
.end method

.method public removeLocalStorage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z

    move-result v0

    return v0
.end method

.method public resolvePulledBranch()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resolvePullWithBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Z

    move-result v0

    return v0
.end method

.method public setPsdHref(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getPsdHref()Ljava/lang/String;

    move-result-object v0

    .line 297
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 299
    :cond_1
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_psdHref:Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_3

    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resetBinding()V

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getStringByRemovingPercentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->getMD5HashOfString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setCompositeId(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getLinks()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_2

    .line 313
    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setLinks(Lorg/json/JSONObject;)V

    .line 320
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    new-instance v1, Ljava/net/URI;

    const-string/jumbo v2, "assets/psd"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->_dcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 326
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    move-result-object v0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->setName(Ljava/lang/String;)V

    .line 329
    :cond_3
    return-void

    .line 321
    :catch_0
    move-exception v0

    goto :goto_0
.end method
