.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;
.super Ljava/lang/Object;
.source "AdobeAssetShareBaseOneUpActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final thresholdY:I = 0x15e

.field private static final tolerance:I = 0x32


# instance fields
.field private isTouchedDown:Z

.field private pointX:F

.field private pointY:F

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->isTouchedDown:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 103
    :pswitch_1
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->isTouchedDown:Z

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->pointX:F

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->pointY:F

    goto :goto_0

    .line 108
    :pswitch_2
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->pointX:F

    add-float/2addr v0, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->pointX:F

    sub-float/2addr v0, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v1

    .line 109
    :goto_1
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->pointY:F

    add-float/2addr v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->pointY:F

    sub-float/2addr v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 110
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->hideOrShowActionsBar()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 108
    goto :goto_1

    :cond_2
    move v1, v2

    .line 109
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->pointY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43af0000    # 350.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->pageChanged:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->isTouchedDown:Z

    if-eqz v0, :cond_4

    .line 117
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->isTouchedDown:Z

    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->onBackPressed()V

    goto :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->pageChanged:Z

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
