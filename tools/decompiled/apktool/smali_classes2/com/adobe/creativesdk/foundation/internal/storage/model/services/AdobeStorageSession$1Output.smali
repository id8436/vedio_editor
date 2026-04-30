.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1Output;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"


# instance fields
.field respondedToCancelOrError:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 1

    .prologue
    .line 5518
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1Output;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5519
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1Output;->respondedToCancelOrError:Ljava/lang/String;

    return-void
.end method
