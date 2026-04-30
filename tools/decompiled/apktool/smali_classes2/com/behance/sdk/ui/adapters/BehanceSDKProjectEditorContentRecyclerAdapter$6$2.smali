.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentRecyclerAdapter.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$2;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/support/v7/widget/PopupMenu;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$2;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 333
    return-void
.end method
