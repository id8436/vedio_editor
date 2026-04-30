.class Lcom/getbase/floatingactionbutton/i;
.super Landroid/graphics/drawable/LayerDrawable;
.source "FloatingActionsMenu.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    iget v0, p0, Lcom/getbase/floatingactionbutton/i;->a:F

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/i;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/i;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 140
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    return-void
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/getbase/floatingactionbutton/i;->a:F

    return v0
.end method

.method public setRotation(F)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/getbase/floatingactionbutton/i;->a:F

    .line 133
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/i;->invalidateSelf()V

    .line 134
    return-void
.end method
