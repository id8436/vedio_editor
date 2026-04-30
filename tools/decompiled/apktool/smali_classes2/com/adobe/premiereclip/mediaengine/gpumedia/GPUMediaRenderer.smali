.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;
.super Ljava/lang/Object;
.source "GPUMediaRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private final mRunOnDraw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunOnDrawEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mSurfaceChangedWaiter:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mRunOnDraw:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mRunOnDrawEnd:Ljava/util/List;

    .line 59
    return-void
.end method

.method private runAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p1

    .line 99
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 100
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 103
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    return-void
.end method


# virtual methods
.method protected getFrameHeight()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mOutputHeight:I

    return v0
.end method

.method protected getFrameWidth()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mOutputWidth:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mRunOnDraw:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->runAll(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;->onDrawFrame()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mRunOnDrawEnd:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->runAll(Ljava/util/List;)V

    .line 94
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mOutputWidth:I

    .line 74
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mOutputHeight:I

    .line 75
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 76
    const-string/jumbo v0, "GPUMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "display surface size changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mOutputWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mOutputHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mOutputWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mOutputHeight:I

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;->onSurfaceChanged(II)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mSurfaceChangedWaiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 65
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;->onSurfaceCreated()V

    .line 69
    :cond_0
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mRunOnDraw:Ljava/util/List;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mRunOnDraw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runOnDrawEnd(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mRunOnDrawEnd:Ljava/util/List;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mRunOnDrawEnd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->mListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;

    .line 54
    return-void
.end method
