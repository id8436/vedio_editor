.class Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKBottomSheetRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;

.field final synthetic val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;

    move-result-object v1

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-interface {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;->share(Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;)V

    .line 59
    :cond_0
    return-void
.end method
