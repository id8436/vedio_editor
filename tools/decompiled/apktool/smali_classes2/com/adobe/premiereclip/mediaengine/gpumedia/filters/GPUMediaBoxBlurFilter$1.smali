.class Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter$1;
.super Ljava/lang/Object;
.source "GPUMediaBoxBlurFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;->initTexelOffsets()V

    .line 97
    return-void
.end method
