.class public abstract Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "DragSortCursorAdapter.java"

# interfaces
.implements Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortListener;


# static fields
.field public static final REMOVED:I = -0x1


# instance fields
.field private mListMapping:Landroid/util/SparseIntArray;

.field private mRemovedCursorPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private cleanMapping()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    move v1, v0

    .line 171
    :goto_0
    if-ge v1, v3, :cond_1

    .line 172
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 173
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 178
    :goto_1
    if-ge v1, v3, :cond_2

    .line 179
    iget-object v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 181
    :cond_2
    return-void
.end method

.method private resetMappings()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 80
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 67
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 68
    return-void
.end method

.method public drag(II)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public drop(II)V
    .locals 5

    .prologue
    .line 112
    if-eq p1, p2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 115
    if-le p1, p2, :cond_0

    .line 116
    :goto_0
    if-le p1, p2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 120
    :cond_0
    :goto_1
    if-ge p1, p2, :cond_1

    .line 121
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->cleanMapping()V

    .line 127
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 129
    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCursorPosition(I)I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getCursorPositions()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-object v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getListPosition(I)I
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const/4 p1, -0x1

    .line 232
    :cond_0
    :goto_0
    return p1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 229
    if-ltz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mRemovedCursorPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->getCount()I

    move-result v0

    .line 146
    :goto_0
    if-ge p1, v0, :cond_1

    .line 147
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->mListMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 152
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->cleanMapping()V

    .line 153
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 75
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortCursorAdapter;->resetMappings()V

    .line 56
    return-object v0
.end method
