.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setState(I)V

    .line 1160
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$2200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    .line 1161
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$2300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$2300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;->onTextEditorActive()V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$2400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Z)Z

    .line 1164
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getState(Landroid/webkit/WebView;)V

    .line 1165
    return-void
.end method
