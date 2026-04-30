.class public Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
.source "AdobeAssetPSMixPage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public _package:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field public pageNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->name:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->pageNumber:I

    .line 22
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->GUID:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->href:Ljava/net/URI;

    .line 24
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getHref()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->parentHref:Ljava/net/URI;

    .line 25
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->type:Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->etag:Ljava/lang/String;

    .line 27
    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->md5Hash:Ljava/lang/String;

    .line 28
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->creationDate:Ljava/util/Date;

    .line 29
    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->modificationDate:Ljava/util/Date;

    .line 30
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->_package:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

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
    .line 38
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;

    if-eqz v0, :cond_0

    .line 39
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 46
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 47
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method
