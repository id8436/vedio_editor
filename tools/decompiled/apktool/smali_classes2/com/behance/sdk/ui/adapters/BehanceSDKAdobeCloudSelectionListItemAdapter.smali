.class public Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "BehanceSDKAdobeCloudSelectionListItemAdapter.java"


# instance fields
.field private cloudsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private selectedCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->cloudsList:Ljava/util/List;

    .line 42
    invoke-virtual {p0, p3}, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->setSelectedCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 43
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->cloudsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->cloudsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->cloudsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->cloudsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->selectedCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_adobe_cloud_selection_list_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    sget v0, Lcom/behance/sdk/R$id;->bsdkCloudSelectionItemAdapterCloudNameTextView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    sget v2, Lcom/behance/sdk/R$id;->bsdkCloudSelectionItemAdapterSelectedIndicator:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->getSelectedCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_1
    :goto_0
    return-object p2

    .line 82
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSelectedCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAdobeCloudSelectionListItemAdapter;->selectedCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 100
    return-void
.end method
