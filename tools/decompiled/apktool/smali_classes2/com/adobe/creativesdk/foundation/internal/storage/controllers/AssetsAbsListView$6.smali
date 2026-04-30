.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$6;
.super Ljava/lang/Object;
.source "AssetsAbsListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->handleListItemLongClick(I)V

    .line 376
    const/4 v0, 0x1

    return v0
.end method
