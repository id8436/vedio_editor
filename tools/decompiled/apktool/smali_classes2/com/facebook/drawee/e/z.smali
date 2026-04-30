.class Lcom/facebook/drawee/e/z;
.super Lcom/facebook/drawee/e/s;
.source "ScalingUtils.java"


# static fields
.field public static final i:Lcom/facebook/drawee/e/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/facebook/drawee/e/z;

    invoke-direct {v0}, Lcom/facebook/drawee/e/z;-><init>()V

    sput-object v0, Lcom/facebook/drawee/e/z;->i:Lcom/facebook/drawee/e/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/facebook/drawee/e/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 203
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 204
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 205
    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 206
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 207
    add-float v0, v1, v3

    float-to-int v0, v0

    int-to-float v0, v0

    add-float v1, v2, v3

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string/jumbo v0, "fit_start"

    return-object v0
.end method
