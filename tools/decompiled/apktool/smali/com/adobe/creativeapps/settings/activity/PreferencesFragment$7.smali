.class Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$7;
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
    .line 261
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$7;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$400(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->resetBrandingPreferences()V

    .line 265
    return-void
.end method
