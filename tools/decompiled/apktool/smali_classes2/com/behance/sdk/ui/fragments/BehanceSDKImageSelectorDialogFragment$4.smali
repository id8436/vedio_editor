.class Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$4;
.super Ljava/lang/Object;
.source "BehanceSDKImageSelectorDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;->onImageSelectorSelectionCanceled()V

    .line 543
    return-void
.end method
