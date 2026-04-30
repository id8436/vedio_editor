.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;
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
    .line 94
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 97
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerCount:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    invoke-virtual {v0, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->setSelection(I)V

    .line 103
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->requestFocus()Z

    .line 104
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 107
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;->val$sizeViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 126
    return-void
.end method
