.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDetailFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    .line 283
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method
