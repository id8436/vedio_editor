.class public final Lcom/facebook/imagepipeline/l/g;
.super Ljava/lang/Object;
.source "MediaVariations.java"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/facebook/imagepipeline/l/g;->a:Landroid/net/Uri;

    .line 108
    iput p2, p0, Lcom/facebook/imagepipeline/l/g;->b:I

    .line 109
    iput p3, p0, Lcom/facebook/imagepipeline/l/g;->c:I

    .line 110
    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/g;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/facebook/imagepipeline/l/g;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/facebook/imagepipeline/l/g;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    instance-of v1, p1, Lcom/facebook/imagepipeline/l/g;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/l/g;

    .line 130
    iget-object v1, p0, Lcom/facebook/imagepipeline/l/g;->a:Landroid/net/Uri;

    iget-object v2, p1, Lcom/facebook/imagepipeline/l/g;->a:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/facebook/d/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/facebook/imagepipeline/l/g;->b:I

    iget v2, p1, Lcom/facebook/imagepipeline/l/g;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/facebook/imagepipeline/l/g;->c:I

    iget v2, p1, Lcom/facebook/imagepipeline/l/g;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/imagepipeline/l/g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/imagepipeline/l/g;->b:I

    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/facebook/imagepipeline/l/g;->c:I

    add-int/2addr v0, v1

    .line 140
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v1, "%dx%d %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/facebook/imagepipeline/l/g;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/facebook/imagepipeline/l/g;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/imagepipeline/l/g;->a:Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
