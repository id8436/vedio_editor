.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;
.super Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;
.source "AdobeAssetMultiRootedData.java"


# instance fields
.field GUID:Ljava/lang/String;

.field done:Z

.field endTime:Ljava/util/Date;

.field href:Ljava/net/URI;

.field startTime:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 46
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;

    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->GUID:Ljava/lang/String;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->done:Z

    return v0
.end method
