.class Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$4;
.super Ljava/lang/Object;
.source "BumperPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    iget-object v0, v0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->onRequestMedia()V

    .line 185
    return-void
.end method
