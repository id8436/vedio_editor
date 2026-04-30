.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 938
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/ImageView;Z)V

    .line 939
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1900(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/ImageView;Z)V

    .line 940
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$2000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/ImageView;Z)V

    .line 941
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 946
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 934
    return-void
.end method
