.class Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$8;
.super Ljava/lang/Object;
.source "GPUMediaFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field final synthetic val$location:I

.field final synthetic val$matrix:[F


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I[F)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$8;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$8;->val$location:I

    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$8;->val$matrix:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$8;->val$location:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$8;->val$matrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 435
    return-void
.end method
