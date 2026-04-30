.class public Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKGalleryFolderRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;

.field private context:Landroid/content/Context;

.field private files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;",
            "Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->files:Ljava/util/Map;

    .line 30
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->files:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;->showGooglePhotos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->files:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->files:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;->showGooglePhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderThumbnail:Landroid/widget/ImageView;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_publish_google_photo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->activity_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 45
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 46
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderName:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_google_photos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->files:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v2

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->files:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v2, v1}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v1

    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 58
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$2;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->files:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v2

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->files:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v2, v1}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v1

    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 70
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$3;

    invoke-direct {v2, p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$3;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_gallery_folder:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
