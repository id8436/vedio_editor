.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;
.super Ljava/lang/Object;
.source "AdobeLibraryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$libraryId:Ljava/lang/String;

.field final synthetic val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;

.field final synthetic val$selector:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$selector:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$libraryId:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 967
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v4, v3

    .line 969
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    .line 973
    if-eqz v0, :cond_5

    .line 974
    const-string/jumbo v1, "libraryPreDelete"

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 975
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$libraryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->libraryPreDelete(Ljava/lang/String;)Z

    move-result v1

    .line 976
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;

    if-eqz v6, :cond_4

    .line 977
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;->onCompletion(Ljava/lang/Object;)Z

    move-result v1

    .line 980
    :goto_2
    const-string/jumbo v6, "libraryPreReadabilityChange"

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$selector:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 981
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$libraryId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->libraryPreReadabilityChange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 982
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;

    if-eqz v6, :cond_0

    .line 983
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$responseCallback:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;->onCompletion(Ljava/lang/Object;)Z

    move-result v1

    .line 986
    :cond_0
    :goto_3
    if-eqz v1, :cond_1

    .line 987
    add-int/lit8 v0, v4, 0x1

    .line 988
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 989
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 997
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 977
    goto :goto_1

    :cond_3
    move v4, v0

    .line 996
    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method
