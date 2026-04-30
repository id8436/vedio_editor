.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKProjectEditorReorderRecyclerAdapter.java"

# interfaces
.implements Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;",
        ">;",
        "Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private final swipeListener:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;",
            "Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->modules:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->swipeListener:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->swipeListener:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;

    return-object v0
.end method

.method private getEmbedRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    const-string/jumbo v0, "src=\"(.*?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;I)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 58
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;

    .line 62
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->isNewModule()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 69
    :goto_0
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderHandle:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v1

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getDisp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    goto :goto_0

    .line 70
    :cond_2
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;

    if-eqz v1, :cond_3

    .line 71
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_unsupported:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 75
    :cond_3
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    if-eqz v1, :cond_4

    .line 76
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->getEmbedRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 78
    :cond_4
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    if-eqz v1, :cond_6

    .line 79
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1, v4}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 82
    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    .line 84
    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getHtml()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->getEmbedRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 87
    :cond_6
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;

    if-eqz v1, :cond_7

    .line 88
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 89
    :cond_7
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v1, v0

    .line 91
    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getHtml()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_9

    .line 94
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_2
    const-string/jumbo v1, "\\n\\n"

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_8
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 96
    :cond_9
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_reorder_module:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onItemMoved(II)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->modules:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->notifyItemMoved(II)V

    .line 133
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->swipeListener:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;->onDragActionComplete(Ljava/util/List;)V

    .line 134
    return-void
.end method

.method public onItemRemoved(I)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->notifyItemRemoved(I)V

    .line 140
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->swipeListener:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorReorderRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKDragListener;->onDragActionComplete(Ljava/util/List;)V

    .line 141
    return-void
.end method
