.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$2EnclosedClass;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"


# instance fields
.field collection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

.field exception:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

.field isDone:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1812
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$2EnclosedClass;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$2EnclosedClass;->isDone:Z

    .line 1815
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$2EnclosedClass;->collection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 1816
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$2EnclosedClass;->exception:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    return-void
.end method
