.class Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$5;
.super Ljava/lang/Object;
.source "AboutAppFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    sget v1, Lcom/adobe/creativeapps/settings/R$string;->url_thirdPartyNotices:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->access$100(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->didTapSettingsLink(Ljava/lang/String;)V

    .line 212
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
