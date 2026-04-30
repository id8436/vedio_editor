.class public Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;
.super Landroid/widget/Button;
.source "TwitterLoginButton.java"


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field volatile b:Lcom/twitter/sdk/android/core/identity/l;

.field c:Landroid/view/View$OnClickListener;

.field d:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/core/identity/l;)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/sdk/android/core/identity/l;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a:Ljava/lang/ref/WeakReference;

    .line 73
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/l;

    .line 74
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a()V

    .line 76
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b()V

    .line 77
    return-void
.end method

.method private a()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    sget v1, Lcom/twitter/sdk/android/core/o;->tw__ic_logo_default:I

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    invoke-super {p0, v1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 84
    sget v1, Lcom/twitter/sdk/android/core/n;->tw__login_btn_drawable_padding:I

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    invoke-super {p0, v1}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 86
    sget v1, Lcom/twitter/sdk/android/core/r;->tw__login_btn_txt:I

    invoke-super {p0, v1}, Landroid/widget/Button;->setText(I)V

    .line 87
    sget v1, Lcom/twitter/sdk/android/core/m;->tw__solid_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 88
    sget v1, Lcom/twitter/sdk/android/core/n;->tw__login_btn_text_size:I

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 88
    invoke-super {p0, v3, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 90
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-super {p0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    sget v1, Lcom/twitter/sdk/android/core/n;->tw__login_btn_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/twitter/sdk/android/core/n;->tw__login_btn_right_padding:I

    .line 92
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 91
    invoke-super {p0, v1, v3, v0, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 93
    sget v0, Lcom/twitter/sdk/android/core/o;->tw__login_btn:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 94
    new-instance v0, Lcom/twitter/sdk/android/core/identity/p;

    invoke-direct {v0, p0, v4}, Lcom/twitter/sdk/android/core/identity/p;-><init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;Lcom/twitter/sdk/android/core/identity/o;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 96
    invoke-super {p0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/l;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/l;->a(IILandroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 142
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallback()Lcom/twitter/sdk/android/core/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/c;

    return-object v0
.end method

.method getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/l;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/l;

    if-nez v0, :cond_1

    .line 184
    const-class v1, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/l;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/twitter/sdk/android/core/identity/l;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/l;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/l;

    .line 188
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->b:Lcom/twitter/sdk/android/core/identity/l;

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/twitter/sdk/android/core/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->d:Lcom/twitter/sdk/android/core/c;

    .line 111
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->c:Landroid/view/View$OnClickListener;

    .line 151
    return-void
.end method
