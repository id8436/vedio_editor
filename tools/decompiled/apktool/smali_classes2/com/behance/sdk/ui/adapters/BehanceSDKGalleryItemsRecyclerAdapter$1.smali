.class Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKGalleryItemsRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;->onReturnToFoldersClicked()V

    .line 50
    return-void
.end method
