.class Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster",
        "<",
        "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaVignetteFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;)V
    .locals 1

    .prologue
    .line 637
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;->getFilter()Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaVignetteFilter;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;->range(IFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaVignetteFilter;->setVignetteStart(F)V

    .line 641
    return-void
.end method
