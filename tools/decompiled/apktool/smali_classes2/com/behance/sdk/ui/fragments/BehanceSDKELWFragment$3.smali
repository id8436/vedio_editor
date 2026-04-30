.class Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$3;
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
    .line 65
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->dismiss()V

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;)Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;)Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;->onBackButtonPressed()V

    .line 71
    :cond_0
    return-void
.end method
