.class Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v0, v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->sendEmptyMessage(I)Z

    .line 351
    return-void
.end method
