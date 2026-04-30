.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;
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
    .line 1263
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-boolean v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$2800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->isBold()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/ImageView;Z)V

    .line 1268
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$2900(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->isItalic()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/ImageView;Z)V

    .line 1269
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$3000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->isUnderline()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/ImageView;Z)V

    .line 1273
    :goto_0
    return-void

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->getAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$3100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    goto :goto_0
.end method
