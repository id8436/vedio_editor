.class public final Lcom/d/a/a/c/d;
.super Lcom/d/a/a/n;
.source "JsonReadContext.java"


# instance fields
.field protected final c:Lcom/d/a/a/c/d;

.field protected d:Lcom/d/a/a/c/b;

.field protected e:Lcom/d/a/a/c/d;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/Object;

.field protected h:I

.field protected i:I


# direct methods
.method public constructor <init>(Lcom/d/a/a/c/d;Lcom/d/a/a/c/b;III)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/d/a/a/n;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/d/a/a/c/d;->c:Lcom/d/a/a/c/d;

    .line 60
    iput-object p2, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    .line 61
    iput p3, p0, Lcom/d/a/a/c/d;->a:I

    .line 62
    iput p4, p0, Lcom/d/a/a/c/d;->h:I

    .line 63
    iput p5, p0, Lcom/d/a/a/c/d;->i:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/d;->b:I

    .line 65
    return-void
.end method

.method public static a(Lcom/d/a/a/c/b;)Lcom/d/a/a/c/d;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/d/a/a/c/d;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/d;-><init>(Lcom/d/a/a/c/d;Lcom/d/a/a/c/b;III)V

    return-object v0
.end method

.method private a(Lcom/d/a/a/c/b;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/m;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p1, p2}, Lcom/d/a/a/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/d/a/a/c/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/d/a/a/j;

    instance-of v2, v0, Lcom/d/a/a/g;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/d/a/a/k;

    :goto_0
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

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :cond_1
    return-void
.end method


# virtual methods
.method public a(II)Lcom/d/a/a/c/d;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 115
    iget-object v0, p0, Lcom/d/a/a/c/d;->e:Lcom/d/a/a/c/d;

    .line 116
    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/d/a/a/c/d;

    iget-object v1, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v1, p0

    move v4, p1

    move v5, p2

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/d;-><init>(Lcom/d/a/a/c/d;Lcom/d/a/a/c/b;III)V

    iput-object v0, p0, Lcom/d/a/a/c/d;->e:Lcom/d/a/a/c/d;

    .line 122
    :goto_1
    return-object v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    .line 118
    invoke-virtual {v1}, Lcom/d/a/a/c/b;->a()Lcom/d/a/a/c/b;

    move-result-object v2

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0, v3, p1, p2}, Lcom/d/a/a/c/d;->a(III)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)Lcom/d/a/a/i;
    .locals 6

    .prologue
    .line 173
    const-wide/16 v2, -0x1

    .line 174
    new-instance v0, Lcom/d/a/a/i;

    iget v4, p0, Lcom/d/a/a/c/d;->h:I

    iget v5, p0, Lcom/d/a/a/c/d;->i:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/i;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected a(III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iput p1, p0, Lcom/d/a/a/c/d;->a:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/d/a/a/c/d;->b:I

    .line 70
    iput p2, p0, Lcom/d/a/a/c/d;->h:I

    .line 71
    iput p3, p0, Lcom/d/a/a/c/d;->i:I

    .line 72
    iput-object v1, p0, Lcom/d/a/a/c/d;->f:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/d/a/a/c/d;->g:Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    invoke-virtual {v0}, Lcom/d/a/a/c/b;->b()V

    .line 77
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/m;
        }
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lcom/d/a/a/c/d;->f:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    invoke-direct {p0, v0, p1}, Lcom/d/a/a/c/d;->a(Lcom/d/a/a/c/b;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public b(II)Lcom/d/a/a/c/d;
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 126
    iget-object v0, p0, Lcom/d/a/a/c/d;->e:Lcom/d/a/a/c/d;

    .line 127
    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/d/a/a/c/d;

    iget-object v1, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v1, p0

    move v4, p1

    move v5, p2

    .line 129
    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/d;-><init>(Lcom/d/a/a/c/d;Lcom/d/a/a/c/b;III)V

    iput-object v0, p0, Lcom/d/a/a/c/d;->e:Lcom/d/a/a/c/d;

    .line 133
    :goto_1
    return-object v0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/c/d;->d:Lcom/d/a/a/c/b;

    .line 129
    invoke-virtual {v1}, Lcom/d/a/a/c/b;->a()Lcom/d/a/a/c/b;

    move-result-object v2

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v0, v3, p1, p2}, Lcom/d/a/a/c/d;->a(III)V

    goto :goto_1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/d/a/a/c/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/d/a/a/c/d;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/d/a/a/c/d;->c:Lcom/d/a/a/c/d;

    return-object v0
.end method

.method public i()Lcom/d/a/a/c/d;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/c/d;->g:Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/d/a/a/c/d;->c:Lcom/d/a/a/c/d;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/d/a/a/c/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/a/c/d;->b:I

    .line 193
    iget v1, p0, Lcom/d/a/a/c/d;->a:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 222
    iget v1, p0, Lcom/d/a/a/c/d;->a:I

    packed-switch v1, :pswitch_data_0

    .line 243
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :pswitch_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0}, Lcom/d/a/a/c/d;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 232
    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/d/a/a/c/d;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/d/a/a/c/d;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/d/a/a/b/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 238
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
