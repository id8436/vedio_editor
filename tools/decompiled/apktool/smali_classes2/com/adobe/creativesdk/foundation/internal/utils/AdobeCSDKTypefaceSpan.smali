.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "AdobeCSDKTypefaceSpan.java"


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;->newType:Landroid/graphics/Typeface;

    .line 31
    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 53
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 57
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 58
    const/high16 v0, -0x41800000    # -0.25f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 61
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    return-void

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 36
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 41
    return-void
.end method
