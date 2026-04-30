.class Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$2;
.super Ljava/lang/Object;
.source "GPUMediaFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field final synthetic val$floatValue:F

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;IF)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$2;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$2;->val$location:I

    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$2;->val$floatValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$2;->val$location:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$2;->val$floatValue:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 376
    return-void
.end method
