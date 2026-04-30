.class public Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BehanceSDKLocationFilterListItemArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectedLocationDTO:Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_location_filter_item_adapter:I

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->context:Landroid/content/Context;

    .line 25
    invoke-virtual {p0, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->setSelectedLocationDTO(Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;)V

    .line 26
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->data:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getSelectedLocationDTO()Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->selectedLocationDTO:Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 31
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    sget v1, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_location_filter_item_adapter:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 35
    sget v0, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogLocationItemTxtView:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogLocationItemSelectedIdicatorImageView:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 38
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 39
    instance-of v4, v1, Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;

    if-eqz v4, :cond_0

    .line 40
    check-cast v1, Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;

    .line 41
    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->getSelectedLocationDTO()Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->getSelectedLocationDTO()Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/behance/sdk/R$color;->bsdk_adobe_blue:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    :goto_0
    return-object v2

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/behance/sdk/R$color;->bsdk_location_filter_dialog_location_item_txt_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSelectedLocationDTO(Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->selectedLocationDTO:Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;

    .line 60
    return-void
.end method
