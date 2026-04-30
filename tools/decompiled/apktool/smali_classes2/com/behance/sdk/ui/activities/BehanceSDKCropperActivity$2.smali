.class Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$2;
.super Ljava/lang/Object;
.source "BehanceSDKCropperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$2;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$2;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;

    invoke-static {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->access$000(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$2;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;

    invoke-static {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->access$200(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$2;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;

    invoke-static {v1}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->access$100(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->crop()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCropperHeadlessFragment;->saveBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    return-void
.end method
