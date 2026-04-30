.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$19EnclosedClass;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"


# instance fields
.field assetsCount:I

.field exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field isDone:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3042
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$19EnclosedClass;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3043
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$19EnclosedClass;->isDone:Z

    .line 3044
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$19EnclosedClass;->assetsCount:I

    .line 3045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$19EnclosedClass;->exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
