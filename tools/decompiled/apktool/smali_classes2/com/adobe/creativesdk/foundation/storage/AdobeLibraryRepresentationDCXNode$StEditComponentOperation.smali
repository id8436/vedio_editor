.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;
.super Ljava/lang/Object;
.source "AdobeLibraryRepresentationDCXNode.java"


# instance fields
.field private mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    .line 43
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    .line 45
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->setMutableComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method update()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getMutableComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->getMutableComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->setMutableComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;)V

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode$StEditComponentOperation;->mRep:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;->setComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 62
    :cond_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
