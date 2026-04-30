.class public Lcom/a/a/a/u;
.super Ljava/lang/Object;
.source "JobHolder.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/a/a/a/r;

.field private g:J

.field private h:J

.field private i:Ljava/lang/Long;

.field private j:J

.field private k:J

.field private l:Z

.field private m:I

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput v2, p0, Lcom/a/a/a/u;->e:I

    .line 315
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/a/a/a/u;->h:J

    .line 319
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/a/a/a/u;->k:J

    .line 320
    iput-boolean v2, p0, Lcom/a/a/a/u;->l:Z

    .line 323
    iput v2, p0, Lcom/a/a/a/u;->m:I

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a/s;
    .locals 22

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/a/u;->f:Lcom/a/a/a/r;

    if-nez v2, :cond_0

    .line 407
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "must provide a job"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 409
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/a/u;->m:I

    and-int/lit16 v2, v2, 0x7ff

    .line 410
    const/16 v3, 0x7ff

    if-eq v2, v3, :cond_1

    .line 411
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "must provide all required fields. your result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 414
    :cond_1
    new-instance v3, Lcom/a/a/a/s;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/a/u;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/a/a/a/u;->c:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/a/u;->a:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a/a/a/u;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/a/u;->e:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/a/u;->f:Lcom/a/a/a/r;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/a/a/a/u;->g:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/a/a/a/u;->h:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/a/a/a/u;->j:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/a/u;->n:Ljava/util/Set;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/a/u;->o:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/a/a/a/u;->k:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/a/a/a/u;->l:Z

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Lcom/a/a/a/s;-><init>(Ljava/lang/String;ZILjava/lang/String;ILcom/a/a/a/r;JJJLjava/util/Set;IJZLcom/a/a/a/t;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/a/u;->i:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/a/u;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/a/a/a/s;->a(J)V

    .line 419
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/a/u;->f:Lcom/a/a/a/r;

    invoke-virtual {v2, v3}, Lcom/a/a/a/r;->updateFromJobHolder(Lcom/a/a/a/s;)V

    .line 420
    return-object v3
.end method

.method public a(I)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 333
    iput p1, p0, Lcom/a/a/a/u;->a:I

    .line 334
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 335
    return-object p0
.end method

.method public a(J)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 379
    iput-wide p1, p0, Lcom/a/a/a/u;->g:J

    .line 380
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 381
    return-object p0
.end method

.method public a(JZ)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 399
    iput-wide p1, p0, Lcom/a/a/a/u;->k:J

    .line 400
    iput-boolean p3, p0, Lcom/a/a/a/u;->l:Z

    .line 401
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 402
    return-object p0
.end method

.method public a(Lcom/a/a/a/r;)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 361
    iput-object p1, p0, Lcom/a/a/a/u;->f:Lcom/a/a/a/r;

    .line 362
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 363
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 338
    iput-object p1, p0, Lcom/a/a/a/u;->d:Ljava/lang/String;

    .line 339
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 340
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcom/a/a/a/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/a/a/a/u;"
        }
    .end annotation

    .prologue
    .line 344
    iput-object p1, p0, Lcom/a/a/a/u;->n:Ljava/util/Set;

    .line 345
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 346
    return-object p0
.end method

.method public a(Z)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/a/a/a/u;->c:Z

    .line 356
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 357
    return-object p0
.end method

.method public b(I)Lcom/a/a/a/u;
    .locals 0

    .prologue
    .line 350
    iput p1, p0, Lcom/a/a/a/u;->e:I

    .line 351
    return-object p0
.end method

.method public b(J)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 384
    iput-wide p1, p0, Lcom/a/a/a/u;->h:J

    .line 385
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 386
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 367
    iput-object p1, p0, Lcom/a/a/a/u;->b:Ljava/lang/String;

    .line 368
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 369
    return-object p0
.end method

.method public c(I)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 373
    iput p1, p0, Lcom/a/a/a/u;->o:I

    .line 374
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 375
    return-object p0
.end method

.method public c(J)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 389
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/u;->i:Ljava/lang/Long;

    .line 390
    return-object p0
.end method

.method public d(J)Lcom/a/a/a/u;
    .locals 1

    .prologue
    .line 393
    iput-wide p1, p0, Lcom/a/a/a/u;->j:J

    .line 394
    iget v0, p0, Lcom/a/a/a/u;->m:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/a/a/a/u;->m:I

    .line 395
    return-object p0
.end method
