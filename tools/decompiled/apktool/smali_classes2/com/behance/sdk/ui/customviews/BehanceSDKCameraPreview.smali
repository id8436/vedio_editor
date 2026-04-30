.class public Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;
.super Landroid/view/SurfaceView;
.source "BehanceSDKCameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 24
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 25
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 27
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 66
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 34
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
