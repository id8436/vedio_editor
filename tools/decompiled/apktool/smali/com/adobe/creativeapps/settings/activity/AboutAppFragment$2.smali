.class Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$2;
.super Landroid/text/style/ClickableSpan;
.source "AboutAppFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$2;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$2;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$2;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    sget v4, Lcom/adobe/creativeapps/settings/R$string;->url_learnMore:I

    invoke-virtual {v3, v4}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 161
    return-void
.end method
