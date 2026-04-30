.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$4EnclosingClassForOutput;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"


# instance fields
.field public done:Z

.field public downloadedManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

.field public manifestdownloadError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1228
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$4EnclosingClassForOutput;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$4EnclosingClassForOutput;->done:Z

    .line 1230
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$4EnclosingClassForOutput;->downloadedManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 1231
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$4EnclosingClassForOutput;->manifestdownloadError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
