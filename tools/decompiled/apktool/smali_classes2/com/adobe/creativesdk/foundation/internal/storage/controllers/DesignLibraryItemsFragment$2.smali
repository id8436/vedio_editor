.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;
.super Ljava/lang/Object;
.source "DesignLibraryItemsFragment.java"

# interfaces
.implements Lcom/getbase/floatingactionbutton/h;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuCollapsed()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->mAlphaPane:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    return-void
.end method

.method public onMenuExpanded()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->mAlphaPane:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->mPhotoButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->mUploadButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 471
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->mPhotoButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->mUploadButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_UPLOAD_IMAGE_TO_LIBRARY_MENU_TITLE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
