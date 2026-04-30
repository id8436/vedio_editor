.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;
.super Ljava/lang/Object;
.source "AdobeOneUpMultiPageViewPagerController.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<[B",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

.field final synthetic val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;

.field final synthetic val$dimension:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$dimension:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 5

    .prologue
    .line 288
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$dimension:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$position:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;[BLcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)V

    .line 289
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 281
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$dimension:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$position:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;[BLcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)V

    .line 294
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 5

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$dimension:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->val$position:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;[BLcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)V

    .line 299
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 281
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method
