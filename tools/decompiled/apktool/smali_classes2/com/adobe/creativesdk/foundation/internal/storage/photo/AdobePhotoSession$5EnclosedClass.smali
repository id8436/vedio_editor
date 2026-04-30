.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$5EnclosedClass;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"


# instance fields
.field catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

.field exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field isDone:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 793
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$5EnclosedClass;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$5EnclosedClass;->isDone:Z

    .line 795
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$5EnclosedClass;->catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 796
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$5EnclosedClass;->exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
