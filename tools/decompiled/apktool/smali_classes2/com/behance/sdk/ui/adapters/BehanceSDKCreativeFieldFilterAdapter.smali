.class public Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;
.super Lcom/behance/sdk/google/listview/SectionalBaseAdapter;
.source "BehanceSDKCreativeFieldFilterAdapter.java"


# instance fields
.field all:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private pinnedHeaderViewLeftPadding:I

.field private selectedField:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->selectedField:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->initializeHeaderViewPadding()V

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->initalizeData(Ljava/util/List;Ljava/util/List;)V

    .line 36
    return-void
.end method

.method private getStartingAlphabet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initalizeData(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    .line 48
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->POPULAR:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 50
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->getStartingAlphabet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 53
    if-nez v1, :cond_1

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getCategory()Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    move-result-object v1

    .line 59
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->NONE:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    if-eq v1, v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 61
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 62
    if-nez v1, :cond_2

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_3
    return-void
.end method

.method private initializeHeaderViewPadding()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_search_filter_creative_field_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->pinnedHeaderViewLeftPadding:I

    .line 40
    return-void
.end method

.method private setSelected(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_search_filter_creative_fields_dialog_selected_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    return-void
.end method

.method private setUnselected(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_search_filter_creative_fields_dialog_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    return-void
.end method


# virtual methods
.method protected bindSectionHeader(Landroid/view/View;IZ)V
    .locals 3

    .prologue
    .line 113
    sget v0, Lcom/behance/sdk/R$id;->bsdkCreativeFieldGroupHeader:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    if-eqz p3, :cond_0

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    check-cast v0, Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->getSections()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->getSectionForPosition(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 171
    check-cast p1, Landroid/widget/TextView;

    .line 172
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->getSections()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->getSectionForPosition(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->pinnedHeaderViewLeftPadding:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 174
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 173
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    return-void
.end method

.method public getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 126
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 128
    if-nez p2, :cond_0

    .line 129
    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_creative_field_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 131
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdkCreativeFieldFilterDialogItemTxtView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    sget v1, Lcom/behance/sdk/R$id;->bsdkCreativeFieldFilterDialogItemSelectedIdicatorImageView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 134
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->getItem(I)Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object v3

    .line 138
    iget-object v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->selectedField:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->setSelected(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 143
    :goto_0
    const-string/jumbo v2, "ALL_CREATIVE_FIELDS_ID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->selectedField:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->setSelected(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 146
    :cond_1
    return-object p2

    .line 141
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->setUnselected(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return v1
.end method

.method public getItem(I)Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;
    .locals 4

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    if-lt p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    .line 95
    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 99
    :goto_1
    return-object v0

    .line 97
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->getItem(I)Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 179
    if-gez p1, :cond_0

    move p1, v1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 182
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 183
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 185
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 186
    :goto_0
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 187
    if-ne p1, v2, :cond_2

    .line 193
    :goto_1
    return v3

    .line 190
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    iget-object v6, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 186
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v3, v1

    .line 193
    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 198
    .line 199
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 200
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    .line 201
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 202
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    iget-object v5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 204
    if-lt p1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-ge p1, v5, :cond_0

    .line 209
    :goto_1
    return v1

    .line 207
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public bridge synthetic getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->getSections()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCreativeFieldFilterAdapter;->all:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 216
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected onNextPageRequested(I)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
