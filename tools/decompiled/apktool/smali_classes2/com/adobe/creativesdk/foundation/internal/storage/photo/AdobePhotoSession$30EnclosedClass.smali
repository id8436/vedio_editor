.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$30EnclosedClass;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"


# instance fields
.field accountStatus:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

.field exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field isDone:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4816
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$30EnclosedClass;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$30EnclosedClass;->isDone:Z

    .line 4818
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$30EnclosedClass;->accountStatus:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    .line 4819
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$30EnclosedClass;->exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
