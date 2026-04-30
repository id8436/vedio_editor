.class abstract Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public abstract adjust(I)V
.end method

.method public filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ")",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 486
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 487
    return-object p0
.end method

.method public getFilter()Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    return-object v0
.end method

.method protected range(IFF)F
    .locals 2

    .prologue
    .line 497
    sub-float v0, p3, p2

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method protected range(III)I
    .locals 1

    .prologue
    .line 501
    sub-int v0, p3, p2

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p2

    return v0
.end method
