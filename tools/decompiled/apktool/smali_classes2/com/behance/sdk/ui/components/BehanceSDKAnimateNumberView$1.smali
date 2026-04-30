.class Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;
.super Ljava/lang/Object;
.source "BehanceSDKAnimateNumberView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-static {v2}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->access$000(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide v2, 0x406f400000000000L    # 250.0

    div-double/2addr v0, v2

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->access$102(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;Z)Z

    .line 174
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-static {v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->access$200(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 175
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->access$002(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;J)J

    .line 176
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->access$308(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)I

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->invalidate()V

    .line 182
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-static {v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->access$200(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    invoke-static {v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->access$400(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)V

    goto :goto_0
.end method
