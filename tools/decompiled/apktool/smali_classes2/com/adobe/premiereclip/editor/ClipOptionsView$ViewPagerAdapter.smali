.class Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ClipOptionsView.java"


# instance fields
.field private clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/ClipOptionsView;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 449
    const-string/jumbo v0, "COV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyItem pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 405
    sget-object v1, Lcom/adobe/premiereclip/editor/ClipOptionsView$2;->$SwitchMap$com$adobe$premiereclip$project$sequence$Clip$CLIP_TYPE:[I

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 410
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 406
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    sget-object v1, Lcom/adobe/premiereclip/editor/ClipOptionsView$2;->$SwitchMap$com$adobe$premiereclip$project$sequence$Clip$CLIP_TYPE:[I

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 441
    :goto_0
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 444
    :cond_0
    return-object v0

    .line 423
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 424
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->access$100(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->access$200(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 426
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->access$300(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 430
    :pswitch_4
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 431
    :pswitch_5
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->access$100(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 432
    :pswitch_6
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->access$300(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 436
    :pswitch_7
    packed-switch p2, :pswitch_data_3

    goto :goto_0

    .line 437
    :pswitch_8
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->access$400(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 438
    :pswitch_9
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->this$0:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->access$300(Lcom/adobe/premiereclip/editor/ClipOptionsView;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_7
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 430
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 436
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 415
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipType(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/ClipOptionsView$ViewPagerAdapter;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    .line 401
    return-void
.end method
