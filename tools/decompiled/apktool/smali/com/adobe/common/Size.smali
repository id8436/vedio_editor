.class public Lcom/adobe/common/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0, v0}, Lcom/adobe/common/Size;-><init>(II)V

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/adobe/common/Size;->mWidth:I

    .line 67
    iput p2, p0, Lcom/adobe/common/Size;->mHeight:I

    .line 68
    return-void
.end method

.method public static makeSize(II)Lcom/adobe/common/Size;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/adobe/common/Size;

    invoke-direct {v0, p0, p1}, Lcom/adobe/common/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_3
    check-cast p1, Lcom/adobe/common/Size;

    .line 138
    iget v2, p0, Lcom/adobe/common/Size;->mHeight:I

    iget v3, p1, Lcom/adobe/common/Size;->mHeight:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_4
    iget v2, p0, Lcom/adobe/common/Size;->mWidth:I

    iget v3, p1, Lcom/adobe/common/Size;->mWidth:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 142
    goto :goto_0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/adobe/common/Size;->mHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/adobe/common/Size;->mWidth:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 113
    .line 115
    iget v0, p0, Lcom/adobe/common/Size;->mHeight:I

    add-int/lit8 v0, v0, 0x1f

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/adobe/common/Size;->mWidth:I

    add-int/2addr v0, v1

    .line 117
    return v0
.end method

.method public final setHeight(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/adobe/common/Size;->mHeight:I

    .line 104
    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/adobe/common/Size;->mWidth:I

    .line 86
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Size [mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/common/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/common/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
