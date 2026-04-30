.class Lcom/adobe/premiereclip/editor/VideoSettingActivity$4;
.super Ljava/lang/Object;
.source "VideoSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$4;->this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didToggleFinishingTouchesMotion(Ljava/lang/Boolean;)V

    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$4;->this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    invoke-static {v0, p2}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->access$302(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Z)Z

    .line 158
    return-void
.end method
