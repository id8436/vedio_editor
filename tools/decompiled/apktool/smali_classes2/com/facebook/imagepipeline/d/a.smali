.class public Lcom/facebook/imagepipeline/d/a;
.super Ljava/lang/Object;
.source "ImageDecodeOptions.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final g:Lcom/facebook/imagepipeline/d/a;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/facebook/imagepipeline/d/a;->b()Lcom/facebook/imagepipeline/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/d/b;->g()Lcom/facebook/imagepipeline/d/a;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/d/a;->g:Lcom/facebook/imagepipeline/d/a;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/d/b;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/b;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/d/a;->a:I

    .line 62
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/b;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/a;->b:Z

    .line 63
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/b;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/a;->c:Z

    .line 64
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/b;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/a;->d:Z

    .line 65
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/b;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/d/a;->e:Z

    .line 66
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/d/b;->f()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/d/a;->f:Landroid/graphics/Bitmap$Config;

    .line 67
    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/d/a;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/imagepipeline/d/a;->g:Lcom/facebook/imagepipeline/d/a;

    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/d/b;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/imagepipeline/d/b;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/d/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 92
    :cond_3
    check-cast p1, Lcom/facebook/imagepipeline/d/a;

    .line 94
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/d/a;->b:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/d/a;->b:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 95
    :cond_4
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/d/a;->c:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/d/a;->c:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 96
    :cond_5
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/d/a;->d:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/d/a;->d:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 97
    :cond_6
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/d/a;->e:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/d/a;->e:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 98
    :cond_7
    iget-object v2, p0, Lcom/facebook/imagepipeline/d/a;->f:Landroid/graphics/Bitmap$Config;

    iget-object v3, p1, Lcom/facebook/imagepipeline/d/a;->f:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget v0, p0, Lcom/facebook/imagepipeline/d/a;->a:I

    .line 106
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/a;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 107
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/a;->c:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 108
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/d/a;->d:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/d/a;->e:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/imagepipeline/d/a;->f:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    return v0

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    :cond_1
    move v0, v2

    .line 107
    goto :goto_1

    :cond_2
    move v0, v2

    .line 108
    goto :goto_2

    :cond_3
    move v1, v2

    .line 109
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 116
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v1, "%d-%b-%b-%b-%b-%s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/facebook/imagepipeline/d/a;->a:I

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/d/a;->b:Z

    .line 120
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/d/a;->c:Z

    .line 121
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/d/a;->d:Z

    .line 122
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/d/a;->e:Z

    .line 123
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/facebook/imagepipeline/d/a;->f:Landroid/graphics/Bitmap$Config;

    .line 124
    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 116
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
