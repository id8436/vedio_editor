.class public Lg/a/a/a/b;
.super Ljava/lang/Object;
.source "CalligraphyConfig.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lg/a/a/a/b;->a:Z

    .line 146
    iput-boolean v1, p0, Lg/a/a/a/b;->b:Z

    .line 150
    sget v0, Lg/a/a/a/n;->fontPath:I

    iput v0, p0, Lg/a/a/a/b;->c:I

    .line 154
    iput-boolean v2, p0, Lg/a/a/a/b;->d:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lg/a/a/a/b;->e:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/a/a/a/b;->f:Ljava/util/Map;

    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0
.end method

.method static synthetic a(Lg/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lg/a/a/a/b;->d:Z

    return v0
.end method

.method static synthetic b(Lg/a/a/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lg/a/a/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lg/a/a/a/b;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lg/a/a/a/b;->c:I

    return v0
.end method

.method static synthetic d(Lg/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lg/a/a/a/b;->a:Z

    return v0
.end method

.method static synthetic e(Lg/a/a/a/b;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lg/a/a/a/b;->b:Z

    return v0
.end method

.method static synthetic f(Lg/a/a/a/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lg/a/a/a/b;->f:Ljava/util/Map;

    return-object v0
.end method
