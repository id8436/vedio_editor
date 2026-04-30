.class Lcom/adobe/creativeapps/settings/activity/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$000(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->setSyncEnabledOnlyOnWifi(Z)V

    .line 125
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
