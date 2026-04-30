.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# instance fields
.field createCompositeFinished:Z

.field error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field hostComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->hostComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->createCompositeFinished:Z

    .line 238
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1InitWithTempCompositeImpl$1OutputWrapper;->error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
