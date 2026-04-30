.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$7;
.super Ljava/lang/Object;
.source "AdobeLibrarySyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

.field final synthetic val$callCompletionHandler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$syncError:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$7;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$7;->val$callCompletionHandler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$7;->val$syncError:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$7;->val$callCompletionHandler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$7;->val$syncError:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 1075
    return-void
.end method
