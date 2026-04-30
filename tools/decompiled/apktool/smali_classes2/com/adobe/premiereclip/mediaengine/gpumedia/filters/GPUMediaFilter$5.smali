.class Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$5;
.super Ljava/lang/Object;
.source "GPUMediaFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field final synthetic val$arrayValue:[F

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I[F)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$5;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$5;->val$location:I

    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$5;->val$arrayValue:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 402
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$5;->val$location:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$5;->val$arrayValue:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 403
    return-void
.end method
