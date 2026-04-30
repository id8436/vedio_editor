.class public Lcom/alertdialogpro/material/CheckedTextViewCompat;
.super Landroid/widget/TextView;
.source "CheckedTextViewCompat.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I

.field private static final h:[I


# instance fields
.field private b:Z

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:I

.field private g:Z

.field private final i:Landroid/support/v7/widget/TintManager;

.field private j:Ljava/lang/reflect/Field;

.field private k:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->a:[I

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->h:[I

    return-void

    .line 25
    :array_0
    .array-data 4
        0x1010106
        0x1010108
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setBasePadding(Z)V

    .line 57
    sget-object v0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->a:[I

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 61
    invoke-virtual {p0, v1}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setChecked(Z)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->i:Landroid/support/v7/widget/TintManager;

    .line 71
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->f:I

    iget v3, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->e:I

    add-int/2addr v0, v3

    .line 197
    :goto_0
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    iget-boolean v3, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->g:Z

    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getPaddingLeftField()I

    move-result v4

    if-eq v4, v0, :cond_2

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->g:Z

    .line 199
    invoke-direct {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setPaddingLeftField(I)V

    .line 204
    :goto_2
    iget-boolean v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->g:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->requestLayout()V

    .line 206
    iput-boolean v2, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->g:Z

    .line 208
    :cond_0
    return-void

    .line 195
    :cond_1
    iget v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->e:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 198
    goto :goto_1

    .line 201
    :cond_3
    iget-boolean v3, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->g:Z

    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getPaddingRightField()I

    move-result v4

    if-eq v4, v0, :cond_4

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->g:Z

    .line 202
    invoke-direct {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setPaddingRightField(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 201
    goto :goto_3
.end method

.method private b()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 220
    .line 221
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 300
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "resetPaddingToInitialValues"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 302
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 308
    :catch_1
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 305
    :catch_2
    move-exception v0

    .line 306
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->j:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 316
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mPaddingLeft"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->j:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->k:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 345
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mPaddingRight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->k:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPaddingLeftField()I
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d()V

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 330
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPaddingRightField()I
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->e()V

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 359
    :goto_0
    return v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 359
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBasePadding(Z)V
    .locals 1

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getPaddingLeftField()I

    move-result v0

    iput v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->e:I

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getPaddingRightField()I

    move-result v0

    iput v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->e:I

    goto :goto_0
.end method

.method private setPaddingLeftField(I)V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d()V

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPaddingRightField(I)V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->e()V

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 292
    if-nez v0, :cond_0

    .line 293
    iget-boolean v1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b:Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 295
    :cond_0
    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 279
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getDrawableState()[I

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 285
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->invalidate()V

    .line 287
    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 148
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 151
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 268
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    sget-object v1, Lcom/alertdialogpro/material/CheckedTextViewCompat;->h:[I

    invoke-static {v0, v1}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->mergeDrawableStates([I[I)[I

    .line 272
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v3, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 232
    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getGravity()I

    move-result v0

    and-int/lit8 v1, v0, 0x70

    .line 234
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 236
    const/4 v0, 0x0

    .line 238
    sparse-switch v1, :sswitch_data_0

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b()Z

    move-result v1

    .line 248
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getWidth()I

    move-result v4

    .line 250
    add-int v5, v0, v2

    .line 253
    if-eqz v1, :cond_1

    .line 254
    iget v2, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->e:I

    .line 255
    iget v1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->f:I

    add-int/2addr v1, v2

    .line 260
    :goto_1
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getScrollX()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v3, v2, v0, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    :cond_0
    return-void

    .line 240
    :sswitch_0
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    .line 241
    goto :goto_0

    .line 243
    :sswitch_1
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 257
    :cond_1
    iget v1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->e:I

    sub-int v1, v4, v1

    .line 258
    iget v2, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->f:I

    sub-int v2, v1, v2

    goto :goto_1

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 189
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->c()V

    .line 190
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setBasePadding(Z)V

    .line 191
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->a()V

    .line 192
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    .prologue
    .line 101
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->c:I

    if-ne p1, v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iput p1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->c:I

    .line 106
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->i:Landroid/support/v7/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_0
    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 121
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 122
    sget-object v0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->h:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 123
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setMinHeight(I)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->f:I

    .line 126
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 130
    :goto_1
    iput-object p1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->a()V

    .line 132
    return-void

    :cond_1
    move v0, v1

    .line 121
    goto :goto_0

    .line 128
    :cond_2
    iput v1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->f:I

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b:Z

    if-eq v0, p1, :cond_0

    .line 88
    iput-boolean p1, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b:Z

    .line 89
    invoke-virtual {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->refreshDrawableState()V

    .line 91
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 173
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setBasePadding(Z)V

    .line 174
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->a()V

    .line 175
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 181
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setBasePadding(Z)V

    .line 182
    invoke-direct {p0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->a()V

    .line 183
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 141
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 139
    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alertdialogpro/material/CheckedTextViewCompat;->setChecked(Z)V

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alertdialogpro/material/CheckedTextViewCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
