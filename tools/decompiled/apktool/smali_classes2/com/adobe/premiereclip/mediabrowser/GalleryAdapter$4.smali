.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

.field final synthetic val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 413
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    const-class v2, Lcom/adobe/premiereclip/clipPlayer/VideoPlaybackActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;

    if-eqz v0, :cond_0

    .line 415
    const-string/jumbo v0, "videoPlayUri"

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    :goto_0
    const-string/jumbo v0, "playbackEndBehave"

    const-string/jumbo v2, "restart"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 421
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    const v1, 0x7f05002b

    const v2, 0x7f05002c

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->overridePendingTransition(II)V

    .line 422
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_0
    const-string/jumbo v2, "videoPlayUri"

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModelForRemote;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
