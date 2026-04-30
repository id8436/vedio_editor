.class public final Ld/a/b/h;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field public final a:Ld/a;

.field public final b:Ld/g;

.field public final c:Ld/z;

.field private e:Ld/a/b/g;

.field private f:Ld/bi;

.field private final g:Ld/p;

.field private final h:Ljava/lang/Object;

.field private final i:Ld/a/b/f;

.field private j:I

.field private k:Ld/a/b/c;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ld/a/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Ld/a/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ld/a/b/h;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ld/p;Ld/a;Ld/g;Ld/z;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Ld/a/b/h;->g:Ld/p;

    .line 98
    iput-object p2, p0, Ld/a/b/h;->a:Ld/a;

    .line 99
    iput-object p3, p0, Ld/a/b/h;->b:Ld/g;

    .line 100
    iput-object p4, p0, Ld/a/b/h;->c:Ld/z;

    .line 101
    new-instance v0, Ld/a/b/f;

    invoke-direct {p0}, Ld/a/b/h;->h()Ld/a/b/d;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Ld/a/b/f;-><init>(Ld/a;Ld/a/b/d;Ld/g;Ld/z;)V

    iput-object v0, p0, Ld/a/b/h;->i:Ld/a/b/f;

    .line 102
    iput-object p5, p0, Ld/a/b/h;->h:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private a(IIIZ)Ld/a/b/c;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v3, 0x0

    .line 162
    const/4 v1, 0x0

    .line 163
    const/4 v2, 0x0

    .line 166
    iget-object v4, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v4

    .line 167
    :try_start_0
    iget-boolean v0, p0, Ld/a/b/h;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 168
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/a/b/h;->o:Ld/a/c/d;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "codec != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    iget-boolean v0, p0, Ld/a/b/h;->n:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 174
    invoke-direct {p0}, Ld/a/b/h;->g()Ljava/net/Socket;

    move-result-object v5

    .line 175
    iget-object v6, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v6, :cond_3

    .line 177
    iget-object v1, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 178
    const/4 v0, 0x0

    .line 180
    :cond_3
    iget-boolean v6, p0, Ld/a/b/h;->l:Z

    if-nez v6, :cond_4

    .line 182
    const/4 v0, 0x0

    .line 185
    :cond_4
    if-nez v1, :cond_5

    .line 187
    sget-object v6, Ld/a/a;->a:Ld/a/a;

    iget-object v7, p0, Ld/a/b/h;->g:Ld/p;

    iget-object v8, p0, Ld/a/b/h;->a:Ld/a;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, p0, v9}, Ld/a/a;->a(Ld/p;Ld/a;Ld/a/b/h;Ld/bi;)Ld/a/b/c;

    .line 188
    iget-object v6, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v6, :cond_8

    .line 189
    const/4 v3, 0x1

    .line 190
    iget-object v1, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 195
    :cond_5
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    invoke-static {v5}, Ld/a/c;->a(Ljava/net/Socket;)V

    .line 198
    if-eqz v0, :cond_6

    .line 199
    iget-object v4, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v5, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v4, v5, v0}, Ld/z;->b(Ld/g;Ld/o;)V

    .line 201
    :cond_6
    if-eqz v3, :cond_7

    .line 202
    iget-object v0, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v4, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v0, v4, v1}, Ld/z;->a(Ld/g;Ld/o;)V

    .line 204
    :cond_7
    if-eqz v1, :cond_9

    move-object v0, v1

    .line 277
    :goto_1
    return-object v0

    .line 192
    :cond_8
    :try_start_2
    iget-object v2, p0, Ld/a/b/h;->f:Ld/bi;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 210
    :cond_9
    const/4 v0, 0x0

    .line 211
    if-nez v2, :cond_b

    iget-object v4, p0, Ld/a/b/h;->e:Ld/a/b/g;

    if-eqz v4, :cond_a

    iget-object v4, p0, Ld/a/b/h;->e:Ld/a/b/g;

    invoke-virtual {v4}, Ld/a/b/g;->a()Z

    move-result v4

    if-nez v4, :cond_b

    .line 212
    :cond_a
    const/4 v0, 0x1

    .line 213
    iget-object v4, p0, Ld/a/b/h;->i:Ld/a/b/f;

    invoke-virtual {v4}, Ld/a/b/f;->b()Ld/a/b/g;

    move-result-object v4

    iput-object v4, p0, Ld/a/b/h;->e:Ld/a/b/g;

    .line 216
    :cond_b
    iget-object v5, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v5

    .line 217
    :try_start_3
    iget-boolean v4, p0, Ld/a/b/h;->n:Z

    if-eqz v4, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 219
    :cond_c
    if-eqz v0, :cond_12

    .line 222
    :try_start_4
    iget-object v0, p0, Ld/a/b/h;->e:Ld/a/b/g;

    invoke-virtual {v0}, Ld/a/b/g;->c()Ljava/util/List;

    move-result-object v6

    .line 223
    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v0

    :goto_2
    if-ge v4, v7, :cond_12

    .line 224
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/bi;

    .line 225
    sget-object v8, Ld/a/a;->a:Ld/a/a;

    iget-object v9, p0, Ld/a/b/h;->g:Ld/p;

    iget-object v10, p0, Ld/a/b/h;->a:Ld/a;

    invoke-virtual {v8, v9, v10, p0, v0}, Ld/a/a;->a(Ld/p;Ld/a;Ld/a/b/h;Ld/bi;)Ld/a/b/c;

    .line 226
    iget-object v8, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v8, :cond_e

    .line 227
    const/4 v3, 0x1

    .line 228
    iget-object v1, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 229
    iput-object v0, p0, Ld/a/b/h;->f:Ld/bi;

    move-object v0, v1

    .line 235
    :goto_3
    if-nez v3, :cond_d

    .line 236
    if-nez v2, :cond_11

    .line 237
    iget-object v0, p0, Ld/a/b/h;->e:Ld/a/b/g;

    invoke-virtual {v0}, Ld/a/b/g;->b()Ld/bi;

    move-result-object v0

    move-object v1, v0

    .line 242
    :goto_4
    iput-object v1, p0, Ld/a/b/h;->f:Ld/bi;

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Ld/a/b/h;->j:I

    .line 244
    new-instance v0, Ld/a/b/c;

    iget-object v2, p0, Ld/a/b/h;->g:Ld/p;

    invoke-direct {v0, v2, v1}, Ld/a/b/c;-><init>(Ld/p;Ld/bi;)V

    .line 245
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ld/a/b/h;->a(Ld/a/b/c;Z)V

    .line 247
    :cond_d
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 250
    if-eqz v3, :cond_f

    .line 251
    iget-object v1, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v2, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v1, v2, v0}, Ld/z;->a(Ld/g;Ld/o;)V

    goto :goto_1

    .line 223
    :cond_e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 256
    :cond_f
    iget-object v5, p0, Ld/a/b/h;->b:Ld/g;

    iget-object v6, p0, Ld/a/b/h;->c:Ld/z;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Ld/a/b/c;->a(IIIZLd/g;Ld/z;)V

    .line 258
    invoke-direct {p0}, Ld/a/b/h;->h()Ld/a/b/d;

    move-result-object v1

    invoke-virtual {v0}, Ld/a/b/c;->a()Ld/bi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/a/b/d;->b(Ld/bi;)V

    .line 260
    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v2

    .line 262
    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Ld/a/b/h;->l:Z

    .line 265
    sget-object v3, Ld/a/a;->a:Ld/a/a;

    iget-object v4, p0, Ld/a/b/h;->g:Ld/p;

    invoke-virtual {v3, v4, v0}, Ld/a/a;->b(Ld/p;Ld/a/b/c;)V

    .line 269
    invoke-virtual {v0}, Ld/a/b/c;->e()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 270
    sget-object v0, Ld/a/a;->a:Ld/a/a;

    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    iget-object v3, p0, Ld/a/b/h;->a:Ld/a;

    invoke-virtual {v0, v1, v3, p0}, Ld/a/a;->a(Ld/p;Ld/a;Ld/a/b/h;)Ljava/net/Socket;

    move-result-object v0

    .line 271
    iget-object v1, p0, Ld/a/b/h;->k:Ld/a/b/c;

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 273
    :cond_10
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 274
    invoke-static {v1}, Ld/a/c;->a(Ljava/net/Socket;)V

    .line 276
    iget-object v1, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v2, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v1, v2, v0}, Ld/z;->a(Ld/g;Ld/o;)V

    goto/16 :goto_1

    .line 273
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_11
    move-object v1, v2

    goto :goto_4

    :cond_12
    move-object v0, v1

    goto :goto_3
