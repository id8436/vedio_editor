.class Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment$CustomClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "BehanceSDKProjectInfoDialogFragment.java"


# instance fields
.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment$CustomClickableSpan;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;

    .line 171
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment$CustomClickableSpan;->tag:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment$CustomClickableSpan;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment$CustomClickableSpan;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 182
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment$CustomClickableSpan;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_behance_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 183
    return-void
.end method
