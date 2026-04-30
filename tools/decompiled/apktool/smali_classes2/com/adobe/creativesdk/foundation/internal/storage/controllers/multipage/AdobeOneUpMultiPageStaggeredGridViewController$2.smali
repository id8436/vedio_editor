.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$2;
.super Ljava/lang/Object;
.source "AdobeOneUpMultiPageStaggeredGridViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;->displayViewPager(I)V

    .line 93
    return-void
.end method
