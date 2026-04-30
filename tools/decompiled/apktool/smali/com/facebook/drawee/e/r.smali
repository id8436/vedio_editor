.class public Lcom/facebook/drawee/e/r;
.super Ljava/lang/Object;
.source "ScalingUtils.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/e/q;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 111
    if-nez p0, :cond_0

    move-object p0, v0

    .line 130
    :goto_0
    return-object p0

    .line 113
    :cond_0
    instance-of v1, p0, Lcom/facebook/drawee/e/q;

    if-eqz v1, :cond_1

    .line 114
    check-cast p0, Lcom/facebook/drawee/e/q;

    goto :goto_0

    .line 115
    :cond_1
    instance-of v1, p0, Lcom/facebook/drawee/e/d;

    if-eqz v1, :cond_2

    .line 116
    check-cast p0, Lcom/facebook/drawee/e/d;

    invoke-interface {p0}, Lcom/facebook/drawee/e/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/facebook/drawee/e/r;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/e/q;

    move-result-object p0

    goto :goto_0

    .line 118
    :cond_2
    instance-of v1, p0, Lcom/facebook/drawee/e/a;

    if-eqz v1, :cond_4

    .line 119
    check-cast p0, Lcom/facebook/drawee/e/a;

    .line 120
    invoke-virtual {p0}, Lcom/facebook/drawee/e/a;->a()I

    move-result v3

    .line 122
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    .line 123
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/e/a;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/facebook/drawee/e/r;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/e/q;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_3

    move-object p0, v1

    .line 126
    goto :goto_0

    .line 122
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    move-object p0, v0

    .line 130
    goto :goto_0
.end method
