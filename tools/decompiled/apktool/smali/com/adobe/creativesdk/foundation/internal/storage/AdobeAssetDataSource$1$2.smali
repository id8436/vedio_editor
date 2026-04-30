.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;
.super Ljava/lang/Object;
.source "AdobeAssetDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

.field final synthetic val$itemArray:Ljava/util/ArrayList;

.field final synthetic val$packageObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->val$packageObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->val$itemArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->newData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->val$packageObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->numberProcessed:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->val$itemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->numberProcessed:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;)V

    .line 324
    :cond_0
    return-void
.end method
