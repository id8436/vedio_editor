.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$2EnclosingClassForOutput;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"


# instance fields
.field done:Z

.field manifestUpdateError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

.field updatedManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1058
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$2EnclosingClassForOutput;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$2EnclosingClassForOutput;->done:Z

    .line 1060
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$2EnclosingClassForOutput;->updatedManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 1061
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$2EnclosingClassForOutput;->manifestUpdateError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
