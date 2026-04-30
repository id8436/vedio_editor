.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$14;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$14;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$14;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$14;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$14;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->setLink(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1131
    return-void
.end method
