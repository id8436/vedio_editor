.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;
.super Ljava/lang/Object;
.source "AdobeLibraryManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

.field final synthetic val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 852
    if-eqz p1, :cond_2

    .line 853
    check-cast p1, Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 855
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 858
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 860
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMerger;->determineComponentsWithoutLocalCopy(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/util/List;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_0

    .line 863
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 864
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentNodeOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 870
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 871
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getBase()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v5

    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;

    invoke-direct {v6, p0, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;Ljava/util/List;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mElementTypesFilter:Ljava/util/ArrayList;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMerger;->determineChangesInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeLibraryMergerCallback;Ljava/util/ArrayList;)V

    .line 895
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 896
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 898
    :try_start_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->copyElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 899
    :catch_0
    move-exception v0

    .line 900
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v7, v7, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->revertUnsyncedChanges(Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 904
    const/4 v0, 0x0

    .line 908
    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method
