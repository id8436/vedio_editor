.class Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment$1;
.super Ljava/lang/Object;
.source "BasePreferenceFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;

    iput-boolean p2, v0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->assetState:Z

    .line 61
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->onOffSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;

    iget-boolean v1, v1, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->assetState:Z

    invoke-virtual {v0, v1}, Lcom/adobe/creativeapps/settings/activity/BasePreferenceFragment;->setPreferenceState(Z)V

    .line 63
    return-void
.end method
