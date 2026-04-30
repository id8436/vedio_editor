.class public Lcom/a/a/a/s;
.super Ljava/lang/Object;
.source "JobHolder.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field d:I

.field final transient e:Lcom/a/a/a/r;

.field protected final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/a/a/a/ae;

.field private h:Ljava/lang/Long;

.field private i:I

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private r:Ljava/lang/Throwable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZILjava/lang/String;ILcom/a/a/a/r;JJJLjava/util/Set;IJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "I",
            "Lcom/a/a/a/r;",
            "JJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IJZ)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/a/a/a/s;->a:Ljava/lang/String;

    .line 111
    iput-boolean p2, p0, Lcom/a/a/a/s;->b:Z

    .line 112
    iput p3, p0, Lcom/a/a/a/s;->i:I

    .line 113
    iput-object p4, p0, Lcom/a/a/a/s;->c:Ljava/lang/String;

    .line 114
    iput p5, p0, Lcom/a/a/a/s;->j:I

    .line 115
    iput-wide p7, p0, Lcom/a/a/a/s;->l:J

    .line 116
    iput-wide p9, p0, Lcom/a/a/a/s;->k:J

    .line 117
    iput-object p6, p0, Lcom/a/a/a/s;->e:Lcom/a/a/a/r;

    .line 118
    iput-wide p11, p0, Lcom/a/a/a/s;->m:J

    .line 119
    move/from16 v0, p14

    iput v0, p0, Lcom/a/a/a/s;->d:I

    .line 120
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/a/a/a/s;->f:Ljava/util/Set;

    .line 121
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/a/a/a/s;->n:J

    .line 122
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/a/a/a/s;->o:Z

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZILjava/lang/String;ILcom/a/a/a/r;JJJLjava/util/Set;IJZLcom/a/a/a/t;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p17}, Lcom/a/a/a/s;-><init>(Ljava/lang/String;ZILjava/lang/String;ILcom/a/a/a/r;JJJLjava/util/Set;IJZ)V

    return-void
.end method


# virtual methods
.method a(ILcom/a/a/a/k/b;)I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/a/a/a/s;->e:Lcom/a/a/a/r;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/a/r;->safeRun(Lcom/a/a/a/s;ILcom/a/a/a/k/b;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/a/a/a/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 155
    iput p1, p0, Lcom/a/a/a/s;->i:I

    .line 156
    iget-object v0, p0, Lcom/a/a/a/s;->e:Lcom/a/a/a/r;

    iget v1, p0, Lcom/a/a/a/s;->i:I

    iput v1, v0, Lcom/a/a/a/r;->priority:I

    .line 157
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 164
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/s;->h:Ljava/lang/Long;

    .line 165
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/a/a/a/s;->e:Lcom/a/a/a/r;

    invoke-virtual {v0, p1}, Lcom/a/a/a/r;->setApplicationContext(Landroid/content/Context;)V

    .line 254
    return-void
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 277
    iput-object p1, p0, Lcom/a/a/a/s;->r:Ljava/lang/Throwable;

    .line 278
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/a/a/a/s;->e:Lcom/a/a/a/r;

    invoke-virtual {v0, p1}, Lcom/a/a/a/r;->setDeadlineReached(Z)V

    .line 258
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/a/a/a/s;->i:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/a/a/a/s;->j:I

    .line 177
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/a/a/a/s;->k:J

    .line 169
    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/a/a/a/s;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/a/a/a/s;->e:Lcom/a/a/a/r;

    iget-object v1, p0, Lcom/a/a/a/s;->r:Ljava/lang/Throwable;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/r;->onCancel(ILjava/lang/Throwable;)V

    .line 270
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/a/a/a/s;->m:J

    .line 189
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/a/a/a/s;->j:I

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/a/a/a/s;->l:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 241
    instance-of v0, p1, Lcom/a/a/a/s;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    .line 244
    :cond_0
    check-cast p1, Lcom/a/a/a/s;

    .line 245
    iget-object v0, p0, Lcom/a/a/a/s;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/a/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/a/a/a/s;->m:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/a/a/a/s;->n:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/a/a/a/s;->o:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/a/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/a/a/a/s;->k:J

    return-wide v0
.end method

.method public j()Lcom/a/a/a/r;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/a/a/a/s;->e:Lcom/a/a/a/r;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/a/a/a/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/a/a/a/s;->f:Ljava/util/Set;

    return-object v0
.end method

.method public m()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 216
    iput-boolean v1, p0, Lcom/a/a/a/s;->p:Z

    .line 217
    iget-object v0, p0, Lcom/a/a/a/s;->e:Lcom/a/a/a/r;

    iput-boolean v1, v0, Lcom/a/a/a/r;->cancelled:Z

    .line 218
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/a/a/a/s;->p:Z

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/s;->q:Z

    .line 226
    invoke-virtual {p0}, Lcom/a/a/a/s;->m()V

    .line 227
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/a/a/a/s;->q:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/a/a/a/s;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/s;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 4

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/a/a/a/s;->n:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 4

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/a/a/a/s;->k:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Lcom/a/a/a/ae;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/a/a/a/s;->g:Lcom/a/a/a/ae;

    return-object v0
.end method

.method u()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/a/a/a/s;->r:Ljava/lang/Throwable;

    return-object v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/a/a/a/s;->d:I

    return v0
.end method
