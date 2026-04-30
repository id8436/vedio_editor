.class Lcom/behance/sdk/ui/components/BehanceSDKCropView$2;
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


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$2;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

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
    .line 120
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$2;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/b/a/h/a/d;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKCropView$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/b/a/h/a/d;)V

    return-void
.end method
