.class Lcom/adobe/premiereclip/util/AutoResizeTextView$1;
.super Ljava/lang/Object;
.source "AutoResizeTextView.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/AutoResizeTextView$SizeTester;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/util/AutoResizeTextView;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTestSize(ILandroid/graphics/RectF;)I
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$000(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 210
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getMaxLines()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    .line 212
    :goto_0
    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$100(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v2}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$000(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 214
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$100(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v2}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$000(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 234
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$100(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 235
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$100(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v7, v9

    .line 240
    :cond_0
    return v7

    :cond_1
    move v0, v8

    .line 211
    goto :goto_0

    .line 216
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v2}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$000(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    .line 217
    invoke-static {v3}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$200(Lcom/adobe/premiereclip/util/AutoResizeTextView;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v5, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v5}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$300(Lcom/adobe/premiereclip/util/AutoResizeTextView;)F

    move-result v5

    iget-object v6, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    .line 218
    invoke-static {v6}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$400(Lcom/adobe/premiereclip/util/AutoResizeTextView;)F

    move-result v6

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 220
    iget-object v1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getMaxLines()I

    move-result v1

    if-eq v1, v9, :cond_3

    .line 221
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->getMaxLines()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v1}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$100(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    move v1, v8

    move v2, v9

    .line 226
    :goto_2
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 227
    int-to-float v3, v2

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 228
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-int v2, v2

    .line 226
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/util/AutoResizeTextView$1;->this$0:Lcom/adobe/premiereclip/util/AutoResizeTextView;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/AutoResizeTextView;->access$100(Lcom/adobe/premiereclip/util/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v0

    int-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1
.end method
