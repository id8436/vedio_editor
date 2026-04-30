.class Lcom/adobe/customextractor/FrameResources/GLCore$1;
.super Ljava/lang/Object;
.source "GLCore.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/customextractor/FrameResources/GLCore;


# direct methods
.method constructor <init>(Lcom/adobe/customextractor/FrameResources/GLCore;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/adobe/customextractor/FrameResources/GLCore$1;->this$0:Lcom/adobe/customextractor/FrameResources/GLCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore$1;->this$0:Lcom/adobe/customextractor/FrameResources/GLCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/customextractor/FrameResources/GLCore;->access$002(Lcom/adobe/customextractor/FrameResources/GLCore;Z)Z

    .line 98
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore$1;->this$0:Lcom/adobe/customextractor/FrameResources/GLCore;

    invoke-static {v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->access$100(Lcom/adobe/customextractor/FrameResources/GLCore;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore$1;->this$0:Lcom/adobe/customextractor/FrameResources/GLCore;

    invoke-static {v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->access$100(Lcom/adobe/customextractor/FrameResources/GLCore;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
