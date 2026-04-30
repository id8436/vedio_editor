.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController$2;
.super Ljava/lang/Object;
.source "AdobeAssetAutoFitRecyclerViewController.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController;->_fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;->AdobeMultiPageGridView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;->setState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;)V

    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetAutoFitRecyclerViewController;->_fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;->displayViewPager(I)V

    .line 135
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
