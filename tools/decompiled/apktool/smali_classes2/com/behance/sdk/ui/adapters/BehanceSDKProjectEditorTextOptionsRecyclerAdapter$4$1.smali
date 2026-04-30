.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorTextOptionsRecyclerAdapter.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    const/16 v2, 0x9

    const/16 v3, 0x4b

    iget-object v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v4, v4, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v4, v4, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    invoke-virtual {v4}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$202(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;I)I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;->onTextSizeChanged(I)V

    .line 114
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerCount:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->setNumber(I)V

    .line 115
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerCount:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 120
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
