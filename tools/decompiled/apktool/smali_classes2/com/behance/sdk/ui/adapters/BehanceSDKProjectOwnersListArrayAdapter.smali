.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BehanceSDKProjectOwnersListArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private layoutResId:I

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;->context:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;->layoutResId:I

    .line 31
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;->users:Ljava/util/List;

    .line 32
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;->layoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 41
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdk_projectDetailsOwnersListItemAvatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsOwnersListItemName:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;->users:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 45
    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->findProfileImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 46
    invoke-virtual {v2}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-object p2
.end method
