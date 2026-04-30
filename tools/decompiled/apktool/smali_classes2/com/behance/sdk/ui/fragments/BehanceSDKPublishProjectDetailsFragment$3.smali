.class Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$3;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 235
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;

    invoke-direct {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;-><init>()V

    .line 238
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->setSelectedCopyright(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 239
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog$Callbacks;)V

    .line 240
    const-string/jumbo v2, "FRAGMENT_TAG_COPYRIGHT_SETTINGS_DIALOG"

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCopyrightSettingsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method