.end method

.method private a(IIIZZ)Ld/a/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Ld/a/b/h;->a(IIIZ)Ld/a/b/c;

    move-result-object v0

    .line 138
    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v1

    .line 139
    :try_start_0
    iget v2, v0, Ld/a/b/c;->b:I

    if-nez v2, :cond_1

    .line 140
    monitor-exit v1

    .line 151
    :cond_0
    return-object v0

    .line 142
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v0, p5}, Ld/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Ld/a/b/h;->d()V

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ZZZ)Ljava/net/Socket;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 376
    sget-boolean v0, Ld/a/b/h;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/b/h;->g:Ld/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 378
    :cond_0
    if-eqz p3, :cond_1

    .line 379
    iput-object v1, p0, Ld/a/b/h;->o:Ld/a/c/d;

    .line 381
    :cond_1
    if-eqz p2, :cond_2

    .line 382
    iput-boolean v2, p0, Ld/a/b/h;->m:Z

    .line 385
    :cond_2
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v0, :cond_5

    .line 386
    if-eqz p1, :cond_3

    .line 387
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    iput-boolean v2, v0, Ld/a/b/c;->a:Z

    .line 389
    :cond_3
    iget-object v0, p0, Ld/a/b/h;->o:Ld/a/c/d;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Ld/a/b/h;->m:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    iget-boolean v0, v0, Ld/a/b/c;->a:Z

    if-eqz v0, :cond_5

    .line 390
    :cond_4
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    invoke-direct {p0, v0}, Ld/a/b/h;->b(Ld/a/b/c;)V

    .line 391
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    iget-object v0, v0, Ld/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 392
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Ld/a/b/c;->e:J

    .line 393
    sget-object v0, Ld/a/a;->a:Ld/a/a;

    iget-object v2, p0, Ld/a/b/h;->g:Ld/p;

    iget-object v3, p0, Ld/a/b/h;->k:Ld/a/b/c;

    invoke-virtual {v0, v2, v3}, Ld/a/a;->a(Ld/p;Ld/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 394
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    invoke-virtual {v0}, Ld/a/b/c;->c()Ljava/net/Socket;

    move-result-object v0

    .line 397
    :goto_0
    iput-object v1, p0, Ld/a/b/h;->k:Ld/a/b/c;

    move-object v1, v0

    .line 400
    :cond_5
    return-object v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ld/a/b/c;)V
    .locals 3

    .prologue
    .line 473
    const/4 v0, 0x0

    iget-object v1, p1, Ld/a/b/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 474
    iget-object v0, p1, Ld/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 475
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 476
    iget-object v0, p1, Ld/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 477
    return-void

    .line 473
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private g()Ljava/net/Socket;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    sget-boolean v0, Ld/a/b/h;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/b/h;->g:Ld/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 289
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Ld/a/b/c;->a:Z

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Ld/a/b/h;->a(ZZZ)Ljava/net/Socket;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Ld/a/b/d;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Ld/a/a;->a:Ld/a/a;

    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    invoke-virtual {v0, v1}, Ld/a/a;->a(Ld/p;)Ld/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ld/a/c/d;
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Ld/a/b/h;->o:Ld/a/c/d;

    monitor-exit v1

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ld/ar;Ld/am;Z)Ld/a/c/d;
    .locals 6

    .prologue
    .line 107
    invoke-interface {p2}, Ld/am;->b()I

    move-result v1

    .line 108
    invoke-interface {p2}, Ld/am;->c()I

    move-result v2

    .line 109
    invoke-interface {p2}, Ld/am;->d()I

    move-result v3

    .line 110
    invoke-virtual {p1}, Ld/ar;->r()Z

    move-result v4

    move-object v0, p0

    move v5, p3

    .line 113
    :try_start_0
    invoke-direct/range {v0 .. v5}, Ld/a/b/h;->a(IIIZZ)Ld/a/b/c;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1, p2, p0}, Ld/a/b/c;->a(Ld/ar;Ld/am;Ld/a/b/h;)Ld/a/c/d;

    move-result-object v0

    .line 117
    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iput-object v0, p0, Ld/a/b/h;->o:Ld/a/c/d;

    .line 119
    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ld/a/b/e;

    invoke-direct {v1, v0}, Ld/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ld/a/b/c;)Ljava/net/Socket;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 492
    sget-boolean v0, Ld/a/b/h;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/b/h;->g:Ld/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 493
    :cond_0
    iget-object v0, p0, Ld/a/b/h;->o:Ld/a/c/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    iget-object v0, v0, Ld/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 496
    :cond_2
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    iget-object v0, v0, Ld/a/b/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 497
    invoke-direct {p0, v2, v1, v1}, Ld/a/b/h;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 500
    iput-object p1, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 501
    iget-object v2, p1, Ld/a/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-object v1
