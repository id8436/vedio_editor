.class final Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController$1;
.super Ljava/lang/Object;
.source "AdobePhotoAssetViewerController.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->access$000()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;->handleAssetSelectionChanged()V

    .line 139
    return-void
.end method
