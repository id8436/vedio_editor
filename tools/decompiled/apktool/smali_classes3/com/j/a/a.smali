.class public Lcom/j/a/a;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/j/a/c;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 53
    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "qemu.hw.mainkeys"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/j/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    sput-object v5, Lcom/j/a/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 94
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 96
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 98
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/j/a/a;->c:Z

    .line 99
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/j/a/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 106
    const/high16 v2, 0x4000000

    .line 107
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 108
    iput-boolean v6, p0, Lcom/j/a/a;->c:Z

    .line 110
    :cond_0
    const/high16 v2, 0x8000000

    .line 111
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 112
    iput-boolean v6, p0, Lcom/j/a/a;->d:Z

    .line 116
    :cond_1
    new-instance v1, Lcom/j/a/c;

    iget-boolean v2, p0, Lcom/j/a/a;->c:Z

    iget-boolean v3, p0, Lcom/j/a/a;->d:Z

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/j/a/c;-><init>(Landroid/app/Activity;ZZLcom/j/a/b;)V

    iput-object v1, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    .line 118
    iget-object v1, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    invoke-virtual {v1}, Lcom/j/a/c;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    iput-boolean v5, p0, Lcom/j/a/a;->d:Z

    .line 122
    :cond_2
    iget-boolean v1, p0, Lcom/j/a/a;->c:Z

    if-eqz v1, :cond_3

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/j/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 125
    :cond_3
    iget-boolean v1, p0, Lcom/j/a/a;->d:Z

    if-eqz v1, :cond_4

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/j/a/a;->b(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 129
    :cond_4
    return-void

    .line 101
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 94
    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/j/a/a;->e:Landroid/view/View;

    .line 324
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    invoke-virtual {v2}, Lcom/j/a/c;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 325
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 326
    iget-boolean v1, p0, Lcom/j/a/a;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    invoke-virtual {v1}, Lcom/j/a/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    invoke-virtual {v1}, Lcom/j/a/c;->e()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/j/a/a;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lcom/j/a/a;->e:Landroid/view/View;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 331
    iget-object v0, p0, Lcom/j/a/a;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/j/a/a;->e:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/j/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 336
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/j/a/a;->f:Landroid/view/View;

    .line 338
    iget-object v0, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    invoke-virtual {v0}, Lcom/j/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    invoke-virtual {v1}, Lcom/j/a/c;->d()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 340
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/j/a/a;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object v0, p0, Lcom/j/a/a;->f:Landroid/view/View;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 347
    iget-object v0, p0, Lcom/j/a/a;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/j/a/a;->f:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    return-void

    .line 342
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    invoke-virtual {v1}, Lcom/j/a/c;->e()I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 343
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/j/a/c;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/j/a/a;->b:Lcom/j/a/c;

    return-object v0
.end method
