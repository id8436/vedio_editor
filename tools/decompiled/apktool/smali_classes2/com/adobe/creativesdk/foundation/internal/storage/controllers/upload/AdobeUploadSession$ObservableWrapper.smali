.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$ObservableWrapper;
.super Ljava/util/Observable;
.source "AdobeUploadSession.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$ObservableWrapper;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$1;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$ObservableWrapper;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    return-void
.end method


# virtual methods
.method public markChanged()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$ObservableWrapper;->setChanged()V

    .line 46
    return-void
.end method
