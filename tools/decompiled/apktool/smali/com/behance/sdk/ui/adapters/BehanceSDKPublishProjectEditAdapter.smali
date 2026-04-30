.class public Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BehanceSDKPublishProjectEditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/behance/sdk/project/modules/ProjectModule;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private callback:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;

.field private layoutInflater:Landroid/view/LayoutInflater;


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
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->callback:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    .line 69
    if-nez p2, :cond_0

    .line 71
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_edit_fragment_grid_item:I

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    :cond_0
    sget v1, Lcom/behance/sdk/R$id;->add_project_edit_fragment_image_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 76
    sget v1, Lcom/behance/sdk/R$id;->add_project_edit_fragment_image_view_duplicate:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 78
    sget v1, Lcom/behance/sdk/R$id;->add_project_edit_fragment_embed_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    sget v2, Lcom/behance/sdk/R$id;->add_project_edit_fragment_rotate_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 80
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v2

    .line 81
    sget-object v5, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->IMAGE:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    invoke-virtual {v5, v2}, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->CREATIVECLOUD_ASSET:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    invoke-virtual {v5, v2}, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move-object v5, v0

    .line 82
    check-cast v5, Lcom/behance/sdk/project/modules/ImageModule;

    .line 83
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 84
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {v5, v2}, Lcom/behance/sdk/project/modules/ImageModule;->getThumbNail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    new-instance v0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;Lcom/behance/sdk/project/modules/ImageModule;Landroid/widget/ImageView;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_2
    :goto_0
    return-object p2

    .line 126
    :cond_3
    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->EMBED:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    invoke-virtual {v4, v2}, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 130
    check-cast v0, Lcom/behance/sdk/project/modules/EmbedModule;

    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/EmbedModule;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 131
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectEditFragmentEmbedDesc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCallBack(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->callback:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;

    .line 139
    return-void
.end method
