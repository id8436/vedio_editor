.class public Lcom/l/b/a/h;
.super Lcom/l/b/a/j;
.source "QEncoderStream.java"


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    sput-object v0, Lcom/l/b/a/h;->b:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "=_?"

    sput-object v0, Lcom/l/b/a/h;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/l/b/a/j;-><init>(Ljava/io/OutputStream;I)V

    .line 59
    if-eqz p2, :cond_0

    sget-object v0, Lcom/l/b/a/h;->b:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/l/b/a/h;->a:Ljava/lang/String;

    .line 60
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/l/b/a/h;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a([BZ)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 82
    .line 83
    if-eqz p1, :cond_1

    sget-object v0, Lcom/l/b/a/h;->b:Ljava/lang/String;

    :goto_0
    move v2, v1

    .line 84
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 85
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 86
    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 88
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 84
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_1
    sget-object v0, Lcom/l/b/a/h;->c:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    :cond_3
    return v2
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x20

    const/4 v2, 0x0

    .line 68
    and-int/lit16 v0, p1, 0xff

    .line 69
    if-ne v0, v1, :cond_0

    .line 70
    const/16 v0, 0x5f

    invoke-virtual {p0, v0, v2}, Lcom/l/b/a/h;->a(IZ)V

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    if-lt v0, v1, :cond_1

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/l/b/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 73
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/l/b/a/h;->a(IZ)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/l/b/a/h;->a(IZ)V

    goto :goto_0
.end method
