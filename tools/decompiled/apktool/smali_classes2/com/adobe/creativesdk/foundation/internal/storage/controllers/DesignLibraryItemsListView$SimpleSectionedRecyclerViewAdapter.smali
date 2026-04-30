.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DesignLibraryItemsListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final SECTION_TYPE:I


# instance fields
.field private _sectionsPositions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _totalItemsCount:I

.field private final mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSectionInfoValid:Z

.field private mSections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 563
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 556
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSectionInfoValid:Z

    .line 559
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    .line 561
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_totalItemsCount:I

    .line 564
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 565
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 566
    return-void
.end method

.method private buildSectionInformation()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 761
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSectionInfoValid:Z

    if-eqz v1, :cond_0

    .line 780
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getSectionCount()I

    move-result v3

    .line 765
    new-array v4, v3, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;

    move v1, v0

    move v2, v0

    .line 768
    :goto_1
    if-ge v0, v3, :cond_1

    .line 769
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;

    invoke-direct {v5, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;I)V

    .line 770
    aput-object v5, v4, v0

    .line 772
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getNumOfItemsInSection(I)I

    move-result v5

    .line 773
    add-int/2addr v2, v5

    .line 774
    add-int/2addr v1, v5

    .line 768
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 776
    :cond_1
    add-int v0, v1, v3

    .line 777
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_totalItemsCount:I

    .line 778
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->setSections([Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;)V

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSectionInfoValid:Z

    goto :goto_0
.end method

.method private getSectionNumFromGlobalPos(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 656
    move v1, v0

    move v2, v0

    .line 657
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->sectionedPosition:I

    if-gt v0, p1, :cond_1

    .line 663
    :cond_0
    return v2

    .line 661
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 657
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract calculateItemLayoutProperties(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;)V
.end method

.method protected abstract createViewHolderOfType(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getTotalItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 728
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemPositionDataFromGlobalPosition(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 670
    .line 672
    const/4 v1, -0x1

    .line 674
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move v0, v2

    :goto_0
    if-ltz v3, :cond_2

    .line 675
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->sectionedPosition:I

    .line 677
    if-ne v0, p1, :cond_0

    .line 678
    const/4 v0, 0x1

    move v2, v3

    move v4, v0

    move v0, v1

    move v1, v4

    .line 686
    :goto_1
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;)V

    .line 687
    iput v2, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->sectionNum:I

    .line 688
    iput v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->positionWithinSection:I

    .line 689
    iput-boolean v1, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->isSectionHeader:Z

    .line 691
    return-object v3

    .line 680
    :cond_0
    if-ge v0, p1, :cond_1

    .line 681
    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v2, v3

    .line 682
    goto :goto_1

    .line 674
    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v4, v0

    move v0, v3

    move v3, v4

    goto :goto_0

    :cond_2
    move v4, v1

    move v1, v2

    move v2, v0

    move v0, v4

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getItemPositionDataFromGlobalPosition(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;

    move-result-object v0

    .line 606
    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->isSectionHeader:Z

    if-eqz v1, :cond_0

    .line 607
    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->sectionNum:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getSectionViewType(I)I

    move-result v0

    .line 611
    :goto_0
    return v0

    .line 609
    :cond_0
    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->sectionNum:I

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->positionWithinSection:I

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getSectionItemViewType(II)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getNumOfItemsInSection(I)I
.end method

.method protected abstract getSectionCount()I
.end method

.method protected abstract getSectionItemViewType(II)I
.end method

.method public getSectionPositions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_sectionsPositions:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_sectionsPositions:Ljava/util/HashSet;

    .line 575
    :goto_0
    return-object v0

    .line 571
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_sectionsPositions:Ljava/util/HashSet;

    .line 572
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 573
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_sectionsPositions:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->firstPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 572
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_sectionsPositions:Ljava/util/HashSet;

    goto :goto_0
.end method

.method protected abstract getSectionViewType(I)I
.end method

.method protected getTotalItemCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 749
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getSectionCount()I

    move-result v2

    move v1, v0

    .line 751
    :goto_0
    if-ge v0, v2, :cond_0

    .line 752
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getNumOfItemsInSection(I)I

    move-result v3

    .line 753
    add-int/2addr v1, v3

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    add-int v0, v1, v2

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_totalItemsCount:I

    .line 757
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->_totalItemsCount:I

    return v0
.end method

.method public invalidateAdapter()V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSectionInfoValid:Z

    .line 784
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->buildSectionInformation()V

    .line 785
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 588
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->getItemPositionDataFromGlobalPosition(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;

    move-result-object v0

    .line 590
    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->isSectionHeader:Z

    if-eqz v1, :cond_0

    .line 591
    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->sectionNum:I

    invoke-virtual {p0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->onBindViewHolderOfSection(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 596
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->calculateItemLayoutProperties(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;)V

    .line 597
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 598
    return-void

    .line 593
    :cond_0
    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->sectionNum:I

    iget v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$ItemPositionData;->positionWithinSection:I

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->onBindViewHolderOfSectionItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    goto :goto_0
.end method

.method protected abstract onBindViewHolderOfSection(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method

.method protected abstract onBindViewHolderOfSectionItem(Landroid/support/v7/widget/RecyclerView$ViewHolder;III)V
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 581
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->createViewHolderOfType(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setSections([Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 634
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 636
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 646
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 647
    iget v4, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->firstPosition:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->sectionedPosition:I

    .line 648
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    iget v5, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->sectionedPosition:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 649
    add-int/lit8 v1, v1, 0x1

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 653
    return-void
.end method
