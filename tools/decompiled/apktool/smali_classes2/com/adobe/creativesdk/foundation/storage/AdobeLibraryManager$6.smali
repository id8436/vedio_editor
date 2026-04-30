.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;
.super Ljava/lang/Object;
.source "AdobeLibraryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

.field final synthetic val$delegate:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

.field final synthetic val$elementId:Ljava/lang/String;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$libraryId:Ljava/lang/String;

.field final synthetic val$networkStatus:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

.field final synthetic val$selector:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$delegate:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$elementId:Ljava/lang/String;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$libraryId:Ljava/lang/String;

    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$networkStatus:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$delegate:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$delegate:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    .line 1018
    if-eqz v0, :cond_0

    .line 1019
    const-string/jumbo v1, "elementWasAdded"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1020
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$elementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->elementWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_2
    const-string/jumbo v1, "elementWasRemoved"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1022
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$elementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->elementWasRemoved(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V

    goto :goto_0

    .line 1023
    :cond_3
    const-string/jumbo v1, "elementWasUpdated"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1024
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$elementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->elementWasUpdated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_4
    const-string/jumbo v1, "onSyncError"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1026
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->onSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1028
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsReporter;->trackError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0

    .line 1029
    :cond_5
    const-string/jumbo v1, "libraryWasAdded"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1030
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->libraryWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    goto :goto_0

    .line 1031
    :cond_6
    const-string/jumbo v1, "libraryWasDeleted"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1032
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$libraryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->libraryWasDeleted(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_7
    const-string/jumbo v1, "libraryWasUnshared"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1034
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$libraryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->libraryWasUnshared(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1035
    :cond_8
    const-string/jumbo v1, "libraryWasUpdated"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1036
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->libraryWasUpdated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    goto/16 :goto_0

    .line 1037
    :cond_9
    const-string/jumbo v1, "syncStarted"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1038
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->syncStarted()V

    goto/16 :goto_0

    .line 1039
    :cond_a
    const-string/jumbo v1, "syncFinished"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1040
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->syncFinished()V

    goto/16 :goto_0

    .line 1041
    :cond_b
    const-string/jumbo v1, "syncUnavailable"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1042
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$networkStatus:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->syncUnavailable(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    goto/16 :goto_0

    .line 1043
    :cond_c
    const-string/jumbo v1, "syncAvailable"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$selector:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;->val$networkStatus:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->syncAvailable(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    goto/16 :goto_0
.end method
