.class public final Lcom/c/a/a/a/c;
.super Ljava/lang/Object;
.source "UriTemplateParser.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/c/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/StringBuilder;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/c/a/a/a/c;->a:Z

    .line 41
    iput-boolean v0, p0, Lcom/c/a/a/a/c;->b:Z

    .line 43
    iput-boolean v0, p0, Lcom/c/a/a/a/c;->c:Z

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->d:Ljava/util/LinkedList;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->a:Z

    .line 121
    return-void
.end method

.method private a(C)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/c/a/a/a/c;->e:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/a/c;->e:Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/c;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    return-void
.end method

.method private a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->a:Z

    .line 130
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lcom/c/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The expression at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/c/a/a/a/c;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was never terminated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/c/a/a/a/c;->f:I

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/d;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 135
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->a:Z

    if-eqz v0, :cond_1

    .line 147
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->c:Z

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->c:Z

    .line 151
    iput p1, p0, Lcom/c/a/a/a/c;->f:I

    .line 158
    :cond_0
    return-void

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start a literal without beginning the template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->a:Z

    if-eqz v0, :cond_2

    .line 164
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->c:Z

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t end a literal without starting it first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/a/c;->e:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/c/a/a/a/c;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/c/a/a/c;

    iget-object v2, p0, Lcom/c/a/a/a/c;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/c/a/a/a/c;->f:I

    invoke-direct {v1, v2, v3}, Lcom/c/a/a/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->c:Z

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/c;->e:Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    return-void

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot end a literal without beginning the template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->a:Z

    if-eqz v0, :cond_1

    .line 193
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/c/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "A new expression start brace found at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but another unclosed expression was found at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/c/a/a/a/c;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/c/a/a/d;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->c:Z

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->b:Z

    .line 201
    iput p1, p0, Lcom/c/a/a/a/c;->f:I

    .line 207
    return-void

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start an expression without beginning the template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->a:Z

    if-eqz v0, :cond_1

    .line 218
    iget-boolean v0, p0, Lcom/c/a/a/a/c;->b:Z

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/c/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expression close brace was found at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " yet there was no start brace."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/c/a/a/d;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c;->b:Z

    .line 225
    iget-object v0, p0, Lcom/c/a/a/a/c;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/c/a/a/b;

    iget-object v2, p0, Lcom/c/a/a/a/c;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/c/a/a/a/c;->f:I

    invoke-direct {v1, v2, v3}, Lcom/c/a/a/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/c;->e:Ljava/lang/StringBuilder;

    .line 232
    return-void

    .line 230
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot end an expression without beginning the template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/c/a/a/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7d

    const/16 v4, 0x7b

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 61
    invoke-direct {p0}, Lcom/c/a/a/a/c;->a()V

    .line 63
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 65
    aget-char v2, v1, v0

    .line 67
    if-ne v2, v4, :cond_1

    .line 69
    iget-boolean v3, p0, Lcom/c/a/a/a/c;->c:Z

    if-eqz v3, :cond_0

    .line 71
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->c(I)V

    .line 73
    :cond_0
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->d(I)V

    .line 76
    :cond_1
    if-ne v2, v4, :cond_2

    if-eq v2, v5, :cond_3

    .line 78
    :cond_2
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->b(I)V

    .line 82
    :cond_3
    iget-boolean v3, p0, Lcom/c/a/a/a/c;->b:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/c/a/a/a/c;->c:Z

    if-eqz v3, :cond_5

    .line 84
    :cond_4
    invoke-direct {p0, v2}, Lcom/c/a/a/a/c;->a(C)V

    .line 87
    :cond_5
    if-ne v2, v5, :cond_6

    .line 89
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->e(I)V

    .line 90
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->b(I)V

    .line 63
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_7
    iget-boolean v1, p0, Lcom/c/a/a/a/c;->c:Z

    if-eqz v1, :cond_8

    .line 95
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->c(I)V

    .line 97
    :cond_8
    invoke-direct {p0, v0}, Lcom/c/a/a/a/c;->a(I)V

    .line 98
    iget-object v0, p0, Lcom/c/a/a/a/c;->d:Ljava/util/LinkedList;

    return-object v0
.end method
