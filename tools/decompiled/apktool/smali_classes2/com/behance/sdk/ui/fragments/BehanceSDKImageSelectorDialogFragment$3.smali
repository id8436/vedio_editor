.class Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$3;
.super Ljava/lang/Object;
.source "BehanceSDKImageSelectorDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

.field final synthetic val$imageModulesList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$3;->val$imageModulesList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$3;->val$imageModulesList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;->onImageSelectorSelectionFinished(Ljava/util/List;)V

    .line 523
    return-void
.end method
