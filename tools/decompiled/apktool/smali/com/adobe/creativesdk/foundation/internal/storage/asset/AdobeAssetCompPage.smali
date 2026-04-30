.class public Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
.source "AdobeAssetCompPage.java"


# instance fields
.field public _package:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field public pageNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->name:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->pageNumber:I

    .line 22
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->GUID:Ljava/lang/String;

    .line 23
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getHref()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->href:Ljava/net/URI;

    .line 24
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getHref()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->parentHref:Ljava/net/URI;

    .line 25
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->type:Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->etag:Ljava/lang/String;

    .line 27
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->md5Hash:Ljava/lang/String;

    .line 28
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->creationDate:Ljava/util/Date;

    .line 29
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->modificationDate:Ljava/util/Date;

    .line 30
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;->_package:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 31
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompPage;

    if-eqz v0, :cond_0

    .line 42
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->hashCode()I

    move-result v0

    return v0
.end method
