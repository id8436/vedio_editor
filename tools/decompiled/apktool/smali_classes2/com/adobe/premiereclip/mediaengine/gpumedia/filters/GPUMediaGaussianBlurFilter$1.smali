.class Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter$1;
.super Ljava/lang/Object;
.source "GPUMediaGaussianBlurFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;->initTexelOffsets()V

    .line 110
    return-void
.end method
