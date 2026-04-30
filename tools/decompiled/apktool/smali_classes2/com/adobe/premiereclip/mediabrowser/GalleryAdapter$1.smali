.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GalleryAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getViewType()I

    move-result v0

    .line 96
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$1;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$100(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0
.end method
