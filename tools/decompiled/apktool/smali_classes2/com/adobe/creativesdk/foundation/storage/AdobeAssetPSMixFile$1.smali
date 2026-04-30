.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;
.super Ljava/lang/Object;
.source "AdobeAssetPSMixFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

.field final synthetic val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

.field final synthetic val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllChildren()Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    .line 56
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    if-eqz v2, :cond_6

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1$1;

    invoke-direct {v1, p0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;Ljava/util/Map;)V

    .line 73
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 79
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponentsOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 83
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 86
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "primary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->getRasterTypes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "rendition"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    .line 95
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getAbsoluteIndex()J

    move-result-wide v8

    long-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    invoke-direct {v6, v7, v8, v1, v9}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixPage;-><init>(Ljava/lang/String;ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 96
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 55
    goto/16 :goto_0

    .line 99
    :cond_5
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 106
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    iput-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;->pages:Ljava/util/ArrayList;

    .line 110
    :cond_7
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;->onCompletion()V

    .line 112
    :cond_8
    return-void

    :cond_9
    move-object v1, v3

    goto :goto_2
.end method
