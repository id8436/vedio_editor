.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentRecyclerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 255
    return-void
.end method
