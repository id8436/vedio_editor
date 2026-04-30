.class Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$LevelsMinMidAdjuster;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster",
        "<",
        "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;)V
    .locals 1

    .prologue
    .line 714
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$LevelsMinMidAdjuster;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$LevelsMinMidAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$LevelsMinMidAdjuster;->getFilter()Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;

    invoke-virtual {p0, p1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$LevelsMinMidAdjuster;->range(IFF)F

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setMin(FFF)V

    .line 718
    return-void
.end method
