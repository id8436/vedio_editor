.class public Lcom/twitter/b;
.super Ljava/lang/Object;
.source "Extractor.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Lcom/twitter/c;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/twitter/c;)V
    .locals 6

    .prologue
    .line 34
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/b;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/twitter/c;)V

    .line 35
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/twitter/c;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/twitter/b;->f:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/twitter/b;->g:Ljava/lang/String;

    .line 26
    iput p1, p0, Lcom/twitter/b;->a:I

    .line 27
    iput p2, p0, Lcom/twitter/b;->b:I

    .line 28
    iput-object p3, p0, Lcom/twitter/b;->c:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/twitter/b;->d:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/twitter/b;->e:Lcom/twitter/c;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    instance-of v2, p1, Lcom/twitter/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    check-cast p1, Lcom/twitter/b;

    .line 58
    iget-object v2, p0, Lcom/twitter/b;->e:Lcom/twitter/c;

    iget-object v3, p1, Lcom/twitter/b;->e:Lcom/twitter/c;

    invoke-virtual {v2, v3}, Lcom/twitter/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/twitter/b;->a:I

    iget v3, p1, Lcom/twitter/b;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/twitter/b;->b:I

    iget v3, p1, Lcom/twitter/b;->b:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/twitter/b;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/b;->c:Ljava/lang/String;

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/b;->e:Lcom/twitter/c;

    invoke-virtual {v0}, Lcom/twitter/c;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/twitter/b;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/twitter/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/b;->e:Lcom/twitter/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
