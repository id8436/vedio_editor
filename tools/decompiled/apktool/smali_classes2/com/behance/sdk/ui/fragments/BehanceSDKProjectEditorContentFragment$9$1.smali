.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9$1;->this$1:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;

    iget-object v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->setColor(Landroid/webkit/WebView;I)V

    .line 710
    return-void
.end method
