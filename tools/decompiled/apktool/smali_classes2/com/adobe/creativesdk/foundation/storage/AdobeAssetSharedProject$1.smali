.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;
.super Ljava/lang/Object;
.source "AdobeAssetSharedProject.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

.field final synthetic val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

.field final synthetic val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v4

    .line 52
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponents()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 53
    :goto_0
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildren()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 54
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 60
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "primary"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;->getRasterTypes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "rendition"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "preview"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    move-object v2, v0

    .line 70
    :goto_2
    if-eqz v2, :cond_3

    .line 71
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_3
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSharedPage;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

    invoke-direct {v6, v0, v7, v2, v8}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSharedPage;-><init>(Ljava/lang/String;ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 73
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;)V

    .line 88
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 92
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponentsOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 95
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 98
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "primary"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;->getRasterTypes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "rendition"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_7
    move-object v2, v1

    .line 104
    :goto_5
    if-eqz v2, :cond_4

    .line 105
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_6
    new-instance v7, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSharedPage;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getAbsoluteIndex()J

    move-result-wide v8

    long-to-int v0, v8

    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

    invoke-direct {v7, v1, v0, v2, v8}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSharedPage;-><init>(Ljava/lang/String;ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 107
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 52
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    goto/16 :goto_0

    .line 53
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    goto/16 :goto_1

    .line 71
    :cond_a
    const-string/jumbo v0, "Creation"

    goto/16 :goto_3

    .line 105
    :cond_b
    const-string/jumbo v1, "Creation"

    goto :goto_6

    .line 111
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->val$that:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;

    iput-object v5, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject;->pages:Ljava/util/ArrayList;

    .line 115
    :cond_d
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    if-eqz v0, :cond_e

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSharedProject$1;->val$successCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;->onCompletion()V

    .line 117
    :cond_e
    return-void

    :cond_f
    move-object v2, v3

    goto :goto_5

    :cond_10
    move-object v2, v3

    goto/16 :goto_2
.end method
