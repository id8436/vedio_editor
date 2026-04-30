.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$15EnclosingClassForOutput;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"


# instance fields
.field done:Z

.field exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 1

    .prologue
    .line 5576
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$15EnclosingClassForOutput;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$15EnclosingClassForOutput;->done:Z

    .line 5578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$15EnclosingClassForOutput;->exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
