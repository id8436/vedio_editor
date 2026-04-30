.class Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment$1;
.super Ljava/lang/Object;
.source "BugPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->onRequestMedia()V

    .line 165
    return-void
.end method
