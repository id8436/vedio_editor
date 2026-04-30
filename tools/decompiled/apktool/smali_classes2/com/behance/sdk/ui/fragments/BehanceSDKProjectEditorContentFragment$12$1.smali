.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;

    iget-object v1, v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1040
    :cond_0
    return-void
.end method
