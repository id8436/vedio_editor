.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$7;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

.field final synthetic val$sessionClient:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$7;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$7;->val$sessionClient:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$7;->val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$7;->val$sessionClient:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$7;->val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 721
    return-void
.end method
