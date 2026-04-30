.class Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$2;
.super Ljava/lang/Object;
.source "BehanceSDKBottomSheetShareDialog.java"

# interfaces
.implements Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsCallbacks;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$2;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->addItems(Ljava/util/List;)V

    .line 135
    :cond_0
    return-void
.end method
