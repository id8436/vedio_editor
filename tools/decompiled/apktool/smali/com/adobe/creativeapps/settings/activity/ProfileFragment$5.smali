.class Lcom/adobe/creativeapps/settings/activity/ProfileFragment$5;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 194
    const-string/jumbo v0, "ProfileActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in Logout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$300(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/alertdialogpro/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alertdialogpro/b;->dismiss()V

    .line 196
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->error_toast_logout:I

    invoke-static {v1, v2}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$400(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->handleLogout()V

    .line 190
    return-void
.end method
