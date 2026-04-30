.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$2;
.super Ljava/lang/Object;
.source "AssetListCellView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

.field final synthetic val$alpha:F


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;F)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$2;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$2;->val$alpha:F

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setImageAssetAlpha(F)V

    .line 401
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method
