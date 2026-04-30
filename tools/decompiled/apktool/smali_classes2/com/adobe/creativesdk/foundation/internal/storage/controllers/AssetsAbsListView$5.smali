.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$5;
.super Ljava/lang/Object;
.source "AssetsAbsListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->handleListItemClick(I)V

    .line 369
    return-void
.end method
