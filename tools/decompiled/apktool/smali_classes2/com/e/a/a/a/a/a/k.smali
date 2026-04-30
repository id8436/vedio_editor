.class public Lcom/e/a/a/a/a/a/k;
.super Lcom/e/a/a/a/a/a/g;
.source "MoveAnimationInfo.java"


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/e/a/a/a/a/a/g;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 27
    iput p2, p0, Lcom/e/a/a/a/a/a/k;->b:I

    .line 28
    iput p3, p0, Lcom/e/a/a/a/a/a/k;->c:I

    .line 29
    iput p4, p0, Lcom/e/a/a/a/a/a/k;->d:I

    .line 30
    iput p5, p0, Lcom/e/a/a/a/a/a/k;->e:I

    .line 31
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p1, :cond_0

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 43
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MoveAnimationInfo{holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/e/a/a/a/a/a/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/e/a/a/a/a/a/k;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/e/a/a/a/a/a/k;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/e/a/a/a/a/a/k;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
