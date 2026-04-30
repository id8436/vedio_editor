.class public Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 61
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mIsFilterable:Z

    .line 63
    if-nez p1, :cond_0

    .line 64
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 69
    :goto_0
    if-nez p2, :cond_1

    .line 70
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 76
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 77
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 78
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 72
    :cond_1
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    .line 95
    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 147
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 177
    if-ge p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 192
    :goto_0
    return-object v0

    .line 182
    :cond_0
    sub-int v1, p1, v0

    .line 183
    const/4 v0, 0x0

    .line 184
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 186
    if-ge v1, v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 198
    sub-int v0, p1, v0

    .line 199
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 200
    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 204
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 238
    sub-int v0, p1, v0

    .line 239
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 240
    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 217
    if-ge p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 232
    :goto_0
    return-object v0

    .line 222
    :cond_0
    sub-int v1, p1, v0

    .line 223
    const/4 v0, 0x0

    .line 224
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 226
    if-ge v1, v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 156
    if-ge p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 171
    :goto_0
    return v0

    .line 161
    :cond_0
    sub-int v1, p1, v0

    .line 162
    const/4 v0, 0x0

    .line 163
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 165
    if-ge v1, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 259
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    .line 123
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 127
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 128
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 134
    :goto_1
    return v3

    .line 121
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 134
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    .line 106
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 110
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 111
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 117
    :goto_1
    return v3

    .line 104
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 117
    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 265
    :cond_0
    return-void
.end method
