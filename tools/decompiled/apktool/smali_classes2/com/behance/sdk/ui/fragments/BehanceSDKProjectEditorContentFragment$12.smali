.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1032
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->setPadding(IIII)V

    .line 1033
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1043
    :cond_0
    return-void
.end method
