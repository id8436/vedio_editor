.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;
.super Ljava/lang/Object;
.source "AssetsRecyclerListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private positionClicked:I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;->positionClicked:I

    .line 249
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;->positionClicked:I

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->handleItemClick(Landroid/view/View;I)V

    .line 254
    return-void
.end method
