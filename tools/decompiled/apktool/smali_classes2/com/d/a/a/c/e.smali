.class public Lcom/d/a/a/c/e;
.super Lcom/d/a/a/n;
.source "JsonWriteContext.java"


# instance fields
.field protected final c:Lcom/d/a/a/c/e;

.field protected d:Lcom/d/a/a/c/b;

.field protected e:Lcom/d/a/a/c/e;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/Object;

.field protected h:Z


# direct methods
.method protected constructor <init>(ILcom/d/a/a/c/e;Lcom/d/a/a/c/b;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/d/a/a/n;-><init>()V

    .line 71
    iput p1, p0, Lcom/d/a/a/c/e;->a:I

    .line 72
    iput-object p2, p0, Lcom/d/a/a/c/e;->c:Lcom/d/a/a/c/e;

    .line 73
    iput-object p3, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/e;->b:I

    .line 75
    return-void
.end method

.method public static a(Lcom/d/a/a/c/b;)Lcom/d/a/a/c/e;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/d/a/a/c/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/d/a/a/c/e;-><init>(ILcom/d/a/a/c/e;Lcom/d/a/a/c/b;)V

    return-object v0
.end method

.method private final a(Lcom/d/a/a/c/b;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/m;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1, p2}, Lcom/d/a/a/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/d/a/a/c/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/d/a/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v0, Lcom/d/a/a/g;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/d/a/a/g;

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/d/a/a/f;-><init>(Ljava/lang/String;Lcom/d/a/a/g;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/m;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-boolean v1, p0, Lcom/d/a/a/c/e;->h:Z

    if-eqz v1, :cond_1

    .line 166
    const/4 v0, 0x4

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    iput-boolean v0, p0, Lcom/d/a/a/c/e;->h:Z

    .line 169
    iput-object p1, p0, Lcom/d/a/a/c/e;->f:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    invoke-direct {p0, v1, p1}, Lcom/d/a/a/c/e;->a(Lcom/d/a/a/c/b;Ljava/lang/String;)V

    .line 171
    :cond_2
    iget v1, p0, Lcom/d/a/a/c/e;->b:I

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(I)Lcom/d/a/a/c/e;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iput p1, p0, Lcom/d/a/a/c/e;->a:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/e;->b:I

    .line 80
    iput-object v1, p0, Lcom/d/a/a/c/e;->f:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/e;->h:Z

    .line 82
    iput-object v1, p0, Lcom/d/a/a/c/e;->g:Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    invoke-virtual {v0}, Lcom/d/a/a/c/b;->b()V

    .line 84
    :cond_0
    return-object p0
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 209
    iget v0, p0, Lcom/d/a/a/c/e;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 210
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, p0, Lcom/d/a/a/c/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    iget-object v0, p0, Lcom/d/a/a/c/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    :goto_1
    return-void

    .line 217
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p0, Lcom/d/a/a/c/e;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 221
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Lcom/d/a/a/c/e;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 226
    :cond_2
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public g()Lcom/d/a/a/c/e;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lcom/d/a/a/c/e;->e:Lcom/d/a/a/c/e;

    .line 120
    if-nez v0, :cond_1

    .line 121
    new-instance v1, Lcom/d/a/a/c/e;

    iget-object v0, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, p0, v0}, Lcom/d/a/a/c/e;-><init>(ILcom/d/a/a/c/e;Lcom/d/a/a/c/b;)V

    iput-object v1, p0, Lcom/d/a/a/c/e;->e:Lcom/d/a/a/c/e;

    move-object v0, v1

    .line 124
    :goto_1
    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    invoke-virtual {v0}, Lcom/d/a/a/c/b;->a()Lcom/d/a/a/c/b;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0, v2}, Lcom/d/a/a/c/e;->a(I)Lcom/d/a/a/c/e;

    move-result-object v0

    goto :goto_1
.end method

.method public h()Lcom/d/a/a/c/e;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 128
    iget-object v0, p0, Lcom/d/a/a/c/e;->e:Lcom/d/a/a/c/e;

    .line 129
    if-nez v0, :cond_1

    .line 130
    new-instance v1, Lcom/d/a/a/c/e;

    iget-object v0, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, p0, v0}, Lcom/d/a/a/c/e;-><init>(ILcom/d/a/a/c/e;Lcom/d/a/a/c/b;)V

    iput-object v1, p0, Lcom/d/a/a/c/e;->e:Lcom/d/a/a/c/e;

    move-object v0, v1

    .line 133
    :goto_1
    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/c/e;->d:Lcom/d/a/a/c/b;

    invoke-virtual {v0}, Lcom/d/a/a/c/b;->a()Lcom/d/a/a/c/b;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0, v2}, Lcom/d/a/a/c/e;->a(I)Lcom/d/a/a/c/e;

    move-result-object v0

    goto :goto_1
.end method

.method public i()Lcom/d/a/a/c/e;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/c/e;->g:Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/d/a/a/c/e;->c:Lcom/d/a/a/c/e;

    return-object v0
.end method

.method public j()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 184
    iget v3, p0, Lcom/d/a/a/c/e;->a:I

    if-ne v3, v2, :cond_2

    .line 185
    iget-boolean v1, p0, Lcom/d/a/a/c/e;->h:Z

    if-nez v1, :cond_1

    .line 186
    const/4 v0, 0x5

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    iput-boolean v0, p0, Lcom/d/a/a/c/e;->h:Z

    .line 189
    iget v0, p0, Lcom/d/a/a/c/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/e;->b:I

    move v0, v2

    .line 190
    goto :goto_0

    .line 194
    :cond_2
    iget v2, p0, Lcom/d/a/a/c/e;->a:I

    if-ne v2, v1, :cond_3

    .line 195
    iget v2, p0, Lcom/d/a/a/c/e;->b:I

    .line 196
    iget v3, p0, Lcom/d/a/a/c/e;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/d/a/a/c/e;->b:I

    .line 197
    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 202
    :cond_3
    iget v1, p0, Lcom/d/a/a/c/e;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/a/a/c/e;->b:I

    .line 203
    iget v1, p0, Lcom/d/a/a/c/e;->b:I

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/d/a/a/c/e;->a(Ljava/lang/StringBuilder;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
