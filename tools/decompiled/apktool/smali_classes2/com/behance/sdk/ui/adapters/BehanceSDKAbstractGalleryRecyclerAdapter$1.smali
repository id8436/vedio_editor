.class Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKAbstractGalleryRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;

.field final synthetic val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->files:Ljava/util/List;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->getExtraItemsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->onItemClicked(Ljava/io/File;)V

    .line 64
    return-void
.end method
