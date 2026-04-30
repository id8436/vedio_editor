.class public Lcom/facebook/g/a;
.super Ljava/lang/Object;
.source "DefaultImageFormatChecker.java"

# interfaces
.implements Lcom/facebook/g/d;


# static fields
.field private static final b:[B

.field private static final c:I

.field private static final d:[B

.field private static final e:I

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:I


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/g/a;->b:[B

    .line 125
    sget-object v0, Lcom/facebook/g/a;->b:[B

    array-length v0, v0

    sput v0, Lcom/facebook/g/a;->c:I

    .line 147
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/g/a;->d:[B

    .line 151
    sget-object v0, Lcom/facebook/g/a;->d:[B

    array-length v0, v0

    sput v0, Lcom/facebook/g/a;->e:I

    .line 171
    const-string/jumbo v0, "GIF87a"

    invoke-static {v0}, Lcom/facebook/g/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/g/a;->f:[B

    .line 172
    const-string/jumbo v0, "GIF89a"

    invoke-static {v0}, Lcom/facebook/g/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/g/a;->g:[B

    .line 194
    const-string/jumbo v0, "BM"

    invoke-static {v0}, Lcom/facebook/g/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/g/a;->h:[B

    .line 195
    sget-object v0, Lcom/facebook/g/a;->h:[B

    array-length v0, v0

    sput v0, Lcom/facebook/g/a;->i:I

    return-void

    .line 124
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 147
    :array_1
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v3, [I

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/facebook/g/a;->c:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/facebook/g/a;->e:I

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/facebook/g/a;->i:I

    aput v2, v0, v1

    invoke-static {v0}, Lcom/facebook/d/d/f;->a([I)I

    move-result v0

    iput v0, p0, Lcom/facebook/g/a;->a:I

    return-void
.end method

.method private static b([BI)Lcom/facebook/g/c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v1, p1}, Lcom/facebook/d/n/d;->b([BII)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Z)V

    .line 99
    invoke-static {p0, v1}, Lcom/facebook/d/n/d;->b([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/facebook/g/b;->e:Lcom/facebook/g/c;

    .line 117
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/d/n/d;->c([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/facebook/g/b;->f:Lcom/facebook/g/c;

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p0, v1, p1}, Lcom/facebook/d/n/d;->a([BII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    invoke-static {p0, v1}, Lcom/facebook/d/n/d;->a([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/facebook/g/b;->i:Lcom/facebook/g/c;

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {p0, v1}, Lcom/facebook/d/n/d;->d([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lcom/facebook/g/b;->h:Lcom/facebook/g/c;

    goto :goto_0

    .line 114
    :cond_3
    sget-object v0, Lcom/facebook/g/b;->g:Lcom/facebook/g/c;

    goto :goto_0

    .line 117
    :cond_4
    sget-object v0, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    goto :goto_0
.end method

.method private static c([BI)Z
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/facebook/g/a;->b:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/facebook/g/a;->b:[B

    .line 140
    invoke-static {p0, v0}, Lcom/facebook/g/f;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d([BI)Z
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/facebook/g/a;->d:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/facebook/g/a;->d:[B

    .line 164
    invoke-static {p0, v0}, Lcom/facebook/g/f;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e([BI)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 184
    const/4 v1, 0x6

    if-ge p1, v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/facebook/g/a;->f:[B

    invoke-static {p0, v1}, Lcom/facebook/g/f;->a([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/facebook/g/a;->g:[B

    .line 188
    invoke-static {p0, v1}, Lcom/facebook/g/f;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static f([BI)Z
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/facebook/g/a;->h:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/facebook/g/a;->h:[B

    invoke-static {p0, v0}, Lcom/facebook/g/f;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/facebook/g/a;->a:I

    return v0
.end method

.method public final a([BI)Lcom/facebook/g/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/facebook/d/n/d;->b([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1, p2}, Lcom/facebook/g/a;->b([BI)Lcom/facebook/g/c;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/g/a;->c([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/facebook/g/b;->a:Lcom/facebook/g/c;

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/g/a;->d([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    sget-object v0, Lcom/facebook/g/b;->b:Lcom/facebook/g/c;

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p1, p2}, Lcom/facebook/g/a;->e([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    sget-object v0, Lcom/facebook/g/b;->c:Lcom/facebook/g/c;

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {p1, p2}, Lcom/facebook/g/a;->f([BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    sget-object v0, Lcom/facebook/g/b;->d:Lcom/facebook/g/c;

    goto :goto_0

    .line 77
    :cond_4
    sget-object v0, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    goto :goto_0
.end method
