.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;
.super Ljava/lang/Object;
.source "AdobeCCFilesEditSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

.field final synthetic val$size:I

.field final synthetic val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$size:I

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$size:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    invoke-direct {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;)V

    move-object v0, v1

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;)V

    .line 160
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$size:I

    if-ne v0, v1, :cond_1

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditCompletionHandled(Z)V

    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;->onComplete()V

    .line 167
    :goto_1
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    int-to-double v0, v0

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$size:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 165
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    invoke-interface {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;->onProgress(D)V

    goto :goto_1
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$size:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_1

    .line 175
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    invoke-direct {v1, v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;)V

    move-object v0, v1

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;)V

    .line 180
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$size:I

    if-ne v0, v1, :cond_2

    .line 181
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditCompletionHandled(Z)V

    .line 182
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;->onComplete()V

    .line 190
    :cond_0
    :goto_1
    return-void

    .line 177
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->val$targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditCompletionHandled(Z)V

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;->onAbort()V

    goto :goto_1
.end method
