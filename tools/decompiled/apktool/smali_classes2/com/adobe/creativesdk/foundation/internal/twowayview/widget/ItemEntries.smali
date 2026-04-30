.class Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;
.super Ljava/lang/Object;
.source "ItemEntries.java"


# static fields
.field private static final MIN_SIZE:I = 0xa


# instance fields
.field private mAdapterSize:I

.field private mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

.field private mRestoringItem:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureSize(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    if-nez v0, :cond_1

    .line 52
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    .line 56
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->sizeForPosition(I)I

    move-result v1

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    .line 57
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v2, v2

    invoke-static {v1, v0, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0
.end method

.method private sizeForPosition(I)I
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    .line 37
    :goto_0
    if-gt v0, p1, :cond_0

    .line 38
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 43
    :cond_0
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mRestoringItem:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mAdapterSize:I

    if-le v0, v1, :cond_1

    .line 44
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mAdapterSize:I

    .line 47
    :cond_1
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public getItemEntry(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public invalidateItemLanesAfter(I)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 100
    :cond_0
    return-void

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    aget-object v0, v0, p1

    .line 96
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->invalidateLane()V

    .line 94
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method offsetForAddition(II)V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->ensureSize(I)V

    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0
.end method

.method offsetForRemoval(II)V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->ensureSize(I)V

    .line 115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    add-int v1, p1, p2

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v1, v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public putItemEntry(ILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->ensureSize(I)V

    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    aput-object p2, v0, p1

    .line 73
    return-void
.end method

.method public restoreItemEntry(ILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mRestoringItem:Z

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->putItemEntry(ILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mRestoringItem:Z

    .line 79
    return-void
.end method

.method public setAdapterSize(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mAdapterSize:I

    .line 87
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->mItemEntries:[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
