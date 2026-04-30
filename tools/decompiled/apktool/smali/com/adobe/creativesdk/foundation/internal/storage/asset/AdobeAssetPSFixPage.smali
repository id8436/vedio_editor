.class public Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
.source "AdobeAssetPSFixPage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public _package:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field public pageNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->name:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->pageNumber:I

    .line 19
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->GUID:Ljava/lang/String;

    .line 20
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
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->href:Ljava/net/URI;

    .line 21
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getHref()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->parentHref:Ljava/net/URI;

    .line 22
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->type:Ljava/lang/String;

    .line 23
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->etag:Ljava/lang/String;

    .line 24
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->md5Hash:Ljava/lang/String;

    .line 25
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->creationDate:Ljava/util/Date;

    .line 26
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->modificationDate:Ljava/util/Date;

    .line 27
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->_package:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 28
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 35
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixPage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 44
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method
