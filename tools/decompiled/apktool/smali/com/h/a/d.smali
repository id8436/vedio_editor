.class public Lcom/h/a/d;
.super Ljava/lang/Object;
.source "TypefaceHelper.java"


# static fields
.field private static a:Lcom/h/a/a;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/h/a/d;->a:Lcom/h/a/a;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Default typeface collection not initialized. Forgot to call init()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/h/a/d;->a:Lcom/h/a/a;

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 143
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/h/a/d;->a:Lcom/h/a/a;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Default typeface collection not initialized. Forgot to call init()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    sget-object v0, Lcom/h/a/d;->a:Lcom/h/a/a;

    invoke-static {p0, v0}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 155
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/h/a/a;)V
    .locals 1

    .prologue
    .line 174
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 175
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcom/h/a/d;->a(Landroid/view/ViewGroup;Lcom/h/a/a;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {p0, p1}, Lcom/h/a/d;->b(Landroid/view/View;Lcom/h/a/a;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/ViewGroup;Lcom/h/a/a;)V
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 212
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 213
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 214
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/h/a/d;->a(Landroid/view/ViewGroup;Lcom/h/a/a;)V

    .line 211
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {v0, p1}, Lcom/h/a/d;->b(Landroid/view/View;Lcom/h/a/a;)V

    goto :goto_1

    .line 219
    :cond_1
    return-void
.end method

.method public static a(Lcom/h/a/a;)V
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/h/a/d;->a:Lcom/h/a/a;

    .line 36
    return-void
.end method

.method private static b(Landroid/view/View;Lcom/h/a/a;)V
    .locals 1

    .prologue
    .line 229
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 230
    check-cast p0, Landroid/widget/TextView;

    .line 231
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 232
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 233
    :goto_0
    invoke-virtual {p1, v0}, Lcom/h/a/a;->a(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 236
    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_0
.end method
