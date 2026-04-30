.class public Lcom/adobe/premiereclip/util/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# static fields
.field private static final NO_LINE_LIMIT:I = -0x1


# instance fields
.field private mAvailableSpaceRect:Landroid/graphics/RectF;

.field private mEnableSizeCache:Z

.field private mInitiallized:Z

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mPaint:Landroid/text/TextPaint;

.field private final mSizeTester:Lcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextCachedSizes:Landroid/util/SparseIntArray;

.field private mTextRect:Landroid/graphics/RectF;

.field private mWidthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingMult:F

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingAdd:F

    .line 66
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMinTextSize:F

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mEnableSizeCache:Z

    .line 205
    new-instance v0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;-><init>(Lcom/adobe/premiereclip/util/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSizeTester:Lcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;

    .line 78
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->initialize()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingMult:F

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingAdd:F

    .line 66
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMinTextSize:F

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mEnableSizeCache:Z

    .line 205
    new-instance v0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;-><init>(Lcom/adobe/premiereclip/util/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSizeTester:Lcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;

    .line 83
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->initialize()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingMult:F

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingAdd:F

    .line 66
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMinTextSize:F

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mEnableSizeCache:Z

    .line 205
    new-instance v0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;-><init>(Lcom/adobe/premiereclip/util/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSizeTester:Lcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;

    .line 88
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->initialize()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/util/AutoResizeTextView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mWidthLimit:I

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/util/AutoResizeTextView;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingMult:F

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/util/AutoResizeTextView;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingAdd:F

    return v0
.end method

.method private adjustTextSize(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mInitiallized:Z

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 192
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMinTextSize:F

    float-to-int v0, v0

    .line 193
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 194
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 195
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 196
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mWidthLimit:I

    .line 197
    iget-object v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mWidthLimit:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 198
    iget-object v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 199
    const/4 v1, 0x0

    iget v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxTextSize:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSizeTester:Lcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;

    iget-object v4, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    .line 201
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->efficientTextSizeSearch(IILcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 199
    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private static binarySearch(IILcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 5

    .prologue
    .line 278
    .line 280
    add-int/lit8 v0, p1, -0x1

    move v2, p0

    move v1, p0

    .line 282
    :goto_0
    if-gt v2, v0, :cond_2

    .line 283
    add-int v1, v2, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 284
    invoke-interface {p2, v1, p3}, Lcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;->onTestSize(ILandroid/graphics/RectF;)I

    move-result v3

    .line 285
    if-gez v3, :cond_0

    .line 287
    add-int/lit8 v1, v1, 0x1

    :goto_1
    move v4, v1

    move v1, v2

    move v2, v4

    .line 294
    goto :goto_0

    .line 288
    :cond_0
    if-lez v3, :cond_1

    .line 289
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    move v2, v0

    .line 290
    goto :goto_1

    :cond_1
    move v0, v1

    .line 297
    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private efficientTextSizeSearch(IILcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 3

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mEnableSizeCache:Z

    if-nez v0, :cond_0

    .line 263
    invoke-static {p1, p2, p3, p4}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->binarySearch(IILcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v0

    .line 273
    :goto_0
    return v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 267
    :goto_1
    iget-object v1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 268
    if-eqz v1, :cond_2

    move v0, v1

    .line 269
    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 271
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->binarySearch(IILcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    .line 273
    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;

    .line 93
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxTextSize:F

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    .line 95
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    .line 96
    iget v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxLines:I

    if-nez v0, :cond_0

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxLines:I

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mInitiallized:Z

    .line 101
    return-void
.end method

.method private reAdjust()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public enableSizeCache(Z)V
    .locals 1

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mEnableSizeCache:Z

    .line 256
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 257
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxLines:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 313
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->reAdjust()V

    .line 316
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 305
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->reAdjust()V

    .line 306
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 170
    iput p2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingMult:F

    .line 171
    iput p1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mSpacingAdd:F

    .line 172
    return-void
.end method

.method public setLines(I)V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 148
    iput p1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxLines:I

    .line 149
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->reAdjust()V

    .line 150
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 119
    iput p1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxLines:I

    .line 120
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->reAdjust()V

    .line 121
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMinTextSize:F

    .line 181
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->reAdjust()V

    .line 182
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxLines:I

    .line 131
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->reAdjust()V

    .line 132
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxLines:I

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->reAdjust()V

    .line 143
    return-void

    .line 140
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxLines:I

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 111
    iput p1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxTextSize:F

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 113
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 161
    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mMaxTextSize:F

    .line 163
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 164
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 165
    return-void

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method
