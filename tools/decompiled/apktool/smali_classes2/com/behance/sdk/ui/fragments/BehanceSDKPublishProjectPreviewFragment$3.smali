.class Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$3;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->getInstance(Landroid/content/Context;)Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKEmbedModuleDialog;->show()V

    .line 217
    return-void
.end method
