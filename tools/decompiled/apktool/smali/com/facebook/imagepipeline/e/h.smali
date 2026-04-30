.class public Lcom/facebook/imagepipeline/e/h;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# static fields
.field private static x:Lcom/facebook/imagepipeline/e/k;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/a/a/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/c/k;

.field private final e:Landroid/content/Context;

.field private final f:Z

.field private final g:Lcom/facebook/imagepipeline/e/f;

.field private final h:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/facebook/imagepipeline/e/e;

.field private final j:Lcom/facebook/imagepipeline/c/ab;

.field private final k:Lcom/facebook/imagepipeline/g/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final l:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/facebook/c/b/l;

.field private final n:Lcom/facebook/d/g/b;

.field private final o:Lcom/facebook/imagepipeline/k/by;

.field private final p:Lcom/facebook/imagepipeline/b/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final q:Lcom/facebook/imagepipeline/memory/ad;

.field private final r:Lcom/facebook/imagepipeline/g/e;

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/i/b;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Z

.field private final u:Lcom/facebook/c/b/l;

.field private final v:Lcom/facebook/imagepipeline/g/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final w:Lcom/facebook/imagepipeline/e/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/facebook/imagepipeline/e/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/e/k;-><init>(Lcom/facebook/imagepipeline/e/i;)V

    sput-object v0, Lcom/facebook/imagepipeline/e/h;->x:Lcom/facebook/imagepipeline/e/k;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/e/j;)V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->a(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/n;->a()Lcom/facebook/imagepipeline/e/l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->w:Lcom/facebook/imagepipeline/e/l;

    .line 102
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->b(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->a:Lcom/facebook/imagepipeline/a/a/d;

    .line 104
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->c(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/facebook/imagepipeline/c/t;

    .line 106
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->d(Lcom/facebook/imagepipeline/e/j;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/c/t;-><init>(Landroid/app/ActivityManager;)V

    move-object v0, v1

    .line 107
    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->c:Lcom/facebook/d/d/m;

    .line 109
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->e(Lcom/facebook/imagepipeline/e/j;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 111
    :goto_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->b:Landroid/graphics/Bitmap$Config;

    .line 113
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->f(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/c/k;

    move-result-object v0

    if-nez v0, :cond_3

    .line 114
    invoke-static {}, Lcom/facebook/imagepipeline/c/u;->a()Lcom/facebook/imagepipeline/c/u;

    move-result-object v0

    .line 115
    :goto_2
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->d:Lcom/facebook/imagepipeline/c/k;

    .line 116
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->d(Lcom/facebook/imagepipeline/e/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->e:Landroid/content/Context;

    .line 117
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->g(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/e/f;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/facebook/imagepipeline/e/b;

    new-instance v1, Lcom/facebook/imagepipeline/e/d;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/e/d;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/e/b;-><init>(Lcom/facebook/imagepipeline/e/c;)V

    .line 119
    :goto_3
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->g:Lcom/facebook/imagepipeline/e/f;

    .line 120
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->h(Lcom/facebook/imagepipeline/e/j;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/h;->f:Z

    .line 122
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->i(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/facebook/imagepipeline/c/v;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/v;-><init>()V

    .line 124
    :goto_4
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->h:Lcom/facebook/d/d/m;

    .line 126
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->j(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/c/ab;

    move-result-object v0

    if-nez v0, :cond_6

    .line 127
    invoke-static {}, Lcom/facebook/imagepipeline/c/ah;->i()Lcom/facebook/imagepipeline/c/ah;

    move-result-object v0

    .line 128
    :goto_5
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->j:Lcom/facebook/imagepipeline/c/ab;

    .line 129
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->k(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->k:Lcom/facebook/imagepipeline/g/c;

    .line 131
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->l(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/facebook/imagepipeline/e/i;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/e/i;-><init>(Lcom/facebook/imagepipeline/e/h;)V

    .line 138
    :goto_6
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->l:Lcom/facebook/d/d/m;

    .line 140
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->m(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/c/b/l;

    move-result-object v0

    if-nez v0, :cond_8

    .line 141
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->d(Lcom/facebook/imagepipeline/e/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/e/h;->b(Landroid/content/Context;)Lcom/facebook/c/b/l;

    move-result-object v0

    .line 142
    :goto_7
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->m:Lcom/facebook/c/b/l;

    .line 144
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->n(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/g/b;

    move-result-object v0

    if-nez v0, :cond_9

    .line 145
    invoke-static {}, Lcom/facebook/d/g/c;->a()Lcom/facebook/d/g/c;

    move-result-object v0

    .line 146
    :goto_8
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->n:Lcom/facebook/d/g/b;

    .line 148
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->o(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/k/by;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/facebook/imagepipeline/k/ai;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/k/ai;-><init>()V

    .line 150
    :goto_9
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->o:Lcom/facebook/imagepipeline/k/by;

    .line 151
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->p(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->p:Lcom/facebook/imagepipeline/b/f;

    .line 153
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->q(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/facebook/imagepipeline/memory/ad;

    .line 154
    invoke-static {}, Lcom/facebook/imagepipeline/memory/aa;->i()Lcom/facebook/imagepipeline/memory/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/ac;->a()Lcom/facebook/imagepipeline/memory/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/ad;-><init>(Lcom/facebook/imagepipeline/memory/aa;)V

    .line 155
    :goto_a
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->q:Lcom/facebook/imagepipeline/memory/ad;

    .line 157
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->r(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/g/e;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/facebook/imagepipeline/g/g;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/g/g;-><init>()V

    .line 159
    :goto_b
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->r:Lcom/facebook/imagepipeline/g/e;

    .line 161
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->s(Lcom/facebook/imagepipeline/e/j;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 163
    :goto_c
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->s:Ljava/util/Set;

    .line 164
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->t(Lcom/facebook/imagepipeline/e/j;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/h;->t:Z

    .line 166
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->u(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/c/b/l;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->m:Lcom/facebook/c/b/l;

    .line 168
    :goto_d
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->u:Lcom/facebook/c/b/l;

    .line 169
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->v(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->v:Lcom/facebook/imagepipeline/g/d;

    .line 171
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->q:Lcom/facebook/imagepipeline/memory/ad;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/ad;->c()I

    move-result v1

    .line 173
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->w(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/e/e;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lcom/facebook/imagepipeline/e/a;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/e/a;-><init>(I)V

    .line 174
    :goto_e
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/h;->i:Lcom/facebook/imagepipeline/e/e;

    .line 176
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->w:Lcom/facebook/imagepipeline/e/l;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/l;->h()Lcom/facebook/d/n/b;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_10

    .line 178
    new-instance v1, Lcom/facebook/imagepipeline/b/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/b/d;-><init>(Lcom/facebook/imagepipeline/memory/ad;)V

    .line 179
    iget-object v2, p0, Lcom/facebook/imagepipeline/e/h;->w:Lcom/facebook/imagepipeline/e/l;

    invoke-static {v0, v2, v1}, Lcom/facebook/imagepipeline/e/h;->a(Lcom/facebook/d/n/b;Lcom/facebook/imagepipeline/e/l;Lcom/facebook/d/n/a;)V

    .line 191
    :cond_0
    :goto_f
    return-void

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->c(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;

    move-result-object v0

    goto/16 :goto_0

    .line 111
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->e(Lcom/facebook/imagepipeline/e/j;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto/16 :goto_1

    .line 115
    :cond_3
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->f(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/c/k;

    move-result-object v0

    goto/16 :goto_2

    .line 119
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->g(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/e/f;

    move-result-object v0

    goto/16 :goto_3

    .line 124
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->i(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;

    move-result-object v0

    goto/16 :goto_4

    .line 128
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->j(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/c/ab;

    move-result-object v0

    goto/16 :goto_5

    .line 138
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->l(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/d/m;

    move-result-object v0

    goto/16 :goto_6

    .line 142
    :cond_8
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->m(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/c/b/l;

    move-result-object v0

    goto/16 :goto_7

    .line 146
    :cond_9
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->n(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/d/g/b;

    move-result-object v0

    goto/16 :goto_8

    .line 150
    :cond_a
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->o(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/k/by;

    move-result-object v0

    goto/16 :goto_9

    .line 155
    :cond_b
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->q(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    goto/16 :goto_a

    .line 159
    :cond_c
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->r(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/g/e;

    move-result-object v0

    goto/16 :goto_b

    .line 163
    :cond_d
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->s(Lcom/facebook/imagepipeline/e/j;)Ljava/util/Set;

    move-result-object v0

    goto/16 :goto_c

    .line 168
    :cond_e
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->u(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/c/b/l;

    move-result-object v0

    goto/16 :goto_d

    .line 174
    :cond_f
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/j;->w(Lcom/facebook/imagepipeline/e/j;)Lcom/facebook/imagepipeline/e/e;

    move-result-object v0

    goto :goto_e

    .line 182
    :cond_10
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->w:Lcom/facebook/imagepipeline/e/l;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/d/n/d;->a:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/facebook/d/n/d;->a()Lcom/facebook/d/n/b;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Lcom/facebook/imagepipeline/b/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/b/d;-><init>(Lcom/facebook/imagepipeline/memory/ad;)V

    .line 187
    iget-object v2, p0, Lcom/facebook/imagepipeline/e/h;->w:Lcom/facebook/imagepipeline/e/l;

    invoke-static {v0, v2, v1}, Lcom/facebook/imagepipeline/e/h;->a(Lcom/facebook/d/n/b;Lcom/facebook/imagepipeline/e/l;Lcom/facebook/d/n/a;)V

    goto :goto_f
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/e/j;Lcom/facebook/imagepipeline/e/i;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/e/h;-><init>(Lcom/facebook/imagepipeline/e/j;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/imagepipeline/e/j;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Lcom/facebook/imagepipeline/e/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/e/j;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/e/i;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/d/n/b;Lcom/facebook/imagepipeline/e/l;Lcom/facebook/d/n/a;)V
    .locals 1

    .prologue
    .line 197
    sput-object p0, Lcom/facebook/d/n/d;->d:Lcom/facebook/d/n/b;

    .line 199
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/e/l;->g()Lcom/facebook/d/n/c;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {p0, v0}, Lcom/facebook/d/n/b;->a(Lcom/facebook/d/n/c;)V

    .line 203
    :cond_0
    if-eqz p2, :cond_1

    .line 204
    invoke-interface {p0, p2}, Lcom/facebook/d/n/b;->a(Lcom/facebook/d/n/a;)V

    .line 206
    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/c/b/l;
    .locals 1

    .prologue
    .line 209
    invoke-static {p0}, Lcom/facebook/c/b/l;->a(Landroid/content/Context;)Lcom/facebook/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/c/b/n;->a()Lcom/facebook/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/facebook/imagepipeline/e/k;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/facebook/imagepipeline/e/h;->x:Lcom/facebook/imagepipeline/e/k;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->b:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public b()Lcom/facebook/d/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->c:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/c/k;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->d:Lcom/facebook/imagepipeline/c/k;

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->e:Landroid/content/Context;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/e/f;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->g:Lcom/facebook/imagepipeline/e/f;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/h;->f:Z

    return v0
.end method

.method public h()Lcom/facebook/d/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->h:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/e/e;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->i:Lcom/facebook/imagepipeline/e/e;

    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/c/ab;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->j:Lcom/facebook/imagepipeline/c/ab;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/g/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->k:Lcom/facebook/imagepipeline/g/c;

    return-object v0
.end method

.method public l()Lcom/facebook/d/d/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->l:Lcom/facebook/d/d/m;

    return-object v0
.end method

.method public m()Lcom/facebook/c/b/l;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->m:Lcom/facebook/c/b/l;

    return-object v0
.end method

.method public n()Lcom/facebook/d/g/b;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->n:Lcom/facebook/d/g/b;

    return-object v0
.end method

.method public o()Lcom/facebook/imagepipeline/k/by;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->o:Lcom/facebook/imagepipeline/k/by;

    return-object v0
.end method

.method public p()Lcom/facebook/imagepipeline/memory/ad;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->q:Lcom/facebook/imagepipeline/memory/ad;

    return-object v0
.end method

.method public q()Lcom/facebook/imagepipeline/g/e;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->r:Lcom/facebook/imagepipeline/g/e;

    return-object v0
.end method

.method public r()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/i/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->s:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/h;->t:Z

    return v0
.end method

.method public t()Lcom/facebook/c/b/l;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->u:Lcom/facebook/c/b/l;

    return-object v0
.end method

.method public u()Lcom/facebook/imagepipeline/g/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->v:Lcom/facebook/imagepipeline/g/d;

    return-object v0
.end method

.method public v()Lcom/facebook/imagepipeline/e/l;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/h;->w:Lcom/facebook/imagepipeline/e/l;

    return-object v0
.end method
