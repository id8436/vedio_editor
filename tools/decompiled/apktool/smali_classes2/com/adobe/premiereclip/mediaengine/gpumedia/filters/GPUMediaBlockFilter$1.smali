.class Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;
.super Ljava/lang/Object;
.source "GPUMediaBlockFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

.field final synthetic val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field final synthetic val$index:I

.field final synthetic val$oldFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$oldFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iput p4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$oldFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    if-eq v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;->mFilters:Ljava/util/List;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$index:I

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;->buildNodes()V

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    iget v1, v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;->mOutputWidth:I

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    iget v2, v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;->mOutputHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 158
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->init()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter$1;->val$oldFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->destroy()V

    .line 162
    :cond_1
    return-void
.end method
