.class Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# instance fields
.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    .line 396
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;-><init>()V

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method
