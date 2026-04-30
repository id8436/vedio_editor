.class Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$5;
.super Ljava/lang/Object;
.source "BumperPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iput-object p2, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$5;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->defaultBumper()V

    .line 195
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$5;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$5;->val$rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->setUX(Landroid/view/View;)V

    .line 196
    return-void
.end method
