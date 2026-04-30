.class Lcom/adobe/premiereclip/sharing/SharingManager$1;
.super Ljava/lang/Object;
.source "SharingManager.java"

# interfaces
.implements Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

.field final synthetic val$listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingManager;Lcom/adobe/premiereclip/sharing/SharingManager$Listener;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->val$listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$300(Lcom/adobe/premiereclip/sharing/SharingManager;)V

    .line 223
    return-void
.end method

.method public onPreparingCancelled()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$002(Lcom/adobe/premiereclip/sharing/SharingManager;Z)Z

    .line 180
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->val$listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->val$listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingManager$Listener;->onEnded()V

    .line 183
    :cond_0
    return-void
.end method

.method public onPublished()V
    .locals 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$400(Lcom/adobe/premiereclip/sharing/SharingManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->val$listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->val$listener:Lcom/adobe/premiereclip/sharing/SharingManager$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/SharingManager$Listener;->onEnded()V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$500(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/CCVPublish;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->getUploadId()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$500(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/CCVPublish;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/CCVPublish;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowCCVExportSuccessView()V

    .line 208
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v3}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/adobe/premiereclip/sharing/SharingPublishActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string/jumbo v3, "upload_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v0, "project_key"

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v3}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$700(Lcom/adobe/premiereclip/sharing/SharingManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v0, "project_title"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$800(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/TwitterUpload;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->sendTweetViaIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSavingCancelled()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$100(Lcom/adobe/premiereclip/sharing/SharingManager;)V

    .line 188
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$200(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$300(Lcom/adobe/premiereclip/sharing/SharingManager;)V

    .line 191
    :cond_0
    return-void
.end method
