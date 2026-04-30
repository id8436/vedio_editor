.class Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;
.source "ItemSelectionSupport.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    .line 475
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ClickItemTouchListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 476
    return-void
.end method


# virtual methods
.method performItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$200(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    .line 483
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$300(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    move-result-object v0

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->MULTIPLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-ne v0, v4, :cond_6

    .line 484
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 485
    :goto_0
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v4

    invoke-virtual {v4, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->put(IZ)V

    .line 487
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    if-eqz v0, :cond_4

    .line 489
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    move-result-object v4

    invoke-virtual {v3, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v6, v7, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->put(JLjava/lang/Object;)V

    .line 495
    :cond_0
    :goto_1
    if-eqz v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$608(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)I

    .line 521
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 522
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$700(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)V

    .line 525
    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 484
    goto :goto_0

    .line 491
    :cond_4
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    move-result-object v4

    invoke-virtual {v3, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->delete(J)V

    goto :goto_1

    .line 498
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$610(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)I

    goto :goto_2

    .line 502
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$300(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    move-result-object v0

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->SINGLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-ne v0, v4, :cond_b

    .line 503
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 504
    :goto_3
    if-eqz v0, :cond_9

    .line 505
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->clear()V

    .line 506
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->put(IZ)V

    .line 508
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 509
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->clear()V

    .line 510
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    move-result-object v0

    invoke-virtual {v3, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v5, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->put(JLjava/lang/Object;)V

    .line 513
    :cond_7
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$602(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;I)I

    goto :goto_2

    :cond_8
    move v0, v2

    .line 503
    goto :goto_3

    .line 514
    :cond_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->size()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    :cond_a
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->access$602(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;I)I

    goto/16 :goto_2

    :cond_b
    move v1, v2

    goto/16 :goto_2
.end method

.method performItemLongClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x1

    return v0
.end method
