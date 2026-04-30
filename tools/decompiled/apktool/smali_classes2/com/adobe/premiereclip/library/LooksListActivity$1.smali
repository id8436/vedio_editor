.class Lcom/adobe/premiereclip/library/LooksListActivity$1;
.super Lorg/solovyev/android/views/llm/LinearLayoutManager;
.source "LooksListActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/library/LooksListActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity;Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$1;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/solovyev/android/views/llm/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 6

    .prologue
    .line 155
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 156
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 157
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->getHeightInPx(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 159
    const-string/jumbo v3, "LooksPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "   max height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-le v1, v2, :cond_0

    .line 161
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    goto :goto_0
.end method
