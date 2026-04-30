.class Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$1;
.super Ljava/lang/Object;
.source "BehanceSDKCropperActivity.java"

# interfaces
.implements Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$1;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadComplete()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity$1;->this$0:Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;

    invoke-static {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;->access$000(Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 71
    return-void
.end method
