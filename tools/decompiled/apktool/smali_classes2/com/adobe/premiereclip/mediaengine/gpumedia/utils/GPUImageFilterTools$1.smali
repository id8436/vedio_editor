.class final Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filters:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;->val$listener:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;->val$filters:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;->val$listener:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;->val$filters:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    .line 188
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-static {v2, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->access$100(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    .line 187
    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;->onGpuImageFilterChosenListener(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 189
    return-void
.end method
