.class public Lcom/alertdialogpro/b;
.super Lcom/alertdialogpro/a;
.source "ProgressDialogPro.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/text/NumberFormat;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alertdialogpro/b;-><init>(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 66
    invoke-static {p1, p2}, Lcom/alertdialogpro/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alertdialogpro/a;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/alertdialogpro/b;->d:I

    .line 68
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lcom/alertdialogpro/b;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alertdialogpro/b;->a:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/alertdialogpro/b;->a()V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/alertdialogpro/b;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alertdialogpro/b;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alertdialogpro/b;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/alertdialogpro/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/alertdialogpro/b;
    .locals 6

    .prologue
    .line 85
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/alertdialogpro/b;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alertdialogpro/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alertdialogpro/b;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/alertdialogpro/b;

    invoke-direct {v0, p0}, Lcom/alertdialogpro/b;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, p1}, Lcom/alertdialogpro/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v0, p2}, Lcom/alertdialogpro/b;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0, p3}, Lcom/alertdialogpro/b;->a(Z)V

    .line 100
    invoke-virtual {v0, p4}, Lcom/alertdialogpro/b;->setCancelable(Z)V

    .line 101
    invoke-virtual {v0, p5}, Lcom/alertdialogpro/b;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 102
    invoke-virtual {v0}, Lcom/alertdialogpro/b;->show()V

    .line 103
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 73
    const-string/jumbo v0, "%1d/%2d"

    iput-object v0, p0, Lcom/alertdialogpro/b;->f:Ljava/lang/String;

    .line 74
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/alertdialogpro/b;->h:Ljava/text/NumberFormat;

    .line 75
    iget-object v0, p0, Lcom/alertdialogpro/b;->h:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 76
    return-void
.end method

.method static synthetic b(Lcom/alertdialogpro/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alertdialogpro/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iget v0, p0, Lcom/alertdialogpro/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alertdialogpro/b;->s:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alertdialogpro/b;->s:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alertdialogpro/b;->s:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 350
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alertdialogpro/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alertdialogpro/b;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alertdialogpro/b;)Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alertdialogpro/b;->h:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic e(Lcom/alertdialogpro/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alertdialogpro/b;->g:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/alertdialogpro/b;->r:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 206
    invoke-direct {p0}, Lcom/alertdialogpro/b;->b()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iput p1, p0, Lcom/alertdialogpro/b;->j:I

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/alertdialogpro/b;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iput-boolean p1, p0, Lcom/alertdialogpro/b;->q:Z

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 215
    invoke-direct {p0}, Lcom/alertdialogpro/b;->b()V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iput p1, p0, Lcom/alertdialogpro/b;->k:I

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/alertdialogpro/b;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 245
    invoke-direct {p0}, Lcom/alertdialogpro/b;->b()V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iput p1, p0, Lcom/alertdialogpro/b;->i:I

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 254
    invoke-direct {p0}, Lcom/alertdialogpro/b;->b()V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget v0, p0, Lcom/alertdialogpro/b;->l:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alertdialogpro/b;->l:I

    goto :goto_0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 263
    invoke-direct {p0}, Lcom/alertdialogpro/b;->b()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget v0, p0, Lcom/alertdialogpro/b;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alertdialogpro/b;->m:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Lcom/alertdialogpro/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/alertdialogpro/b;->a:Landroid/content/Context;

    sget-object v2, Lcom/alertdialogpro/g;->AlertDialogPro:[I

    sget v3, Lcom/alertdialogpro/e;->alertDialogProStyle:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 114
    iget v2, p0, Lcom/alertdialogpro/b;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 119
    new-instance v2, Lcom/alertdialogpro/c;

    invoke-direct {v2, p0}, Lcom/alertdialogpro/c;-><init>(Lcom/alertdialogpro/b;)V

    iput-object v2, p0, Lcom/alertdialogpro/b;->s:Landroid/os/Handler;

    .line 144
    sget v2, Lcom/alertdialogpro/g;->AlertDialogPro_adpHorizontalProgressLayout:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 148
    sget v0, Lcom/alertdialogpro/f;->adp_progress:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    .line 149
    sget v0, Lcom/alertdialogpro/f;->adp_progress_number:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alertdialogpro/b;->e:Landroid/widget/TextView;

    .line 150
    sget v0, Lcom/alertdialogpro/f;->adp_progress_percent:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alertdialogpro/b;->g:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p0, v2}, Lcom/alertdialogpro/b;->setView(Landroid/view/View;)V

    .line 161
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    iget v0, p0, Lcom/alertdialogpro/b;->i:I

    if-lez v0, :cond_0

    .line 163
    iget v0, p0, Lcom/alertdialogpro/b;->i:I

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->c(I)V

    .line 165
    :cond_0
    iget v0, p0, Lcom/alertdialogpro/b;->j:I

    if-lez v0, :cond_1

    .line 166
    iget v0, p0, Lcom/alertdialogpro/b;->j:I

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->a(I)V

    .line 168
    :cond_1
    iget v0, p0, Lcom/alertdialogpro/b;->k:I

    if-lez v0, :cond_2

    .line 169
    iget v0, p0, Lcom/alertdialogpro/b;->k:I

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->b(I)V

    .line 171
    :cond_2
    iget v0, p0, Lcom/alertdialogpro/b;->l:I

    if-lez v0, :cond_3

    .line 172
    iget v0, p0, Lcom/alertdialogpro/b;->l:I

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->d(I)V

    .line 174
    :cond_3
    iget v0, p0, Lcom/alertdialogpro/b;->m:I

    if-lez v0, :cond_4

    .line 175
    iget v0, p0, Lcom/alertdialogpro/b;->m:I

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->e(I)V

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/alertdialogpro/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/alertdialogpro/b;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/alertdialogpro/b;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/alertdialogpro/b;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->b(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/alertdialogpro/b;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 184
    iget-object v0, p0, Lcom/alertdialogpro/b;->p:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    :cond_7
    iget-boolean v0, p0, Lcom/alertdialogpro/b;->q:Z

    invoke-virtual {p0, v0}, Lcom/alertdialogpro/b;->a(Z)V

    .line 187
    invoke-direct {p0}, Lcom/alertdialogpro/b;->b()V

    .line 188
    invoke-super {p0, p1}, Lcom/alertdialogpro/a;->onCreate(Landroid/os/Bundle;)V

    .line 189
    return-void

    .line 153
    :cond_8
    sget v2, Lcom/alertdialogpro/g;->AlertDialogPro_adpProgressLayout:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    sget v0, Lcom/alertdialogpro/f;->adp_progress:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    .line 158
    sget v0, Lcom/alertdialogpro/f;->adp_message:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alertdialogpro/b;->c:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p0, v2}, Lcom/alertdialogpro/b;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/alertdialogpro/a;->onStart()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alertdialogpro/b;->r:Z

    .line 195
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/alertdialogpro/a;->onStop()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alertdialogpro/b;->r:Z

    .line 201
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alertdialogpro/b;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 303
    iget v0, p0, Lcom/alertdialogpro/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    invoke-super {p0, p1}, Lcom/alertdialogpro/a;->setMessage(Ljava/lang/CharSequence;)V

    .line 312
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string/jumbo v0, "CC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alertdialogpro/b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/alertdialogpro/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_1
    iput-object p1, p0, Lcom/alertdialogpro/b;->p:Ljava/lang/CharSequence;

    goto :goto_0
.end method
