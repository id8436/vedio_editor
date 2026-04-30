.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->cancelDataFetch()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->clearDataset()V

    .line 223
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->notifyDataSetChanged()V

    .line 226
    :cond_1
    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Gallery"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didToggleMediaPickerType(Ljava/lang/String;)V

    .line 231
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/ClipPreferences;->setDeviceSource(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)V

    .line 233
    return-void

    .line 228
    :cond_3
    const-string/jumbo v0, "moments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Moments"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didToggleMediaPickerType(Ljava/lang/String;)V

    goto :goto_0
.end method
