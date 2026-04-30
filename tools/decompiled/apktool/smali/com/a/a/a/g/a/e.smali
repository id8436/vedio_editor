.class public Lcom/a/a/a/g/a/e;
.super Lcom/a/a/a/g/b;
.source "CommandMessage.java"


# instance fields
.field private d:I

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/a/a/a/g/i;->d:Lcom/a/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/g/i;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/g/a/e;->d:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/g/a/e;->e:Ljava/lang/Runnable;

    .line 22
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/a/a/a/g/a/e;->d:I

    .line 30
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/a/a/a/g/a/e;->d:I

    return v0
.end method

.method public d()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/a/a/a/g/a/e;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Command["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/a/g/a/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
