.class Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$2;
.super Ljava/lang/Object;
.source "BehanceSDKELWFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;)Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;)Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;->onCancelButtonPressed()V

    .line 63
    :cond_0
    return-void
.end method
