.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$13;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

.field final synthetic val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$13;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$13;->val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 840
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "Registering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$13;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$13;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->backPressed()V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$13;->val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onBackPressed()V

    goto :goto_0
.end method
