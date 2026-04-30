.class Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;
.super Ljava/lang/Object;
.source "GPUMediaFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field final synthetic val$location:I

.field final synthetic val$point:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Landroid/graphics/PointF;I)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;->val$point:Landroid/graphics/PointF;

    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;->val$location:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 421
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 422
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;->val$point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v2

    .line 423
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;->val$point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v3

    .line 424
    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;->val$location:I

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 425
    return-void
.end method
