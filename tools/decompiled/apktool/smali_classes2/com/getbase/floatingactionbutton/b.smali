.class Lcom/getbase/floatingactionbutton/b;
.super Landroid/graphics/drawable/shapes/Shape;
.source "AddFloatingActionButton.java"


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/getbase/floatingactionbutton/a;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/a;FFFF)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/b;->e:Lcom/getbase/floatingactionbutton/a;

    iput p2, p0, Lcom/getbase/floatingactionbutton/b;->a:F

    iput p3, p0, Lcom/getbase/floatingactionbutton/b;->b:F

    iput p4, p0, Lcom/getbase/floatingactionbutton/b;->c:F

    iput p5, p0, Lcom/getbase/floatingactionbutton/b;->d:F

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 74
    iget v1, p0, Lcom/getbase/floatingactionbutton/b;->a:F

    iget v0, p0, Lcom/getbase/floatingactionbutton/b;->b:F

    iget v2, p0, Lcom/getbase/floatingactionbutton/b;->c:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/getbase/floatingactionbutton/b;->d:F

    iget v3, p0, Lcom/getbase/floatingactionbutton/b;->a:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/getbase/floatingactionbutton/b;->b:F

    iget v4, p0, Lcom/getbase/floatingactionbutton/b;->c:F

    add-float/2addr v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget v0, p0, Lcom/getbase/floatingactionbutton/b;->b:F

    iget v1, p0, Lcom/getbase/floatingactionbutton/b;->c:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/getbase/floatingactionbutton/b;->a:F

    iget v0, p0, Lcom/getbase/floatingactionbutton/b;->b:F

    iget v3, p0, Lcom/getbase/floatingactionbutton/b;->c:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/getbase/floatingactionbutton/b;->d:F

    iget v4, p0, Lcom/getbase/floatingactionbutton/b;->a:F

    sub-float v4, v0, v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method
