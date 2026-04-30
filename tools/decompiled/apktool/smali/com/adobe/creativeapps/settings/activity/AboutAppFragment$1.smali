.class Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$1;
.super Ljava/lang/Object;
.source "AboutAppFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 129
    if-eqz p2, :cond_0

    .line 130
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/utility/analytics/TrackingUtility;->setTrackingValue(Z)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$1;->this$0:Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->access$000(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 136
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didModifyAnalyticsCollection(Ljava/lang/Boolean;)V

    .line 137
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/utility/analytics/TrackingUtility;->setTrackingValue(Z)V

    goto :goto_0
.end method
