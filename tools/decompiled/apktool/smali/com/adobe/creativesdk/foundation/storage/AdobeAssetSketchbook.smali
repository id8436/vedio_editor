.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
.source "AdobeAssetSketchbook.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;-><init>()V

    .line 139
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 133
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 125
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    if-eqz v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 146
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 147
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    .line 47
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V

    .line 114
    invoke-super {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 115
    return-void
.end method