.end method

.method public a(Ld/a/b/c;Z)V
    .locals 3

    .prologue
    .line 463
    sget-boolean v0, Ld/a/b/h;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/b/h;->g:Ld/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 464
    :cond_0
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 466
    :cond_1
    iput-object p1, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 467
    iput-boolean p2, p0, Ld/a/b/h;->l:Z

    .line 468
    iget-object v0, p1, Ld/a/b/c;->d:Ljava/util/List;

    new-instance v1, Ld/a/b/i;

    iget-object v2, p0, Ld/a/b/h;->h:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Ld/a/b/i;-><init>(Ld/a/b/h;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method public a(Ljava/io/IOException;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 421
    .line 423
    iget-object v3, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v3

    .line 424
    :try_start_0
    instance-of v4, p1, Ld/a/e/am;

    if-eqz v4, :cond_7

    .line 425
    check-cast p1, Ld/a/e/am;

    .line 426
    iget-object v4, p1, Ld/a/e/am;->a:Ld/a/e/b;

    sget-object v5, Ld/a/e/b;->e:Ld/a/e/b;

    if-ne v4, v5, :cond_0

    .line 427
    iget v4, p0, Ld/a/b/h;->j:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ld/a/b/h;->j:I

    .line 431
    :cond_0
    iget-object v4, p1, Ld/a/e/am;->a:Ld/a/e/b;

    sget-object v5, Ld/a/e/b;->e:Ld/a/e/b;

    if-ne v4, v5, :cond_1

    iget v4, p0, Ld/a/b/h;->j:I

    if-le v4, v1, :cond_2

    .line 433
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ld/a/b/h;->f:Ld/bi;

    move v0, v1

    :cond_2
    move v1, v0

    .line 447
    :cond_3
    :goto_0
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 448
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v4, v5}, Ld/a/b/h;->a(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 449
    iget-object v4, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-nez v4, :cond_4

    iget-boolean v4, p0, Ld/a/b/h;->l:Z

    if-nez v4, :cond_5

    :cond_4
    move-object v0, v2

    .line 450
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-static {v1}, Ld/a/c;->a(Ljava/net/Socket;)V

    .line 453
    if-eqz v0, :cond_6

    .line 454
    iget-object v1, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v2, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v1, v2, v0}, Ld/z;->b(Ld/g;Ld/o;)V

    .line 456
    :cond_6
    return-void

    .line 435
    :cond_7
    :try_start_1
    iget-object v4, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v4, :cond_a

    iget-object v4, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 436
    invoke-virtual {v4}, Ld/a/b/c;->e()Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, p1, Ld/a/e/a;

    if-eqz v4, :cond_a

    .line 440
    :cond_8
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    iget v0, v0, Ld/a/b/c;->b:I

    if-nez v0, :cond_3

    .line 441
    iget-object v0, p0, Ld/a/b/h;->f:Ld/bi;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 442
    iget-object v0, p0, Ld/a/b/h;->i:Ld/a/b/f;

    iget-object v4, p0, Ld/a/b/h;->f:Ld/bi;

    invoke-virtual {v0, v4, p1}, Ld/a/b/f;->a(Ld/bi;Ljava/io/IOException;)V

    .line 444
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Ld/a/b/h;->f:Ld/bi;

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    move v1, v0

    goto :goto_0
.end method

.method public a(ZLd/a/c/d;JLjava/io/IOException;)V
    .locals 5

    .prologue
    .line 296
    iget-object v0, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v1, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v0, v1, p3, p4}, Ld/z;->b(Ld/g;J)V

    .line 301
    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v1

    .line 302
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Ld/a/b/h;->o:Ld/a/c/d;

    if-eq p2, v0, :cond_1

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ld/a/b/h;->o:Ld/a/c/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 305
    :cond_1
    if-nez p1, :cond_2

    .line 306
    :try_start_1
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    iget v2, v0, Ld/a/b/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Ld/a/b/c;->b:I

    .line 308
    :cond_2
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 309
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Ld/a/b/h;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 310
    iget-object v3, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    .line 311
    :cond_3
    iget-boolean v3, p0, Ld/a/b/h;->m:Z

    .line 312
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-static {v2}, Ld/a/c;->a(Ljava/net/Socket;)V

    .line 314
    if-eqz v0, :cond_4

    .line 315
    iget-object v1, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v2, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v1, v2, v0}, Ld/z;->b(Ld/g;Ld/o;)V

    .line 318
    :cond_4
    if-eqz p5, :cond_6

    .line 319
    iget-object v0, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v1, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v0, v1, p5}, Ld/z;->a(Ld/g;Ljava/io/IOException;)V

    .line 323
    :cond_5
    :goto_0
    return-void

    .line 320
    :cond_6
    if-eqz v3, :cond_5

    .line 321
    iget-object v0, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v1, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v0, v1}, Ld/z;->g(Ld/g;)V

    goto :goto_0
