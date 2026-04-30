.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$3;
.super Lorg/solovyev/android/views/llm/LinearLayoutManager;
.source "GalleryActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/solovyev/android/views/llm/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 6

    .prologue
    .line 246
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 247
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 248
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->getHeightInPx(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 250
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

    .line 251
    if-le v1, v2, :cond_0

    .line 252
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/solovyev/android/views/llm/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    goto :goto_0
.end method
