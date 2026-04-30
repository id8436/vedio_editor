.class Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;
.super Ljava/lang/Object;
.source "FileSystemMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

.field final synthetic val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;->val$uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->getThumbnailInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V

    .line 76
    return-void
.end method
