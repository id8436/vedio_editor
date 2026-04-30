.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$1EnclosingClassForOutput;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"


# instance fields
.field compositeCreateError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field createdComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field done:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 824
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$1EnclosingClassForOutput;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$1EnclosingClassForOutput;->done:Z

    .line 826
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$1EnclosingClassForOutput;->createdComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 827
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$1EnclosingClassForOutput;->compositeCreateError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
