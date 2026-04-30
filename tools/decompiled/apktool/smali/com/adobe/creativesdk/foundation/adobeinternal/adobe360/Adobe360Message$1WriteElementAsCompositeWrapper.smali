.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

.field final synthetic val$destPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2315
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;->val$destPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method perform(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2317
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getRoot()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1WriteElementAsCompositeWrapper;->val$destPath:Ljava/lang/String;

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeWithName(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 2318
    if-nez v0, :cond_0

    move v0, v6

    .line 2327
    :goto_0
    return v0

    .line 2322
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->replaceElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 2323
    if-nez v1, :cond_1

    move v0, v6

    .line 2325
    goto :goto_0

    .line 2327
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z

    move-result v0

    goto :goto_0
.end method
