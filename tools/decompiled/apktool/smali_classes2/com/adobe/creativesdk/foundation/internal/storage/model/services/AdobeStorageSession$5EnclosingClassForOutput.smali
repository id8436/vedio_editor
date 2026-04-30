.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$5EnclosingClassForOutput;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"


# instance fields
.field done:Z

.field downloadedManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

.field manifestdownloadError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3843
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$5EnclosingClassForOutput;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$5EnclosingClassForOutput;->done:Z

    .line 3845
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$5EnclosingClassForOutput;->downloadedManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 3846
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$5EnclosingClassForOutput;->manifestdownloadError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
