.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 543
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method perform(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 546
    invoke-static {p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 550
    if-eqz v2, :cond_1

    move-object v0, v1

    .line 555
    :goto_0
    if-eqz v2, :cond_2

    .line 557
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v1

    .line 564
    :cond_0
    :goto_1
    return-object v1

    .line 550
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1AssetFromCompositeImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getElementWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 559
    :cond_2
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->createAssetWithData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    move-result-object v1

    goto :goto_1
.end method
