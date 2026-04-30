.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1EnclosingClassForOutput;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"


# instance fields
.field compositeDeleteError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field done:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 1

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1EnclosingClassForOutput;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1EnclosingClassForOutput;->done:Z

    .line 1147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1EnclosingClassForOutput;->compositeDeleteError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
