.class Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;
.super Ljava/lang/Object;
.source "RemoteMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;

.field final synthetic val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->fetchFilesInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;)V

    .line 109
    return-void
.end method
