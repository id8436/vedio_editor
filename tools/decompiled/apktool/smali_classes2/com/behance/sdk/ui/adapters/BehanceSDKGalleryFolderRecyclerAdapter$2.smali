.class Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "BehanceSDKGalleryFolderRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;

    move-result-object v1

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$2;->val$key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;->onFolderClicked(Ljava/util/List;)V

    .line 63
    return-void
.end method
