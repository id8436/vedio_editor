.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams.java"


# static fields
.field private static final DEFAULT_PAGE_SIZE:I = 0x18


# instance fields
.field private curatedGalleryId:I

.field private galleryType:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

.field private pageNumber:I

.field private pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getCuratedGalleryId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->curatedGalleryId:I

    return v0
.end method

.method public getGalleryType()Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->galleryType:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->pageNumber:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->pageSize:I

    if-lez v0, :cond_0

    .line 43
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->pageSize:I

    .line 45
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x18

    goto :goto_0
.end method

.method public setCuratedGalleryId(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->curatedGalleryId:I

    .line 59
    return-void
.end method

.method public setGalleryType(Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->galleryType:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    .line 67
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->pageNumber:I

    .line 39
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->pageSize:I

    .line 51
    return-void
.end method
