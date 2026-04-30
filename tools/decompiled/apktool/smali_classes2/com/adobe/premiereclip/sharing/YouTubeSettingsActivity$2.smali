.class Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;
.super Ljava/lang/Object;
.source "YouTubeSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 176
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    const v3, 0x7f0a053d

    .line 177
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    const v4, 0x7f0a053c

    .line 178
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    const v2, 0x7f0a053b

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2$1;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;->this$0:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    const v2, 0x7f0a053e

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 188
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 189
    return-void
.end method
