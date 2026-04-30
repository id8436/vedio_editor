.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;
.super Ljava/lang/Object;
.source "ItemSelectionSupport.java"


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final INVALID_POSITION:I = -0x1

.field private static final STATE_KEY_CHECKED_COUNT:Ljava/lang/String; = "checkedCount"

.field private static final STATE_KEY_CHECKED_ID_STATES:Ljava/lang/String; = "checkedIdStates"

.field private static final STATE_KEY_CHECKED_STATES:Ljava/lang/String; = "checkedStates"

.field private static final STATE_KEY_CHOICE_MODE:Ljava/lang/String; = "choiceMode"


# instance fields
.field private mCheckedCount:I

.field private mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

.field private mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

.field private mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mTouchListener:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 46
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mTouchListener:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;

    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mTouchListener:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 48
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)I
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$610(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)I
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->updateOnScreenCheckedViews()V

    return-void
.end method

.method public static addTo(Landroid/support/v7/widget/RecyclerView;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;
    .locals 2

    .prologue
    .line 346
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->from(Landroid/support/v7/widget/RecyclerView;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    move-result-object v0

    .line 347
    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 349
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_twowayview_item_selection_support:I

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setTag(ILjava/lang/Object;)V

    .line 354
    :cond_0
    return-object v0
.end method

.method public static from(Landroid/support/v7/widget/RecyclerView;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;
    .locals 1

    .prologue
    .line 371
    if-nez p0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_twowayview_item_selection_support:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    goto :goto_0
.end method

.method public static removeFrom(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 358
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->from(Landroid/support/v7/widget/RecyclerView;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    move-result-object v0

    .line 359
    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->clearChoices()V

    .line 366
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mTouchListener:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$TouchListener;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 367
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_twowayview_item_selection_support:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private updateOnScreenCheckedViews()V
    .locals 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 52
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v3

    .line 55
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v4, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->get(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->setViewChecked(Landroid/view/View;Z)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public clearChoices()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->clear()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->clear()V

    .line 241
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    .line 242
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->updateOnScreenCheckedViews()V

    .line 243
    return-void
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 141
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 142
    :cond_0
    new-array v0, v1, [J

    .line 152
    :cond_1
    return-object v0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->size()I

    move-result v2

    .line 146
    new-array v0, v2, [J

    .line 148
    :goto_0
    if-ge v1, v2, :cond_1

    .line 149
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->SINGLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->keyAt(I)I

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-eq v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    return-object v0
.end method

.method public isItemChecked(I)Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->get(I)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdapterDataChanged()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    .line 284
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-eq v0, v1, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    .line 291
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->clear()V

    move v1, v2

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->keyAt(I)J

    move-result-wide v6

    .line 295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 297
    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    .line 298
    cmp-long v0, v6, v10

    if-eqz v0, :cond_4

    .line 300
    add-int/lit8 v0, v8, -0x14

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 301
    add-int/lit8 v8, v8, 0x14

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 304
    :goto_1
    if-ge v0, v8, :cond_5

    .line 305
    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    .line 306
    cmp-long v9, v6, v10

    if-nez v9, :cond_3

    .line 308
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v8, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->put(IZ)V

    .line 309
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->setValueAt(ILjava/lang/Object;)V

    move v0, v3

    .line 314
    :goto_2
    if-nez v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v0, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->delete(J)V

    .line 316
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    .line 317
    add-int/lit8 v1, v1, -0x1

    .line 293
    :cond_2
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 304
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0, v8, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->put(IZ)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->values()[Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    move-result-object v0

    const-string/jumbo v1, "choiceMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    .line 338
    const-string/jumbo v0, "checkedStates"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    .line 339
    const-string/jumbo v0, "checkedIdStates"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    .line 340
    const-string/jumbo v0, "checkedCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    .line 343
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    const-string/jumbo v1, "choiceMode"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    const-string/jumbo v1, "checkedStates"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    const-string/jumbo v1, "checkedIdStates"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 331
    const-string/jumbo v1, "checkedCount"

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    return-object v0
.end method

.method public setChoiceMode(Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-ne v0, p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    .line 270
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    if-nez v0, :cond_2

    .line 272
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    goto :goto_0
.end method

.method public setItemChecked(IZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-ne v0, v3, :cond_0

    .line 218
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mChoiceMode:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->MULTIPLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    if-ne v0, v4, :cond_5

    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->get(I)Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v1, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->put(IZ)V

    .line 174
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    if-eqz p2, :cond_3

    .line 176
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->put(JLjava/lang/Object;)V

    .line 182
    :cond_1
    :goto_1
    if-eq v0, p2, :cond_2

    .line 183
    if-eqz p2, :cond_4

    .line 184
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    .line 217
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->updateOnScreenCheckedViews()V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->delete(J)V

    goto :goto_1

    .line 186
    :cond_4
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    goto :goto_2

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 194
    :goto_3
    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 195
    :cond_6
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->clear()V

    .line 197
    if-eqz v0, :cond_7

    .line 198
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->clear()V

    .line 204
    :cond_7
    if-eqz p2, :cond_a

    .line 205
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v2, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->put(IZ)V

    .line 207
    if-eqz v0, :cond_8

    .line 208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedIdStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedIdStates;->put(JLjava/lang/Object;)V

    .line 211
    :cond_8
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    goto :goto_2

    :cond_9
    move v0, v2

    .line 190
    goto :goto_3

    .line 212
    :cond_a
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedStates:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$CheckedStates;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    :cond_b
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->mCheckedCount:I

    goto :goto_2
.end method

.method public setViewChecked(Landroid/view/View;Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 222
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 223
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 225
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method
