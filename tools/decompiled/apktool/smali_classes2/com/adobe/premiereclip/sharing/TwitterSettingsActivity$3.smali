.class Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;
.super Ljava/lang/Object;
.source "TwitterSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 174
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    const v3, 0x7f0a053d

    .line 175
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    const v4, 0x7f0a053c

    .line 176
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    const v2, 0x7f0a053b

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3$1;-><init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    const v2, 0x7f0a053e

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 187
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 188
    return-void
.end method
