.class Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKGalleryFolderRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;->onGooglePhotosClicked()V

    .line 51
    return-void
.end method
