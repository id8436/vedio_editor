.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 756
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;->val$session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6

    .prologue
    .line 759
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getActivePushManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected composite state: activePushManifest should not be nil."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;->val$session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$5;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->updateManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    return-object v0
.end method
