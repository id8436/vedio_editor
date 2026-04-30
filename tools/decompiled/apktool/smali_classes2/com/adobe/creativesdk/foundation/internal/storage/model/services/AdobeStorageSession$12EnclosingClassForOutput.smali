.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12EnclosingClassForOutput;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"


# instance fields
.field done:Z

.field exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field groups:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5251
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12EnclosingClassForOutput;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12EnclosingClassForOutput;->done:Z

    .line 5253
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12EnclosingClassForOutput;->groups:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 5254
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12EnclosingClassForOutput;->exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
