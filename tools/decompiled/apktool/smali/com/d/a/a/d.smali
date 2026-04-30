.class public Lcom/d/a/a/d;
.super Ljava/lang/Object;
.source "JsonFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final a:I

.field protected static final b:I

.field protected static final c:I

.field protected static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/d/a/a/e/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final o:Lcom/d/a/a/r;


# instance fields
.field protected final transient e:Lcom/d/a/a/d/c;

.field protected final transient f:Lcom/d/a/a/d/a;

.field protected g:Lcom/d/a/a/p;

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Lcom/d/a/a/b/b;

.field protected l:Lcom/d/a/a/b/d;

.field protected m:Lcom/d/a/a/b/i;

.field protected n:Lcom/d/a/a/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/d/a/a/e;->a()I

    move-result v0

    sput v0, Lcom/d/a/a/d;->a:I

    .line 166
    invoke-static {}, Lcom/d/a/a/l;->a()I

    move-result v0

    sput v0, Lcom/d/a/a/d;->b:I

    .line 172
    invoke-static {}, Lcom/d/a/a/h;->a()I

    move-result v0

    sput v0, Lcom/d/a/a/d;->c:I

    .line 174
    sget-object v0, Lcom/d/a/a/e/d;->a:Lcom/d/a/a/b/j;

    sput-object v0, Lcom/d/a/a/d;->o:Lcom/d/a/a/r;

    .line 187
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/d/a/a/d;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/d/a/a/d;-><init>(Lcom/d/a/a/p;)V

    return-void
.end method

.method public constructor <init>(Lcom/d/a/a/p;)V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-static {}, Lcom/d/a/a/d/c;->a()Lcom/d/a/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/d;->e:Lcom/d/a/a/d/c;

    .line 206
    invoke-static {}, Lcom/d/a/a/d/a;->a()Lcom/d/a/a/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/d;->f:Lcom/d/a/a/d/a;

    .line 226
    sget v0, Lcom/d/a/a/d;->a:I

    iput v0, p0, Lcom/d/a/a/d;->h:I

    .line 231
    sget v0, Lcom/d/a/a/d;->b:I

    iput v0, p0, Lcom/d/a/a/d;->i:I

    .line 236
    sget v0, Lcom/d/a/a/d;->c:I

    iput v0, p0, Lcom/d/a/a/d;->j:I

    .line 264
    sget-object v0, Lcom/d/a/a/d;->o:Lcom/d/a/a/r;

    iput-object v0, p0, Lcom/d/a/a/d;->n:Lcom/d/a/a/r;

    .line 284
    iput-object p1, p0, Lcom/d/a/a/d;->g:Lcom/d/a/a/p;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Z)Lcom/d/a/a/b/c;
    .locals 2

    .prologue
    .line 1450
    new-instance v0, Lcom/d/a/a/b/c;

    invoke-virtual {p0}, Lcom/d/a/a/d;->b()Lcom/d/a/a/e/a;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/d/a/a/b/c;-><init>(Lcom/d/a/a/e/a;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public a(Lcom/d/a/a/h;)Lcom/d/a/a/d;
    .locals 2

    .prologue
    .line 632
    iget v0, p0, Lcom/d/a/a/d;->j:I

    invoke-virtual {p1}, Lcom/d/a/a/h;->c()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/d;->j:I

    .line 633
    return-object p0
.end method

.method public final a(Lcom/d/a/a/h;Z)Lcom/d/a/a/d;
    .locals 1

    .prologue
    .line 623
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/d/a/a/d;->a(Lcom/d/a/a/h;)Lcom/d/a/a/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/d/a/a/d;->b(Lcom/d/a/a/h;)Lcom/d/a/a/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)Lcom/d/a/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1099
    sget-object v0, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->a(Ljava/io/OutputStream;Lcom/d/a/a/c;)Lcom/d/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/OutputStream;Lcom/d/a/a/b/c;)Lcom/d/a/a/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1331
    new-instance v0, Lcom/d/a/a/c/g;

    iget v1, p0, Lcom/d/a/a/d;->j:I

    iget-object v2, p0, Lcom/d/a/a/d;->g:Lcom/d/a/a/p;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/d/a/a/c/g;-><init>(Lcom/d/a/a/b/c;ILcom/d/a/a/p;Ljava/io/OutputStream;)V

    .line 1333
    iget-object v1, p0, Lcom/d/a/a/d;->k:Lcom/d/a/a/b/b;

    if-eqz v1, :cond_0

    .line 1334
    iget-object v1, p0, Lcom/d/a/a/d;->k:Lcom/d/a/a/b/b;

    invoke-virtual {v0, v1}, Lcom/d/a/a/c/g;->a(Lcom/d/a/a/b/b;)Lcom/d/a/a/g;

    .line 1336
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/d;->n:Lcom/d/a/a/r;

    .line 1337
    sget-object v2, Lcom/d/a/a/d;->o:Lcom/d/a/a/r;

    if-eq v1, v2, :cond_1

    .line 1338
    invoke-virtual {v0, v1}, Lcom/d/a/a/c/g;->a(Lcom/d/a/a/r;)Lcom/d/a/a/g;

    .line 1340
    :cond_1
    return-object v0
