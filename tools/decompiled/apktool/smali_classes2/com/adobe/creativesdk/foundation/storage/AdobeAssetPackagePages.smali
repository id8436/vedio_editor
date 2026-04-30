.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;
.source "AdobeAssetPackagePages.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;-><init>()V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 61
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    if-eqz v0, :cond_0

    .line 62
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->pages:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRasterTypes()Ljava/util/List;
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
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->getMimeType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->getMimeType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 85
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 86
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method setPages(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->pages:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public supportsSharedProjectType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method
