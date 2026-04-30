.class Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;
.super Ljava/lang/Object;
.source "BehanceSDKCCBrowserHeadlessFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

.field final synthetic val$imageFile:Ljava/io/File;

.field final synthetic val$index:I

.field final synthetic val$mixFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

.field final synthetic val$totalSize:I


# direct methods
.method constructor <init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;ILjava/io/File;I)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    iput-object p2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;->val$mixFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    iput p3, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;->val$index:I

    iput-object p4, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;->val$imageFile:Ljava/io/File;

    iput p5, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;->val$totalSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    .prologue
    const/high16 v3, 0x45200000    # 2560.0f

    .line 375
    .line 376
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;->val$mixFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;->val$index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;

    .line 377
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v2, v3, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    new-instance v3, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5$1;

    invoke-direct {v3, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5$1;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$5;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 415
    return-void
.end method
