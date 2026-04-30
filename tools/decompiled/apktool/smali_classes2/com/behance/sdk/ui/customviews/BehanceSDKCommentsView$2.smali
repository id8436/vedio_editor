.class Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;
.super Ljava/lang/Object;
.source "BehanceSDKCommentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

.field final synthetic val$commentViewsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

    iput-object p2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;->val$commentViewsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 197
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

    invoke-static {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->access$200(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 198
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;->val$commentViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 199
    iget-object v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v3, v0, v4, v1, v5}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->access$300(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;->val$commentViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;->this$0:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->requestLayout()V

    .line 204
    return-void
.end method
