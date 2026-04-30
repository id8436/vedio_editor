.class Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;
.super Ljava/lang/Object;
.source "AdobeNetworkHttpMultiPartTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;

.field final synthetic val$available:I

.field final synthetic val$bytesUploadedTillNow:I

.field final synthetic val$multiPartData:Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;II)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;->val$multiPartData:Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;

    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;->val$bytesUploadedTillNow:I

    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;->val$available:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;->val$multiPartData:Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->progressCallback:Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData$OnProgressCallback;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;->val$bytesUploadedTillNow:I

    int-to-long v2, v1

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;->val$available:I

    int-to-long v4, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData$OnProgressCallback;->progress(JJ)V

    .line 144
    return-void
.end method
