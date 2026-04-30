.class public Lcom/b/a/h;
.super Ljava/lang/Object;
.source "Glide.java"


# static fields
.field private static volatile a:Lcom/b/a/h;

.field private static b:Z


# instance fields
.field private final c:Lcom/b/a/d/c/c;

.field private final d:Lcom/b/a/d/b/f;

.field private final e:Lcom/b/a/d/b/a/e;

.field private final f:Lcom/b/a/d/b/b/o;

.field private final g:Lcom/b/a/d/a;

.field private final h:Lcom/b/a/h/b/f;

.field private final i:Lcom/b/a/d/d/f/d;

.field private final j:Lcom/b/a/g/c;

.field private final k:Lcom/b/a/d/d/a/e;

.field private final l:Lcom/b/a/d/d/e/h;

.field private final m:Lcom/b/a/d/d/a/l;

.field private final n:Lcom/b/a/d/d/e/h;

.field private final o:Landroid/os/Handler;

.field private final p:Lcom/b/a/d/b/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/b/a/h;->b:Z

    return-void
.end method

.method constructor <init>(Lcom/b/a/d/b/f;Lcom/b/a/d/b/b/o;Lcom/b/a/d/b/a/e;Landroid/content/Context;Lcom/b/a/d/a;)V
    .locals 6

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/b/a/h/b/f;

    invoke-direct {v0}, Lcom/b/a/h/b/f;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->h:Lcom/b/a/h/b/f;

    .line 95
    new-instance v0, Lcom/b/a/d/d/f/d;

    invoke-direct {v0}, Lcom/b/a/d/d/f/d;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->i:Lcom/b/a/d/d/f/d;

    .line 232
    iput-object p1, p0, Lcom/b/a/h;->d:Lcom/b/a/d/b/f;

    .line 233
    iput-object p3, p0, Lcom/b/a/h;->e:Lcom/b/a/d/b/a/e;

    .line 234
    iput-object p2, p0, Lcom/b/a/h;->f:Lcom/b/a/d/b/b/o;

    .line 235
    iput-object p5, p0, Lcom/b/a/h;->g:Lcom/b/a/d/a;

    .line 236
    new-instance v0, Lcom/b/a/d/c/c;

    invoke-direct {v0, p4}, Lcom/b/a/d/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/h;->c:Lcom/b/a/d/c/c;

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/b/a/h;->o:Landroid/os/Handler;

    .line 238
    new-instance v0, Lcom/b/a/d/b/d/a;

    invoke-direct {v0, p2, p3, p5}, Lcom/b/a/d/b/d/a;-><init>(Lcom/b/a/d/b/b/o;Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V

    iput-object v0, p0, Lcom/b/a/h;->p:Lcom/b/a/d/b/d/a;

    .line 240
    new-instance v0, Lcom/b/a/g/c;

    invoke-direct {v0}, Lcom/b/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/h;->j:Lcom/b/a/g/c;

    .line 242
    new-instance v0, Lcom/b/a/d/d/a/x;

    invoke-direct {v0, p3, p5}, Lcom/b/a/d/d/a/x;-><init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V

    .line 244
    iget-object v1, p0, Lcom/b/a/h;->j:Lcom/b/a/g/c;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/b/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/g/b;)V

    .line 246
    new-instance v1, Lcom/b/a/d/d/a/j;

    invoke-direct {v1, p3, p5}, Lcom/b/a/d/d/a/j;-><init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/a;)V

    .line 248
    iget-object v2, p0, Lcom/b/a/h;->j:Lcom/b/a/g/c;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v1}, Lcom/b/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/g/b;)V

    .line 250
    new-instance v2, Lcom/b/a/d/d/a/u;

    invoke-direct {v2, v0, v1}, Lcom/b/a/d/d/a/u;-><init>(Lcom/b/a/g/b;Lcom/b/a/g/b;)V

    .line 252
    iget-object v0, p0, Lcom/b/a/h;->j:Lcom/b/a/g/c;

    const-class v1, Lcom/b/a/d/c/j;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v2}, Lcom/b/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/g/b;)V

    .line 254
    new-instance v0, Lcom/b/a/d/d/d/d;

    invoke-direct {v0, p4, p3}, Lcom/b/a/d/d/d/d;-><init>(Landroid/content/Context;Lcom/b/a/d/b/a/e;)V

    .line 256
    iget-object v1, p0, Lcom/b/a/h;->j:Lcom/b/a/g/c;

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/b/a/d/d/d/b;

    invoke-virtual {v1, v3, v4, v0}, Lcom/b/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/g/b;)V

    .line 258
    iget-object v1, p0, Lcom/b/a/h;->j:Lcom/b/a/g/c;

    const-class v3, Lcom/b/a/d/c/j;

    const-class v4, Lcom/b/a/d/d/e/a;

    new-instance v5, Lcom/b/a/d/d/e/i;

    invoke-direct {v5, v2, v0, p3}, Lcom/b/a/d/d/e/i;-><init>(Lcom/b/a/g/b;Lcom/b/a/g/b;Lcom/b/a/d/b/a/e;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/b/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/g/b;)V

    .line 261
    iget-object v0, p0, Lcom/b/a/h;->j:Lcom/b/a/g/c;

    const-class v1, Ljava/io/InputStream;

    const-class v2, Ljava/io/File;

    new-instance v3, Lcom/b/a/d/d/c/e;

    invoke-direct {v3}, Lcom/b/a/d/d/c/e;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/g/b;)V

    .line 263
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/b/a/d/c/a/b;

    invoke-direct {v2}, Lcom/b/a/d/c/a/b;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 264
    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/b/a/d/c/b/f;

    invoke-direct {v2}, Lcom/b/a/d/c/b/f;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 265
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/b/a/d/c/a/e;

    invoke-direct {v2}, Lcom/b/a/d/c/a/e;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 266
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/b/a/d/c/b/i;

    invoke-direct {v2}, Lcom/b/a/d/c/b/i;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 267
    const-class v0, Ljava/lang/Integer;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/b/a/d/c/a/e;

    invoke-direct {v2}, Lcom/b/a/d/c/a/e;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 268
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/b/a/d/c/b/i;

    invoke-direct {v2}, Lcom/b/a/d/c/b/i;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 269
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/b/a/d/c/a/g;

    invoke-direct {v2}, Lcom/b/a/d/c/a/g;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 270
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/b/a/d/c/b/k;

    invoke-direct {v2}, Lcom/b/a/d/c/b/k;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 271
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/b/a/d/c/a/i;

    invoke-direct {v2}, Lcom/b/a/d/c/a/i;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 272
    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/b/a/d/c/b/m;

    invoke-direct {v2}, Lcom/b/a/d/c/b/m;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 273
    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/b/a/d/c/b/o;

    invoke-direct {v2}, Lcom/b/a/d/c/b/o;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 274
    const-class v0, Lcom/b/a/d/c/e;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/b/a/d/c/b/b;

    invoke-direct {v2}, Lcom/b/a/d/c/b/b;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 275
    const-class v0, [B

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/b/a/d/c/b/d;

    invoke-direct {v2}, Lcom/b/a/d/c/b/d;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V

    .line 277
    iget-object v0, p0, Lcom/b/a/h;->i:Lcom/b/a/d/d/f/d;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Lcom/b/a/d/d/a/m;

    new-instance v3, Lcom/b/a/d/d/f/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/b/a/d/d/f/b;-><init>(Landroid/content/res/Resources;Lcom/b/a/d/b/a/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/d/d/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/d/f/c;)V

    .line 279
    iget-object v0, p0, Lcom/b/a/h;->i:Lcom/b/a/d/d/f/d;

    const-class v1, Lcom/b/a/d/d/e/a;

    const-class v2, Lcom/b/a/d/d/b/b;

    new-instance v3, Lcom/b/a/d/d/f/a;

    new-instance v4, Lcom/b/a/d/d/f/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/b/a/d/d/f/b;-><init>(Landroid/content/res/Resources;Lcom/b/a/d/b/a/e;)V

    invoke-direct {v3, v4}, Lcom/b/a/d/d/f/a;-><init>(Lcom/b/a/d/d/f/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/d/d/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/d/f/c;)V

    .line 283
    new-instance v0, Lcom/b/a/d/d/a/e;

    invoke-direct {v0, p3}, Lcom/b/a/d/d/a/e;-><init>(Lcom/b/a/d/b/a/e;)V

    iput-object v0, p0, Lcom/b/a/h;->k:Lcom/b/a/d/d/a/e;

    .line 284
    new-instance v0, Lcom/b/a/d/d/e/h;

    iget-object v1, p0, Lcom/b/a/h;->k:Lcom/b/a/d/d/a/e;

    invoke-direct {v0, p3, v1}, Lcom/b/a/d/d/e/h;-><init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/g;)V

    iput-object v0, p0, Lcom/b/a/h;->l:Lcom/b/a/d/d/e/h;

    .line 286
    new-instance v0, Lcom/b/a/d/d/a/l;

    invoke-direct {v0, p3}, Lcom/b/a/d/d/a/l;-><init>(Lcom/b/a/d/b/a/e;)V

    iput-object v0, p0, Lcom/b/a/h;->m:Lcom/b/a/d/d/a/l;

    .line 287
    new-instance v0, Lcom/b/a/d/d/e/h;

    iget-object v1, p0, Lcom/b/a/h;->m:Lcom/b/a/d/d/a/l;

    invoke-direct {v0, p3, v1}, Lcom/b/a/d/d/e/h;-><init>(Lcom/b/a/d/b/a/e;Lcom/b/a/d/g;)V

    iput-object v0, p0, Lcom/b/a/h;->n:Lcom/b/a/d/d/e/h;

    .line 288
    return-void
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/b/a/d/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/b/a/d/c/s",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/b/a/d/c/s;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/b/a/d/c/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/b/a/d/c/s",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 561
    if-nez p0, :cond_1

    .line 562
    const-string/jumbo v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string/jumbo v0, "Glide"

    const-string/jumbo v1, "Unable to load null model, setting placeholder only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/b/a/h;->a(Landroid/content/Context;)Lcom/b/a/h;

    move-result-object v0

    invoke-direct {v0}, Lcom/b/a/h;->i()Lcom/b/a/d/c/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/d/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/d/c/s;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/b/a/h;
    .locals 6

    .prologue
    .line 161
    sget-object v0, Lcom/b/a/h;->a:Lcom/b/a/h;

    if-nez v0, :cond_2

    .line 162
    const-class v1, Lcom/b/a/h;

    monitor-enter v1

    .line 163
    :try_start_0
    sget-object v0, Lcom/b/a/h;->a:Lcom/b/a/h;

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 165
    new-instance v3, Lcom/b/a/j;

    invoke-direct {v3, v2}, Lcom/b/a/j;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-static {v2}, Lcom/b/a/h;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 167
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/f/a;

    .line 168
    invoke-interface {v0, v2, v3}, Lcom/b/a/f/a;->a(Landroid/content/Context;Lcom/b/a/j;)V

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 170
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/b/a/j;->a()Lcom/b/a/h;

    move-result-object v0

    sput-object v0, Lcom/b/a/h;->a:Lcom/b/a/h;

    .line 171
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/f/a;

    .line 172
    sget-object v4, Lcom/b/a/h;->a:Lcom/b/a/h;

    invoke-interface {v0, v2, v4}, Lcom/b/a/f/a;->a(Landroid/content/Context;Lcom/b/a/h;)V

    goto :goto_1

    .line 175
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_2
    sget-object v0, Lcom/b/a/h;->a:Lcom/b/a/h;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/b/a/l;
    .locals 1

    .prologue
    .line 680
    invoke-static {}, Lcom/b/a/e/o;->a()Lcom/b/a/e/o;

    move-result-object v0

    .line 681
    invoke-virtual {v0, p0}, Lcom/b/a/e/o;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 487
    new-instance v0, Lcom/b/a/i;

    invoke-direct {v0, p0}, Lcom/b/a/i;-><init>(Landroid/view/View;)V

    .line 488
    invoke-static {v0}, Lcom/b/a/h;->a(Lcom/b/a/h/b/k;)V

    .line 489
    return-void
