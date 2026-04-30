.class Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster",
        "<",
        "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCrosshatchFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;)V
    .locals 1

    .prologue
    .line 658
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 661
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->getFilter()Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCrosshatchFilter;

    const v1, 0x3d75c28f    # 0.06f

    invoke-virtual {p0, p1, v2, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->range(IFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCrosshatchFilter;->setCrossHatchSpacing(F)V

    .line 662
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->getFilter()Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCrosshatchFilter;

    const v1, 0x3bc49ba6    # 0.006f

    invoke-virtual {p0, p1, v2, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->range(IFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCrosshatchFilter;->setLineWidth(F)V

    .line 663
    return-void
.end method
