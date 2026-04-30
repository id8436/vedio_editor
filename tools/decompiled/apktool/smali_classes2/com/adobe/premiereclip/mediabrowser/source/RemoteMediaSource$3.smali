.class Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;
.super Ljava/lang/Object;
.source "RemoteMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

.field final synthetic val$clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field final synthetic val$height:I

.field final synthetic val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

.field final synthetic val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

.field final synthetic val$timeMs:J

.field final synthetic val$uiHandler:Landroid/os/Handler;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JIILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iput-wide p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$timeMs:J

    iput p6, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$width:I

    iput p7, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$height:I

    iput-object p8, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    iput-object p9, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 80
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iget-wide v4, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$timeMs:J

    iget v6, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$width:I

    iget v7, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$height:I

    iget-object v8, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$listener:Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;

    iget-object v9, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;->val$uiHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v9}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->fetchThumbnailInternal(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JIILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V

    .line 81
    return-void
.end method
