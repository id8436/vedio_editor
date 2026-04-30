.class public Lcom/alertdialogpro/internal/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010095

    aput v2, v0, v1

    sput-object v0, Lcom/alertdialogpro/internal/DialogTitle;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 35
    invoke-virtual {p0}, Lcom/alertdialogpro/internal/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 38
    if-lez v1, :cond_1

    .line 39
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .line 40
    if-lez v0, :cond_1

    .line 41
    invoke-virtual {p0, v5}, Lcom/alertdialogpro/internal/DialogTitle;->setSingleLine(Z)V

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/internal/DialogTitle;->setMaxLines(I)V

    .line 44
    invoke-virtual {p0}, Lcom/alertdialogpro/internal/DialogTitle;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/alertdialogpro/internal/DialogTitle;->a:[I

    const v3, 0x1010041

    const v4, 0x1030044

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    int-to-float v1, v1

    invoke-virtual {p0, v5, v1}, Lcom/alertdialogpro/internal/DialogTitle;->setTextSize(IF)V

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 59
    :cond_1
    return-void
.end method
