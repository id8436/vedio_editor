.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDetailRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

.field final synthetic val$commentDTO:Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->val$commentDTO:Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 455
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_menu_item_label_delete_comment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v3, v0, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 456
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 473
    return-void
.end method
