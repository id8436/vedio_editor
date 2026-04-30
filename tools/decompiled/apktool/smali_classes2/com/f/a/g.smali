.class public final Lcom/f/a/g;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/f/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/f/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1

    .prologue
    .line 675
    iput-object p1, p0, Lcom/f/a/g;->a:Lcom/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/f/a/g;->b:Ljava/lang/String;

    .line 677
    iput-wide p3, p0, Lcom/f/a/g;->c:J

    .line 678
    iput-object p5, p0, Lcom/f/a/g;->d:[Ljava/io/InputStream;

    .line 679
    iput-object p6, p0, Lcom/f/a/g;->e:[J

    .line 680
    return-void
.end method

.method synthetic constructor <init>(Lcom/f/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/f/a/b;)V
    .locals 1

    .prologue
    .line 669
    invoke-direct/range {p0 .. p6}, Lcom/f/a/g;-><init>(Lcom/f/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/f/a/g;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lcom/f/a/g;->a(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/f/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 707
    iget-object v1, p0, Lcom/f/a/g;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 708
    invoke-static {v3}, Lcom/f/a/j;->a(Ljava/io/Closeable;)V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    return-void
.end method
