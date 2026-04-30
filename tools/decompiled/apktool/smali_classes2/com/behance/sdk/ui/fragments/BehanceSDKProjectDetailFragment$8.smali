.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$8;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

.field final synthetic val$ownersPopup:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$8;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$8;->val$ownersPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1154
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$8;->val$ownersPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1155
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$8;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$8;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-static {v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 1156
    return-void
.end method
