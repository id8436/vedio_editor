.class Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    iget-object v2, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-static {v2, v0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$502(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;Z)Z

    .line 275
    iget-object v2, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-virtual {v2}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    sget v4, Lcom/adobe/creativeapps/settings/R$string;->Coachmark_toast:I

    invoke-virtual {v3, v4}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 276
    iget-object v2, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-static {v2}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$400(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-static {v3}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$500(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->setCoachMarkEnabled(Z)V

    .line 277
    return-void

    :cond_0
    move v0, v1

    .line 276
    goto :goto_0
.end method
