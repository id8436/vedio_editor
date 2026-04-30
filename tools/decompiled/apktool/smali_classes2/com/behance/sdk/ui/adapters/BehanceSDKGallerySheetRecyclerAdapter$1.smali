.class Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKGallerySheetRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;

.field final synthetic val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;->onCameraSelected()V

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;->onCCSelected()V

    goto :goto_0
.end method
