.class public Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;
.super Lcom/behance/sdk/google/listview/SectionalBaseAdapter;
.source "BehanceSDKCopyrightSettingsAdapter.java"


# instance fields
.field all:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private pinnedHeaderViewLeftPadding:I

.field private selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/behance/sdk/google/listview/SectionalBaseAdapter;-><init>()V

    .line 25
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDefaultValue()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 28
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 30
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->initializeHeaderViewPadding()V

    .line 31
    invoke-static {p1}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getAllCopyrightOptions(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    .line 32
    return-void
.end method

.method private initializeHeaderViewPadding()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_search_filter_creative_field_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->pinnedHeaderViewLeftPadding:I

    .line 36
    return-void
.end method

.method private setSelected(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_search_filter_creative_fields_dialog_selected_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    return-void
.end method

.method private setUnselected(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_search_filter_creative_fields_dialog_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 116
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    return-void
.end method


# virtual methods
.method protected bindSectionHeader(Landroid/view/View;IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    sget v0, Lcom/behance/sdk/R$id;->bsdkCopyrightSettingsGroupHeader:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    sget v1, Lcom/behance/sdk/R$id;->bsdkCopyrightSettingsGroupItemDivider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 76
    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    check-cast v0, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->getSections()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->getSectionForPosition(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 132
    check-cast p1, Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->getSections()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->getSectionForPosition(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->pinnedHeaderViewLeftPadding:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 135
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 134
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    return-void
.end method

.method public getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 91
    .line 92
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    if-nez p2, :cond_0

    .line 94
    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_copyright_settings_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdkCopyrightSettingsDialogItemTxtView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    sget v1, Lcom/behance/sdk/R$id;->bsdkCopyrightSettingsDialogItemSelectedIdicatorImageView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->getItem(I)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-virtual {v3, v2}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->setSelected(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 107
    :goto_0
    return-object p2

    .line 104
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->setUnselected(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 42
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

    .line 43
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return v1
.end method

.method public getItem(I)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 52
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

    .line 53
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    if-lt p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    .line 55
    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 59
    :goto_1
    return-object v0

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->getItem(I)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 140
    if-gez p1, :cond_0

    move p1, v1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 143
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 144
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 146
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 147
    :goto_0
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 148
    if-ne p1, v2, :cond_2

    .line 154
    :goto_1
    return v3

    .line 151
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    iget-object v6, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 147
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v3, v1

    .line 154
    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 159
    .line 160
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 161
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    .line 162
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    iget-object v5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    if-lt p1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-ge p1, v5, :cond_0

    .line 170
    :goto_1
    return v1

    .line 168
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 170
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public bridge synthetic getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->getSections()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->all:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 177
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected onNextPageRequested(I)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public setSelectedCopyRight(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightSettingsAdapter;->selectedCopyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 185
    return-void
.end method
