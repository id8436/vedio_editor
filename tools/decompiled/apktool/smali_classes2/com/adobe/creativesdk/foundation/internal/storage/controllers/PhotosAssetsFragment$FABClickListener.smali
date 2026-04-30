.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;
.super Ljava/lang/Object;
.source "PhotosAssetsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$1;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 272
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$802(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;Z)Z

    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 289
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 290
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_PHOTO_UPLOAD_FILES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_CANCEL_PHOTO_UPLOAD:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_PHOTO_UPLOAD_FILES_FROM_CAMERA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$FABClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    goto :goto_0
.end method
