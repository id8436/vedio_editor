.class Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;
.super Ljava/lang/Object;
.source "BehanceSDKCCBrowserHeadlessFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

.field final synthetic val$imageFile:Ljava/io/File;

.field final synthetic val$index:I

.field final synthetic val$sketchBook:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

.field final synthetic val$totalSize:I


# direct methods
.method constructor <init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;ILjava/io/File;I)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    iput-object p2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;->val$sketchBook:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    iput p3, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;->val$index:I

    iput-object p4, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;->val$imageFile:Ljava/io/File;

    iput p5, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;->val$totalSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    const/high16 v3, 0x45200000    # 2560.0f

    .line 435
    .line 436
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;->val$sketchBook:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;->val$index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookPage;

    .line 438
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookPage;->_package:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 440
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v2, v3, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    new-instance v3, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7$1;

    invoke-direct {v3, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7$1;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$7;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookPage;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 478
    return-void
.end method
