.class Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;
.super Ljava/lang/Object;
.source "PublishInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->projectName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->access$200(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->access$200(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didEditExportProjectTitle(Ljava/lang/String;)V

    .line 164
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    const-string/jumbo v2, "publish_video_ccv"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v0, "unlisted"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->access$100(Lcom/adobe/premiereclip/sharing/PublishInfoActivity;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->setResult(ILandroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PublishInfoActivity$5;->this$0:Lcom/adobe/premiereclip/sharing/PublishInfoActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PublishInfoActivity;->onBackPressed()V

    .line 170
    return-void
.end method