.end method

.method public static a(Lcom/b/a/h/b/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/h/b/k",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 456
    invoke-interface {p0}, Lcom/b/a/h/b/k;->getRequest()Lcom/b/a/h/c;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Lcom/b/a/h/c;->d()V

    .line 459
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/b/a/h/b/k;->setRequest(Lcom/b/a/h/c;)V

    .line 461
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/b/a/d/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/b/a/d/c/s",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/b/a/d/c/s;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/b/a/l;
    .locals 1

    .prologue
    .line 656
    invoke-static {}, Lcom/b/a/e/o;->a()Lcom/b/a/e/o;

    move-result-object v0

    .line 657
    invoke-virtual {v0, p0}, Lcom/b/a/e/o;->a(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/f/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    sget-boolean v0, Lcom/b/a/h;->b:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/b/a/f/b;

    invoke-direct {v0, p0}, Lcom/b/a/f/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/b/a/f/b;->a()Ljava/util/List;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private i()Lcom/b/a/d/c/c;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/b/a/h;->c:Lcom/b/a/d/c/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/b/a/d/b/a/e;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/b/a/h;->e:Lcom/b/a/d/b/a/e;

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/d/d/f/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/b/a/d/d/f/c",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/b/a/h;->i:Lcom/b/a/d/d/f/d;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/d/d/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/d/d/f/c;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/b/a/h/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/b/a/h/b/k",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/b/a/h;->h:Lcom/b/a/h/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/h/b/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/b/a/h/b/k;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 413
    iget-object v0, p0, Lcom/b/a/h;->f:Lcom/b/a/d/b/b/o;

    invoke-interface {v0, p1}, Lcom/b/a/d/b/b/o;->a(I)V

    .line 414
    iget-object v0, p0, Lcom/b/a/h;->e:Lcom/b/a/d/b/a/e;

    invoke-interface {v0, p1}, Lcom/b/a/d/b/a/e;->a(I)V

    .line 415
    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/b/a/d/c/t",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/b/a/h;->c:Lcom/b/a/d/c/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/d/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/d/c/t;)Lcom/b/a/d/c/t;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Lcom/b/a/d/c/t;->a()V

    .line 524
    :cond_0
    return-void
.end method

.method b()Lcom/b/a/d/b/f;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/b/a/h;->d:Lcom/b/a/d/b/f;

    return-object v0
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/g/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/b/a/g/b",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/b/a/h;->j:Lcom/b/a/g/c;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/g/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/b/a/g/b;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/b/a/d/d/a/e;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/b/a/h;->k:Lcom/b/a/d/d/a/e;

    return-object v0
.end method

.method d()Lcom/b/a/d/d/a/l;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/b/a/h;->m:Lcom/b/a/d/d/a/l;

    return-object v0
.end method

.method e()Lcom/b/a/d/d/e/h;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/b/a/h;->l:Lcom/b/a/d/d/e/h;

    return-object v0
.end method

.method f()Lcom/b/a/d/d/e/h;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/b/a/h;->n:Lcom/b/a/d/d/e/h;

    return-object v0
.end method

.method g()Lcom/b/a/d/a;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/b/a/h;->g:Lcom/b/a/d/a;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/b/a/j/h;->a()V

    .line 400
    iget-object v0, p0, Lcom/b/a/h;->f:Lcom/b/a/d/b/b/o;

    invoke-interface {v0}, Lcom/b/a/d/b/b/o;->a()V

    .line 401
    iget-object v0, p0, Lcom/b/a/h;->e:Lcom/b/a/d/b/a/e;

    invoke-interface {v0}, Lcom/b/a/d/b/a/e;->a()V

    .line 402
    return-void
.end method
