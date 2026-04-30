.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;
.super Ljava/lang/Object;
.source "AdobeAssetSketchbook.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

.field final synthetic val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

.field final synthetic val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllChildren()Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    .line 52
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    if-eqz v2, :cond_5

    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getRootNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v5

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1$1;

    invoke-direct {v1, p0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;Ljava/util/Map;)V

    .line 70
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 75
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponentsOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 80
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "primary"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->getRasterTypes()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "rendition"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 91
    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    .line 92
    new-instance v7, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookPage;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getAbsoluteIndex()J

    move-result-wide v10

    long-to-int v0, v10

    add-int/lit8 v0, v0, 0x1

    iget-object v9, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-direct {v7, v8, v0, v1, v9}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookPage;-><init>(Ljava/lang/String;ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 94
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move-object v2, v3

    .line 51
    goto/16 :goto_0

    .line 101
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    iput-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;->pages:Ljava/util/ArrayList;

    .line 105
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;->onCompletion()V

    .line 109
    :cond_7
    return-void

    :cond_8
    move-object v1, v3

    goto :goto_2
.end method
