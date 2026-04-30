.class public Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"


# instance fields
.field canUploadRawData:Z

.field maxCatalogs:I

.field maxUsersPerCatalog:I

.field uploadsPerMonth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;->maxCatalogs:I

    .line 150
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;->maxUsersPerCatalog:I

    .line 151
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;->uploadsPerMonth:I

    .line 152
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;->canUploadRawData:Z

    return-void
.end method


# virtual methods
.method public getMaxCatalogs()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;->maxCatalogs:I

    return v0
.end method

.method public getMaxUsersPerCatalog()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;->maxUsersPerCatalog:I

    return v0
.end method

.method public getUploadsPerMonth()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;->uploadsPerMonth:I

    return v0
.end method

.method public isCanUploadRawData()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AccountLimits;->canUploadRawData:Z

    return v0
.end method
