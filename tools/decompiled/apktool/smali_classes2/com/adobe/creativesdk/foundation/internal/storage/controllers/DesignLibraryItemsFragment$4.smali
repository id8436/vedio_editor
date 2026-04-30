.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;
.super Ljava/lang/Object;
.source "DesignLibraryItemsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 491
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$702(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;Z)Z

    .line 496
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 505
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->mAlphaPane:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->mFloatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 507
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_UPLOAD_FILES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_CANCEL_LIBRARY_UPLOAD:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    goto :goto_0
.end method
