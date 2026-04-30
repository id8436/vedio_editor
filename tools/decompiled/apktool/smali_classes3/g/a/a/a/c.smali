.class public Lg/a/a/a/c;
.super Landroid/content/ContextWrapper;
.source "CalligraphyContextWrapper.java"


# instance fields
.field private a:Lg/a/a/a/f;

.field private final b:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lg/a/a/a/a;->a()Lg/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/a/a/a;->g()I

    move-result v0

    iput v0, p0, Lg/a/a/a/c;->b:I

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lg/a/a/a/c;

    invoke-direct {v0, p0}, Lg/a/a/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 109
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lg/a/a/a/c;->a:Lg/a/a/a/f;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lg/a/a/a/f;

    invoke-virtual {p0}, Lg/a/a/a/c;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lg/a/a/a/c;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lg/a/a/a/f;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lg/a/a/a/c;->a:Lg/a/a/a/f;

    .line 113
    :cond_0
    iget-object v0, p0, Lg/a/a/a/c;->a:Lg/a/a/a/f;

    .line 115
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
