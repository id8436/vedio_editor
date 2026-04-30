.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;
.super Ljava/lang/Object;
.source "AdobeOneUpMultiPageViewPagerController.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;I)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public signalDragDetected(FF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->val$position:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    move-result-object v0

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->val$position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 253
    cmpl-float v0, p1, v4

    if-lez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$802(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;F)F

    .line 258
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 259
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setZoomFocusX(F)V

    .line 260
    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setZoomFocusY(F)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    cmpg-float v0, p1, v4

    if-gez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$802(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;F)F

    .line 268
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 270
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setZoomFocusX(F)V

    .line 271
    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setZoomFocusY(F)V

    goto :goto_0
.end method

.method public signalZoomHandled(FFF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->val$position:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    move-result-object v1

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->val$position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$402(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;F)F

    .line 229
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$502(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;F)F

    .line 232
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 234
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;->getPreviousState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;->AdobeMultiPageGridView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;

    if-ne v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;->displayGridView()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;->getPreviousState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;->AdobeMultiPageListView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageViewState;

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;->displayListView()V

    goto :goto_0

    .line 240
    :cond_2
    if-eqz v0, :cond_3

    .line 241
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F

    move-result v3

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 242
    :cond_3
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 243
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0
.end method
