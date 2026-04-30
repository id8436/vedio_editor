.class Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    packed-switch p3, :pswitch_data_0

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$400(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    invoke-static {v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$300(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->setExportResolution(I)V

    .line 209
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$302(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;I)I

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$302(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;I)I

    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    const/16 v1, 0x438

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$302(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;I)I

    goto :goto_0

    .line 204
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;->this$0:Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;

    const/16 v1, 0x870

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->access$302(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;I)I

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 214
    return-void
.end method
