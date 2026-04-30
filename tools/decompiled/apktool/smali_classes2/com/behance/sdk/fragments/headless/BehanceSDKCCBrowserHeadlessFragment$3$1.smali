.class Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;
.super Ljava/lang/Object;
.source "BehanceSDKCCBrowserHeadlessFragment.java"

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
.field final synthetic this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;


# direct methods
.method constructor <init>(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 318
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v1, v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->val$imageFile:Ljava/io/File;

    invoke-static {v0, p1, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$000(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;[BLjava/io/File;)V

    .line 327
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$100(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Lcom/behance/sdk/factory/IBehanceSDKImageValidator;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_1

    .line 329
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v1, v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v2, v2, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->val$imageFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$200(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Ljava/io/File;)Lcom/behance/sdk/factory/BehanceSDKImageProperties;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v2, v2, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/behance/sdk/factory/IBehanceSDKImageValidator;->validate(Landroid/content/Context;Lcom/behance/sdk/factory/BehanceSDKImageProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$300(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v1, v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->val$imageFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget v1, v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->val$totalSize:I

    invoke-static {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$500(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;I)V

    .line 340
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$400(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v1, v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->val$imageFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$300(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v1, v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->val$imageFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 6

    .prologue
    .line 344
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$600(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v1, v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->val$imageFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v1, v1, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    sget v2, Lcom/behance/sdk/R$string;->bsdk_cc_asset_browser_file_download_error:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v5, v5, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->val$imageFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$700(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$800(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->this$1:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;

    iget-object v0, v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->access$800(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;->onDownloadError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 348
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 318
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$3$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method
