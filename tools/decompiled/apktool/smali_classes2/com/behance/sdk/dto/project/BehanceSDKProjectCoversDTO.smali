.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;
.super Ljava/lang/Object;
.source "BehanceSDKProjectCoversDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NUMBER_OF_COVERIMAGES:I = 0x4

.field public static final ORIGINAL:Ljava/lang/String; = "original"

.field public static final SIZE_115:I = 0x73

.field public static final SIZE_202:I = 0xca

.field public static final SIZE_230:I = 0xe6

.field public static final SIZE_404:I = 0x194

.field private static final serialVersionUID:J = -0x67cbd2c66553f590L


# instance fields
.field private coverImages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;",
            ">;"
        }
    .end annotation
.end field

.field private originalUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    return-void
.end method

.method private findCoverImageInDecreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;
    .locals 5

    .prologue
    const/16 v4, 0xe6

    const/16 v3, 0xca

    const/16 v2, 0x73

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 80
    if-nez v0, :cond_0

    if-le p1, v4, :cond_0

    .line 81
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 83
    :cond_0
    if-nez v0, :cond_1

    if-le p1, v3, :cond_1

    .line 84
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 86
    :cond_1
    if-nez v0, :cond_2

    if-le p1, v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 89
    :cond_2
    if-nez v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 92
    :cond_3
    return-object v0
.end method

.method private findCoverImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;
    .locals 4

    .prologue
    const/16 v3, 0xe6

    const/16 v2, 0xca

    const/16 v1, 0x73

    .line 62
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 63
    if-nez v0, :cond_1

    if-gt p1, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    if-nez v0, :cond_2

    if-gt p1, v2, :cond_2

    .line 67
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    goto :goto_0

    .line 69
    :cond_2
    if-nez v0, :cond_3

    if-gt p1, v3, :cond_3

    .line 70
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    goto :goto_0

    .line 72
    :cond_3
    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    goto :goto_0
.end method


# virtual methods
.method public addCoverImages(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->coverImages:Landroid/util/SparseArray;

    invoke-static {p2}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getNewInstance(Ljava/lang/String;)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method

.method public findCoverImageInIncreasingSizeOrderAndFallback(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->findCoverImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->findCoverImageInDecreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v0

    .line 100
    :cond_0
    return-object v0
.end method

.method public getOriginalCoverImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setOriginalCoverImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->originalUrl:Ljava/lang/String;

    .line 55
    return-void
.end method
