.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$29EnclosedClass;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"


# instance fields
.field asset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

.field exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field isDone:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4648
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$29EnclosedClass;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$29EnclosedClass;->isDone:Z

    .line 4650
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$29EnclosedClass;->asset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 4651
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$29EnclosedClass;->exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
