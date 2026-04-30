.class Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$2;
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
    .line 211
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 216
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 217
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;

    invoke-direct {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;-><init>()V

    .line 219
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->setSelectableFieldCount(I)V

    .line 220
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->setSelectedCreativeField(Ljava/util/List;)V

    .line 221
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld$Callbacks;)V

    .line 222
    const-string/jumbo v2, "FRAGMENT_TAG_CREATIVE_FIELDS_FILTER_DIALOG"

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKCreativeFieldsFilterDialogOld;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method
