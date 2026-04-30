.class Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;
.super Ljava/lang/Object;
.source "FileSystemMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;

.field final synthetic val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;->val$mediaModel:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;->val$listener:Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->getAssetInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;)V

    .line 63
    return-void
.end method
