.class public Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BehanceSDKPublishProjectPreviewAdapter.java"

# interfaces
.implements Lcom/i/a/b/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/behance/sdk/project/modules/ProjectModule;",
        ">;",
        "Lcom/i/a/b/f/a;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter$Callbacks;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private numOfModulesLoaded:I

.field private numOfModulesLoading:I


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
            "Lcom/behance/sdk/project/modules/ProjectModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 50
    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoaded:I

    .line 52
    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoading:I

    .line 64
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 65
    return-void
.end method

.method private checkForLoadingComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoaded:I

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoading:I

    if-lt v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter$Callbacks;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter$Callbacks;

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter$Callbacks;->onViewLoadingComplete()V

    .line 128
    :cond_0
    iput v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoading:I

    .line 129
    iput v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoaded:I

    .line 131
    :cond_1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 71
    if-nez p2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_preview_project_fragment_list_item:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    .line 76
    sget v1, Lcom/behance/sdk/R$id;->add_project_preview_project_fragment_image_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    sget v2, Lcom/behance/sdk/R$id;->add_project_preview_fragment_embed_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 79
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v3

    .line 80
    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->IMAGE:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    invoke-virtual {v4, v3}, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->CREATIVECLOUD_ASSET:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    invoke-virtual {v4, v3}, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 84
    iget v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoading:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->numOfModulesLoading:I

    .line 85
    invoke-virtual {v0, v1, p0}, Lcom/behance/sdk/project/modules/ImageModule;->displayImage(Landroid/widget/ImageView;Lcom/i/a/b/f/a;)V

    .line 97
    :cond_2
    :goto_0
    return-object p2

    .line 86
    :cond_3
    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->EMBED:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    invoke-virtual {v4, v3}, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, v0

    .line 89
    check-cast v1, Lcom/behance/sdk/project/modules/EmbedModule;

    invoke-virtual {v1}, Lcom/behance/sdk/project/modules/EmbedModule;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 90
    check-cast v0, Lcom/behance/sdk/project/modules/EmbedModule;

    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/EmbedModule;->getSubDescription()Ljava/lang/String;

    move-result-object v3

    .line 91
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragmentEmbedDesc:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragmentEmbedSubDesc:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->checkForLoadingComplete()V

    goto :goto_0
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->checkForLoadingComplete()V

    .line 104
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->checkForLoadingComplete()V

    .line 110
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/i/a/b/a/b;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->checkForLoadingComplete()V

    .line 116
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter$Callbacks;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter$Callbacks;

    .line 60
    return-void
.end method
