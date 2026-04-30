.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$4EnclosedClass;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"


# instance fields
.field exception:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

.field isDone:Z

.field item:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2137
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$4EnclosedClass;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$4EnclosedClass;->isDone:Z

    .line 2140
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$4EnclosedClass;->item:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    .line 2141
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$4EnclosedClass;->exception:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    return-void
.end method
