.class public Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;
.super Landroid/view/View;
.source "BehanceSDKAnimateNumberView.java"


# static fields
.field private static final ANIMATION_FRAME_RATE:I = 0x10

.field private static final UPDATE_LENGTH_MS:I = 0xfa


# instance fields
.field private decrementing:Z

.field private incrementing:Z

.field private minWidth:I

.field private numFull:Ljava/lang/String;

.field private numPartOne:Ljava/lang/String;

.field private numPartTwoNew:Ljava/lang/String;

.field private numPartTwoOld:Ljava/lang/String;

.field private number:I

.field private startTimestamp:J

.field private final textBounds:Landroid/graphics/Rect;

.field private textPaint:Landroid/text/TextPaint;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->startTimestamp:J

    .line 28
    iput-boolean v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    iput-boolean v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrementing:Z

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    .line 31
    iput v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->startTimestamp:J

    .line 28
    iput-boolean v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    iput-boolean v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrementing:Z

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    .line 31
    iput v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->startTimestamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;J)J
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->startTimestamp:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->updateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$308(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    return v0
.end method

.method static synthetic access$310(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    return v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->setNums()V

    return-void
.end method

.method static synthetic access$502(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrementing:Z

    return p1
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->format(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->format(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    const-string/jumbo v0, ""

    .line 158
    :goto_0
    return-object v0

    .line 151
    :cond_1
    const-string/jumbo v1, ""

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    if-lez v1, :cond_4

    .line 153
    add-int/lit8 v3, p2, 0x1

    rem-int/lit8 v2, p2, 0x3

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    if-eqz p3, :cond_3

    .line 154
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move p2, v3

    move-object v0, v2

    goto :goto_1

    .line 158
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 44
    sget-object v0, Lcom/behance/sdk/R$styleable;->BehanceSDKAnimateNumberView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    .line 47
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 48
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    sget v2, Lcom/behance/sdk/R$styleable;->BehanceSDKAnimateNumberView_text_color:I

    sget v3, Lcom/behance/sdk/R$color;->bsdk_project_editor_primary_color:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 49
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    sget v2, Lcom/behance/sdk/R$styleable;->BehanceSDKAnimateNumberView_text_color:I

    sget v3, Lcom/behance/sdk/R$color;->bsdk_project_editor_primary_color:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    sget v2, Lcom/behance/sdk/R$styleable;->BehanceSDKAnimateNumberView_text_size:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_card_title_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 51
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/behance/sdk/util/BehanceSDKFontUtils;->setAdobeCleanFont(Landroid/content/Context;Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 52
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKAnimateNumberView_min_width:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->minWidth:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private interpolate(D)D
    .locals 5

    .prologue
    .line 100
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private setNums()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 106
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoNew:Ljava/lang/String;

    .line 109
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    const-string/jumbo v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    if-nez v0, :cond_1

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    .line 115
    :goto_2
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoNew:Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 114
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 119
    :cond_2
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrementing:Z

    if-eqz v0, :cond_4

    .line 120
    :goto_3
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    if-nez v1, :cond_3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    .line 125
    :goto_4
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoNew:Ljava/lang/String;

    goto :goto_3

    .line 124
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoNew:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoNew:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoNew:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public decrement()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrement(I)Z

    move-result v0

    return v0
.end method

.method public decrement(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 194
    iget-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrementing:Z

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    .line 196
    :cond_1
    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrementing:Z

    .line 197
    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$2;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)V

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->updateRunnable:Ljava/lang/Runnable;

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->startTimestamp:J

    .line 213
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->updateRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    return v0
.end method

.method public increment()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->increment(I)Z

    move-result v0

    return v0
.end method

.method public increment(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 166
    iget-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrementing:Z

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    .line 168
    :cond_1
    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    .line 169
    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;)V

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->updateRunnable:Ljava/lang/Runnable;

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->startTimestamp:J

    .line 185
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->updateRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->incrementing:Z

    if-eqz v0, :cond_0

    .line 62
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->startTimestamp:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x406f400000000000L    # 250.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->interpolate(D)D

    move-result-wide v2

    .line 66
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 68
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 69
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v6, v0

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 72
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoNew:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v2

    iget-object v10, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->getTextSize()F

    move-result v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v6, v6

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v0, v8, v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 75
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->decrementing:Z

    if-eqz v0, :cond_1

    .line 77
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->startTimestamp:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x406f400000000000L    # 250.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->interpolate(D)D

    move-result-wide v2

    .line 81
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 83
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 84
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 87
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoOld:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget-object v8, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->getTextSize()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    double-to-float v6, v6

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartTwoNew:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numFull:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->numPartOne:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v6, v2

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 92
    :cond_1
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 94
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 95
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 228
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->minWidth:I

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->setMeasuredDimension(II)V

    .line 229
    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .prologue
    .line 218
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->number:I

    .line 219
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->invalidate()V

    .line 220
    return-void
.end method