.end method

.method public declared-synchronized b()Ld/a/b/c;
    .locals 1

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 342
    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 344
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Ld/a/b/h;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 345
    iget-object v3, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 346
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-static {v2}, Ld/a/c;->a(Ljava/net/Socket;)V

    .line 348
    if-eqz v0, :cond_1

    .line 349
    iget-object v1, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v2, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v1, v2, v0}, Ld/z;->b(Ld/g;Ld/o;)V

    .line 351
    :cond_1
    return-void

    .line 346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 357
    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 359
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Ld/a/b/h;->a(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 360
    iget-object v3, p0, Ld/a/b/h;->k:Ld/a/b/c;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 361
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-static {v2}, Ld/a/c;->a(Ljava/net/Socket;)V

    .line 363
    if-eqz v0, :cond_1

    .line 364
    iget-object v1, p0, Ld/a/b/h;->c:Ld/z;

    iget-object v2, p0, Ld/a/b/h;->b:Ld/g;

    invoke-virtual {v1, v2, v0}, Ld/z;->b(Ld/g;Ld/o;)V

    .line 366
    :cond_1
    return-void

    .line 361
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Ld/a/b/h;->g:Ld/p;

    monitor-enter v1

    .line 407
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ld/a/b/h;->n:Z

    .line 408
    iget-object v0, p0, Ld/a/b/h;->o:Ld/a/c/d;

    .line 409
    iget-object v2, p0, Ld/a/b/h;->k:Ld/a/b/c;

    .line 410
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v0, :cond_1

    .line 412
    invoke-interface {v0}, Ld/a/c/d;->c()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 410
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 413
    :cond_1
    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {v2}, Ld/a/b/c;->b()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Ld/a/b/h;->f:Ld/bi;

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/a/b/h;->e:Ld/a/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/b/h;->e:Ld/a/b/g;

    .line 508
    invoke-virtual {v0}, Ld/a/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ld/a/b/h;->i:Ld/a/b/f;

    .line 509
    invoke-virtual {v0}, Ld/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 507
    :goto_0
    return v0

    .line 509
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Ld/a/b/h;->b()Ld/a/b/c;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/a/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ld/a/b/h;->a:Ld/a;

    invoke-virtual {v0}, Ld/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
