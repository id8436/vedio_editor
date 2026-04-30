.class Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;
.super Ljava/lang/Object;
.source "BehanceSDKCropView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->access$100(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)Lcom/github/chrisbanes/photoview/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-static {v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getPadWidth()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-static {v2}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getPadHeight()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-static {v3}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getPadWidth()I

    move-result v3

    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-static {v4}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getPadHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/chrisbanes/photoview/PhotoView;->setPadding(IIII)V

    .line 60
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->access$200(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)V

    .line 61
    return-void
.end method
