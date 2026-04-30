.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$4EnclosedClass;
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

    .line 678
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$4EnclosedClass;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$4EnclosedClass;->isDone:Z

    .line 680
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$4EnclosedClass;->catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 681
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$4EnclosedClass;->exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
