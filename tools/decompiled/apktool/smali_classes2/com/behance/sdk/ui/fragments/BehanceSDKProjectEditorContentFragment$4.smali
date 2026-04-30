.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private launchColorPickerDialog()V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;-><init>()V

    .line 326
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->setFloating(Landroid/graphics/Point;)V

    .line 327
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->setStartingColor(I)V

    .line 328
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;)V

    .line 335
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FRAGMENT_TAG_COLOR_PICKER_DIALOG"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 336
    return-void
.end method


# virtual methods
.method public onBackgroundDoubleClick()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;->launchColorPickerDialog()V

    .line 322
    return-void
.end method

.method public onBackgroundLongClick()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;->launchColorPickerDialog()V

    .line 317
    return-void
.end method
