.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$3;
.super Ljava/lang/Object;
.source "DesignLibraryCollectionFragment.java"

# interfaces
.implements Lcom/getbase/floatingactionbutton/h;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuCollapsed()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    return-void
.end method

.method public onMenuExpanded()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    .line 588
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 589
    return-void
.end method
