.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;
.source "UploadAssetCellView.java"


# static fields
.field private static final kImageDisabledAlpha:F = 0.5f


# instance fields
.field private _progress:D

.field private _progress100Runnable:Ljava/lang/Runnable;

.field protected _uploadProgressBar:Landroid/widget/ProgressBar;

.field private _uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;-><init>()V

    .line 25
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->YetToStart:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    return-void
.end method

.method private setImageCellProgressState(Z)V
    .locals 1

    .prologue
    .line 50
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setImageAssetAlpha(F)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private setProgressColor(I)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected addProgressBarChildRule(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    return-void
.end method

.method protected createAttachProgressBarToView()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->createProgressBar(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->getProgressBarContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method protected createProgressBar(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_upload_progress_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 133
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->convertDpToPx(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->addProgressBarChildRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 142
    return-void
.end method

.method protected abstract getProgressBarContainer()Landroid/widget/RelativeLayout;
.end method

.method protected handleDisableChange()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected handleOnFinishInflate()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->handleOnFinishInflate()V

    .line 153
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->createAttachProgressBarToView()V

    .line 154
    return-void
.end method

.method public markUpload100Percent()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public markUploadAsInProgress()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 88
    const/16 v0, 0x20

    const/16 v1, 0x98

    const/16 v2, 0xf5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 89
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setProgressColor(I)V

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setImageCellProgressState(Z)V

    .line 91
    return-void
.end method

.method public markUploadComplete()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setImageCellProgressState(Z)V

    .line 55
    return-void
.end method

.method public markUploadError()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public markUploadQueued()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->markUploadAsInProgress()V

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setImageCellProgressState(Z)V

    .line 60
    return-void
.end method

.method protected providesSelection()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected setImageAssetAlpha(F)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->YetToStart:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->InProgress:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_1

    .line 39
    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 41
    :cond_1
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->setImageAssetAlpha(F)V

    .line 42
    return-void
.end method

.method public setUploadProgres(D)V
    .locals 3

    .prologue
    .line 113
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 115
    :goto_0
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->markUpload100Percent()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadProgressBar:Landroid/widget/ProgressBar;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 120
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUploadStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->YetToStart:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->markUploadQueued()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->markUploadComplete()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->markUploadError()V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Started:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->InProgress:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_0

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->markUploadAsInProgress()V

    goto :goto_0
.end method
