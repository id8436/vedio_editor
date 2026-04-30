.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$5;
.super Ljava/lang/Object;
.source "DesignLibraryCollectionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 780
    :cond_0
    return-void
.end method
