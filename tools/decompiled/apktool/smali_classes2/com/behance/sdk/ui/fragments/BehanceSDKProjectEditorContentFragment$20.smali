.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

.field final synthetic val$pos:I

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;ILandroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iput p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;->val$pos:I

    iput-object p3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;->val$pos:I

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;I)V

    .line 1284
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;->val$webView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->focus(Landroid/webkit/WebView;)V

    .line 1285
    return-void
.end method
