.class public Lcom/d/a/a/e/c;
.super Lcom/d/a/a/e/g;
.source "DefaultIndenter.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lcom/d/a/a/e/c;


# instance fields
.field private final d:[C

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    :try_start_0
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_0
    sput-object v0, Lcom/d/a/a/e/c;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/d/a/a/e/c;

    const-string/jumbo v1, "  "

    sget-object v2, Lcom/d/a/a/e/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/d/a/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/d/a/a/e/c;->b:Lcom/d/a/a/e/c;

    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string/jumbo v0, "\n"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "  "

    sget-object v1, Lcom/d/a/a/e/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/d/a/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/d/a/a/e/g;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/d/a/a/e/c;->e:I

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/d/a/a/e/c;->d:[C

    move v0, v1

    move v2, v1

    .line 57
    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/d/a/a/e/c;->d:[C

    invoke-virtual {p1, v1, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iput-object p2, p0, Lcom/d/a/a/e/c;->f:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public a(Lcom/d/a/a/g;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lcom/d/a/a/e/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/d/a/a/g;->c(Ljava/lang/String;)V

    .line 88
    if-lez p2, :cond_1

    .line 89
    iget v0, p0, Lcom/d/a/a/e/c;->e:I

    mul-int/2addr v0, p2

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/d/a/a/e/c;->d:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/d/a/a/e/c;->d:[C

    iget-object v2, p0, Lcom/d/a/a/e/c;->d:[C

    array-length v2, v2

    invoke-virtual {p1, v1, v3, v2}, Lcom/d/a/a/g;->a([CII)V

    .line 92
    iget-object v1, p0, Lcom/d/a/a/e/c;->d:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/d/a/a/e/c;->d:[C

    invoke-virtual {p1, v1, v3, v0}, Lcom/d/a/a/g;->a([CII)V

    .line 96
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
