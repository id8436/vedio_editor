.class Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorWheelPickerLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

.field private final timestamp:J


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->timestamp:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide v8, 0x407f400000000000L    # 500.0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    iget-wide v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->timestamp:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    iget-object v2, v2, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    iget-object v4, v4, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    iget-wide v6, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->timestamp:J

    sub-long/2addr v0, v6

    long-to-double v0, v0

    div-double/2addr v0, v8

    double-to-float v0, v0

    invoke-static {v4, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$100(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F

    move-result v0

    add-float/2addr v0, v3

    float-to-double v0, v0

    iput-wide v0, v2, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactor:D

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    iget-object v1, v1, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-static {v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->access$000(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->invalidate()V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iput-wide v2, v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactor:D

    .line 73
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1$1;->this$1:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->invalidate()V

    goto :goto_0
.end method
