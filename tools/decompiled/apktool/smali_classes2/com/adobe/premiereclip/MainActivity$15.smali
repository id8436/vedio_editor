.class Lcom/adobe/premiereclip/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView$OptionSelectionListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public optionSelected(I)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1790
    packed-switch p1, :pswitch_data_0

    .line 1823
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2200(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaSelectorView;->closeView()V

    .line 1824
    return-void

    .line 1799
    :pswitch_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerCreativeCloud()V

    .line 1800
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1900(Lcom/adobe/premiereclip/MainActivity;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativeapps/settings/activity/BugPreferenceFragment;

    if-ne v0, v1, :cond_1

    .line 1801
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePickerForBug(Landroid/app/Activity;)V

    goto :goto_0

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1900(Lcom/adobe/premiereclip/MainActivity;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    if-ne v0, v1, :cond_0

    .line 1804
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudPickerForBumper(Landroid/app/Activity;)V

    goto :goto_0

    .line 1809
    :pswitch_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GoogleDrive"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 1810
    const/16 v0, 0x4a

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2000(Lcom/adobe/premiereclip/MainActivity;)V

    goto :goto_0

    .line 1816
    :pswitch_2
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Dropbox"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 1817
    const/16 v0, 0x4b

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$15;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2100(Lcom/adobe/premiereclip/MainActivity;)V

    goto/16 :goto_0

    .line 1790
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
