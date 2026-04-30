.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;
.source "AdobeOneUpViewerFilesConfiguration.java"


# instance fields
.field private assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private commentBottomBarId:I

.field private commentCountView:Landroid/widget/TextView;

.field private commentView:Landroid/widget/ImageView;

.field private dataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

.field private editBottomBarId:I

.field private infoBottomBarId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetFile()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public getCommentBottomBarId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->commentBottomBarId:I

    return v0
.end method

.method public getCommentCountView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->commentCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCommentView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->commentView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->dataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    return-object v0
.end method

.method public getEditBottomBarId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->editBottomBarId:I

    return v0
.end method

.method public getInfoBottomBarId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->infoBottomBarId:I

    return v0
.end method

.method public setAssetFile(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 46
    return-void
.end method

.method public setCommentBottomBarId(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->commentBottomBarId:I

    .line 66
    return-void
.end method

.method public setCommentCountView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->commentCountView:Landroid/widget/TextView;

    .line 82
    return-void
.end method

.method public setCommentView(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->commentView:Landroid/widget/ImageView;

    .line 90
    return-void
.end method

.method public setDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->dataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    .line 54
    return-void
.end method

.method public setEditBottomBarId(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->editBottomBarId:I

    .line 74
    return-void
.end method

.method public setInfoBottomBarId(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->infoBottomBarId:I

    .line 58
    return-void
.end method
