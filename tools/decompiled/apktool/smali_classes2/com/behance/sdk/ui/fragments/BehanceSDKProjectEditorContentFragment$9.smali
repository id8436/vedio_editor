.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 703
    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-direct {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;-><init>()V

    .line 704
    new-instance v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->setFloating(Landroid/graphics/Point;)V

    .line 705
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->setStartingColor(I)V

    .line 706
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9$1;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;)V

    .line 712
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "FRAGMENT_TAG_COLOR_PICKER_DIALOG"

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1202(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 716
    return-void
.end method
