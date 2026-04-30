.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorTextOptionsRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

.field final synthetic val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)I

    move-result v0

    const/16 v1, 0x4b

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerCount:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->increment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$202(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;I)I

    .line 80
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;->onTextSizeChanged(I)V

    .line 82
    :cond_0
    return-void
.end method
