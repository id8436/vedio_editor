.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;
.super Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;
.source "AdobeDynamicHeightImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->onMeasure(II)V

    .line 24
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->getSuggestedMinimumHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->getSuggestedMinimumWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeDynamicHeightImageView;->setMeasuredDimension(II)V

    .line 32
    :cond_1
    return-void
.end method
