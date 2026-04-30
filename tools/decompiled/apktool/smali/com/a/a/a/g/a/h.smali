.class public Lcom/a/a/a/g/a/h;
.super Lcom/a/a/a/g/b;
.source "PublicQueryMessage.java"


# instance fields
.field private d:Lcom/a/a/a/q;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/a/a/a/g/i;->e:Lcom/a/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/a/a/a/g/b;-><init>(Lcom/a/a/a/g/i;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/g/a/h;->e:I

    .line 25
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/g/a/h;->d:Lcom/a/a/a/q;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/g/a/h;->e:I

    .line 58
    return-void
.end method

.method public c()Lcom/a/a/a/q;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/a/a/a/g/a/h;->d:Lcom/a/a/a/q;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/a/a/a/g/a/h;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/a/a/a/g/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PublicQuery["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/a/g/a/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