.end method

.method public a(Ljava/io/OutputStream;Lcom/d/a/a/c;)Lcom/d/a/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1081
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->a(Ljava/lang/Object;Z)Lcom/d/a/a/b/c;

    move-result-object v0

    .line 1082
    invoke-virtual {v0, p2}, Lcom/d/a/a/b/c;->a(Lcom/d/a/a/c;)V

    .line 1083
    sget-object v1, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    if-ne p2, v1, :cond_0

    .line 1084
    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->b(Ljava/io/OutputStream;Lcom/d/a/a/b/c;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/d;->a(Ljava/io/OutputStream;Lcom/d/a/a/b/c;)Lcom/d/a/a/g;

    move-result-object v0

    .line 1087
    :goto_0
    return-object v0

    .line 1086
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/d/a/a/d;->a(Ljava/io/OutputStream;Lcom/d/a/a/c;Lcom/d/a/a/b/c;)Ljava/io/Writer;

    move-result-object v1

    .line 1087
    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/d;->b(Ljava/io/Writer;Lcom/d/a/a/b/c;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/d;->a(Ljava/io/Writer;Lcom/d/a/a/b/c;)Lcom/d/a/a/g;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/io/Writer;)Lcom/d/a/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->a(Ljava/lang/Object;Z)Lcom/d/a/a/b/c;

    move-result-object v0

    .line 1119
    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->b(Ljava/io/Writer;Lcom/d/a/a/b/c;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/d;->a(Ljava/io/Writer;Lcom/d/a/a/b/c;)Lcom/d/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Writer;Lcom/d/a/a/b/c;)Lcom/d/a/a/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1308
    new-instance v0, Lcom/d/a/a/c/i;

    iget v1, p0, Lcom/d/a/a/d;->j:I

    iget-object v2, p0, Lcom/d/a/a/d;->g:Lcom/d/a/a/p;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/d/a/a/c/i;-><init>(Lcom/d/a/a/b/c;ILcom/d/a/a/p;Ljava/io/Writer;)V

    .line 1310
    iget-object v1, p0, Lcom/d/a/a/d;->k:Lcom/d/a/a/b/b;

    if-eqz v1, :cond_0

    .line 1311
    iget-object v1, p0, Lcom/d/a/a/d;->k:Lcom/d/a/a/b/b;

    invoke-virtual {v0, v1}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/b/b;)Lcom/d/a/a/g;

    .line 1313
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/d;->n:Lcom/d/a/a/r;

    .line 1314
    sget-object v2, Lcom/d/a/a/d;->o:Lcom/d/a/a/r;

    if-eq v1, v2, :cond_1

    .line 1315
    invoke-virtual {v0, v1}, Lcom/d/a/a/c/i;->a(Lcom/d/a/a/r;)Lcom/d/a/a/g;

    .line 1317
    :cond_1
    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/d/a/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 806
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->a(Ljava/lang/Object;Z)Lcom/d/a/a/b/c;

    move-result-object v0

    .line 807
    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->b(Ljava/io/InputStream;Lcom/d/a/a/b/c;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/d;->a(Ljava/io/InputStream;Lcom/d/a/a/b/c;)Lcom/d/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/InputStream;Lcom/d/a/a/b/c;)Lcom/d/a/a/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1238
    new-instance v0, Lcom/d/a/a/c/a;

    invoke-direct {v0, p2, p1}, Lcom/d/a/a/c/a;-><init>(Lcom/d/a/a/b/c;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/d/a/a/d;->i:I

    iget-object v2, p0, Lcom/d/a/a/d;->g:Lcom/d/a/a/p;

    iget-object v3, p0, Lcom/d/a/a/d;->f:Lcom/d/a/a/d/a;

    iget-object v4, p0, Lcom/d/a/a/d;->e:Lcom/d/a/a/d/c;

    iget v5, p0, Lcom/d/a/a/d;->h:I

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/a;->a(ILcom/d/a/a/p;Lcom/d/a/a/d/a;Lcom/d/a/a/d/c;I)Lcom/d/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;)Lcom/d/a/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 826
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->a(Ljava/lang/Object;Z)Lcom/d/a/a/b/c;

    move-result-object v0

    .line 827
    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->b(Ljava/io/Reader;Lcom/d/a/a/b/c;)Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/d;->a(Ljava/io/Reader;Lcom/d/a/a/b/c;)Lcom/d/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Reader;Lcom/d/a/a/b/c;)Lcom/d/a/a/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    new-instance v0, Lcom/d/a/a/c/f;

    iget v2, p0, Lcom/d/a/a/d;->i:I

    iget-object v4, p0, Lcom/d/a/a/d;->g:Lcom/d/a/a/p;

    iget-object v1, p0, Lcom/d/a/a/d;->e:Lcom/d/a/a/d/c;

    iget v3, p0, Lcom/d/a/a/d;->h:I

    .line 1256
    invoke-virtual {v1, v3}, Lcom/d/a/a/d/c;->b(I)Lcom/d/a/a/d/c;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/f;-><init>(Lcom/d/a/a/b/c;ILjava/io/Reader;Lcom/d/a/a/p;Lcom/d/a/a/d/c;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/d/a/a/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 876
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 878
    iget-object v0, p0, Lcom/d/a/a/d;->l:Lcom/d/a/a/b/d;

    if-nez v0, :cond_0

    const v0, 0x8000

    if-gt v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/d/a/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 881
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/d/a/a/d;->a(Ljava/io/Reader;)Lcom/d/a/a/k;

    move-result-object v0

    .line 886
    :goto_0
    return-object v0

    .line 883
    :cond_1
    invoke-virtual {p0, p1, v5}, Lcom/d/a/a/d;->a(Ljava/lang/Object;Z)Lcom/d/a/a/b/c;

    move-result-object v4

    .line 884
    invoke-virtual {v4, v3}, Lcom/d/a/a/b/c;->a(I)[C

    move-result-object v1

    .line 885
    invoke-virtual {p1, v2, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    move-object v0, p0

    .line 886
    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/d;->a([CIILcom/d/a/a/b/c;Z)Lcom/d/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public a([B)Lcom/d/a/a/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 837
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/d;->a(Ljava/lang/Object;Z)Lcom/d/a/a/b/c;

    move-result-object v0

    .line 838
    iget-object v1, p0, Lcom/d/a/a/d;->l:Lcom/d/a/a/b/d;

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/d/a/a/d;->l:Lcom/d/a/a/b/d;

    array-length v2, p1

    invoke-virtual {v1, v0, p1, v3, v2}, Lcom/d/a/a/b/d;->a(Lcom/d/a/a/b/c;[BII)Ljava/io/InputStream;

    move-result-object v1

    .line 840
    if-eqz v1, :cond_0

    .line 841
    invoke-virtual {p0, v1, v0}, Lcom/d/a/a/d;->a(Ljava/io/InputStream;Lcom/d/a/a/b/c;)Lcom/d/a/a/k;

    move-result-object v0

    .line 844
    :goto_0
    return-object v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/d/a/a/d;->a([BIILcom/d/a/a/b/c;)Lcom/d/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method protected a([BIILcom/d/a/a/b/c;)Lcom/d/a/a/k;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1285
    new-instance v0, Lcom/d/a/a/c/a;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/d/a/a/c/a;-><init>(Lcom/d/a/a/b/c;[BII)V

    iget v1, p0, Lcom/d/a/a/d;->i:I

    iget-object v2, p0, Lcom/d/a/a/d;->g:Lcom/d/a/a/p;

    iget-object v3, p0, Lcom/d/a/a/d;->f:Lcom/d/a/a/d/a;

    iget-object v4, p0, Lcom/d/a/a/d;->e:Lcom/d/a/a/d/c;

    iget v5, p0, Lcom/d/a/a/d;->h:I

    invoke-virtual/range {v0 .. v5}, Lcom/d/a/a/c/a;->a(ILcom/d/a/a/p;Lcom/d/a/a/d/a;Lcom/d/a/a/d/c;I)Lcom/d/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected a([CIILcom/d/a/a/b/c;Z)Lcom/d/a/a/k;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1267
    new-instance v0, Lcom/d/a/a/c/f;

    iget v2, p0, Lcom/d/a/a/d;->i:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/d/a/a/d;->g:Lcom/d/a/a/p;

    iget-object v1, p0, Lcom/d/a/a/d;->e:Lcom/d/a/a/d/c;

    iget v5, p0, Lcom/d/a/a/d;->h:I

    .line 1268
    invoke-virtual {v1, v5}, Lcom/d/a/a/d/c;->b(I)Lcom/d/a/a/d/c;

    move-result-object v5

    add-int v8, p2, p3

    move-object v1, p4

    move-object v6, p1

    move v7, p2

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/d/a/a/c/f;-><init>(Lcom/d/a/a/b/c;ILjava/io/Reader;Lcom/d/a/a/p;Lcom/d/a/a/d/c;[CIIZ)V

    return-object v0
.end method

.method protected a(Ljava/io/OutputStream;Lcom/d/a/a/c;Lcom/d/a/a/b/c;)Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1346
    sget-object v0, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    if-ne p2, v0, :cond_0

    .line 1347
    new-instance v0, Lcom/d/a/a/b/l;

    invoke-direct {v0, p3, p1}, Lcom/d/a/a/b/l;-><init>(Lcom/d/a/a/b/c;Ljava/io/OutputStream;)V

    .line 1350
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Lcom/d/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/d/a/a/e;)Z
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lcom/d/a/a/d;->h:I

    invoke-virtual {p1}, Lcom/d/a/a/e;->c()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/d/a/a/h;)Lcom/d/a/a/d;
    .locals 2

    .prologue
    .line 641
    iget v0, p0, Lcom/d/a/a/d;->j:I

    invoke-virtual {p1}, Lcom/d/a/a/h;->c()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/d;->j:I

    .line 642
    return-object p0
.end method

.method public b()Lcom/d/a/a/e/a;
    .locals 3

    .prologue
    .line 1431
    sget-object v0, Lcom/d/a/a/e;->d:Lcom/d/a/a/e;

    invoke-virtual {p0, v0}, Lcom/d/a/a/d;->a(Lcom/d/a/a/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1432
    sget-object v0, Lcom/d/a/a/d;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 1433
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1435
    :goto_0
    if-nez v0, :cond_0

    .line 1436
    new-instance v0, Lcom/d/a/a/e/a;

    invoke-direct {v0}, Lcom/d/a/a/e/a;-><init>()V

    .line 1437
    sget-object v1, Lcom/d/a/a/d;->d:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1442
    :cond_0
    :goto_1
    return-object v0

    .line 1433
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/e/a;

    goto :goto_0

    .line 1440
    :cond_2
    new-instance v0, Lcom/d/a/a/e/a;

    invoke-direct {v0}, Lcom/d/a/a/e/a;-><init>()V

    goto :goto_1
.end method

.method public b(Ljava/io/OutputStream;Lcom/d/a/a/c;)Lcom/d/a/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1181
    invoke-virtual {p0, p1, p2}, Lcom/d/a/a/d;->a(Ljava/io/OutputStream;Lcom/d/a/a/c;)Lcom/d/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/Writer;)Lcom/d/a/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lcom/d/a/a/d;->a(Ljava/io/Writer;)Lcom/d/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Lcom/d/a/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 991
    invoke-virtual {p0, p1}, Lcom/d/a/a/d;->a(Ljava/io/InputStream;)Lcom/d/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/Reader;)Lcom/d/a/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1010
    invoke-virtual {p0, p1}, Lcom/d/a/a/d;->a(Ljava/io/Reader;)Lcom/d/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/d/a/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lcom/d/a/a/d;->a(Ljava/lang/String;)Lcom/d/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/io/InputStream;Lcom/d/a/a/b/c;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/d/a/a/d;->l:Lcom/d/a/a/b/d;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/d/a/a/d;->l:Lcom/d/a/a/b/d;

    invoke-virtual {v0, p2, p1}, Lcom/d/a/a/b/d;->a(Lcom/d/a/a/b/c;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 1365
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1369
    :cond_0
    return-object p1
.end method

.method protected final b(Ljava/io/OutputStream;Lcom/d/a/a/b/c;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/d/a/a/d;->m:Lcom/d/a/a/b/i;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/d/a/a/d;->m:Lcom/d/a/a/b/i;

    invoke-virtual {v0, p2, p1}, Lcom/d/a/a/b/i;->a(Lcom/d/a/a/b/c;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1391
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1395
    :cond_0
    return-object p1
.end method

.method protected final b(Ljava/io/Reader;Lcom/d/a/a/b/c;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/d/a/a/d;->l:Lcom/d/a/a/b/d;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/d/a/a/d;->l:Lcom/d/a/a/b/d;

    invoke-virtual {v0, p2, p1}, Lcom/d/a/a/b/d;->a(Lcom/d/a/a/b/c;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1382
    :cond_0
    return-object p1
.end method

.method protected final b(Ljava/io/Writer;Lcom/d/a/a/b/c;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/d/a/a/d;->m:Lcom/d/a/a/b/i;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/d/a/a/d;->m:Lcom/d/a/a/b/i;

    invoke-virtual {v0, p2, p1}, Lcom/d/a/a/b/i;->a(Lcom/d/a/a/b/c;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    .line 1404
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1408
    :cond_0
    return-object p1
.end method
