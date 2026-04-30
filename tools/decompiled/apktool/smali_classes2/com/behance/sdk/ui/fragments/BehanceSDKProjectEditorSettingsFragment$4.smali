.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorSettingsFragment.java"

# interfaces
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropAndSaveComplete()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorSettingsFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    return-void
.end method
