.class Lcom/behance/sdk/ui/components/BehanceSDKCropView$3;
.super Lcom/b/a/h/b/g;
.source "BehanceSDKCropView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/h/b/g",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

.field final synthetic val$listener:Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKCropView;Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$3;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    iput-object p2, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$3;->val$listener:Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;

    invoke-direct {p0}, Lcom/b/a/h/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/b/a/h/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/b/a/h/a/d",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$3;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$3;->val$listener:Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;

    invoke-interface {v0}, Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;->onImageLoadComplete()V

    .line 131
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/b/a/h/a/d;)V
    .locals 0

    .prologue
    .line 126
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKCropView$3;->onResourceReady(Landroid/graphics/Bitmap;Lcom/b/a/h/a/d;)V

    return-void
.end method
