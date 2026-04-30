.class final Lf/at;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ld/ai;

.field private d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Ld/aj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ld/ay;

.field private g:Ld/an;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final h:Z

.field private i:Ld/ap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Ld/ae;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Ld/az;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lf/at;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ld/ai;Ljava/lang/String;Ld/ag;Ld/an;ZZZ)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ld/ag;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ld/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lf/at;->b:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lf/at;->c:Ld/ai;

    .line 54
    iput-object p3, p0, Lf/at;->d:Ljava/lang/String;

    .line 55
    new-instance v0, Ld/ay;

    invoke-direct {v0}, Ld/ay;-><init>()V

    iput-object v0, p0, Lf/at;->f:Ld/ay;

    .line 56
    iput-object p5, p0, Lf/at;->g:Ld/an;

    .line 57
    iput-boolean p6, p0, Lf/at;->h:Z

    .line 59
    if-eqz p4, :cond_0

    .line 60
    iget-object v0, p0, Lf/at;->f:Ld/ay;

    invoke-virtual {v0, p4}, Ld/ay;->a(Ld/ag;)Ld/ay;

    .line 63
    :cond_0
    if-eqz p7, :cond_2

    .line 65
    new-instance v0, Ld/ae;

    invoke-direct {v0}, Ld/ae;-><init>()V

    iput-object v0, p0, Lf/at;->j:Ld/ae;

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    if-eqz p8, :cond_1

    .line 68
    new-instance v0, Ld/ap;

    invoke-direct {v0}, Ld/ap;-><init>()V

    iput-object v0, p0, Lf/at;->i:Ld/ap;

    .line 69
    iget-object v0, p0, Lf/at;->i:Ld/ap;

    sget-object v1, Ld/ao;->e:Ld/an;

    invoke-virtual {v0, v1}, Ld/ap;->a(Ld/an;)Ld/ap;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 101
    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    const-string/jumbo v4, " \"<>^`{}|\\?#"

    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    if-nez p1, :cond_2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    .line 105
    :cond_0
    new-instance v3, Le/f;

    invoke-direct {v3}, Le/f;-><init>()V

    .line 106
    invoke-virtual {v3, p0, v1, v0}, Le/f;->a(Ljava/lang/String;II)Le/f;

    .line 107
    invoke-static {v3, p0, v0, v2, p1}, Lf/at;->a(Le/f;Ljava/lang/String;IIZ)V

    .line 108
    invoke-virtual {v3}, Le/f;->p()Ljava/lang/String;

    move-result-object p0

    .line 113
    :cond_1
    return-object p0

    .line 99
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private static a(Le/f;Ljava/lang/String;IIZ)V
    .locals 6

    .prologue
    const/16 v5, 0x25

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    if-ge p2, p3, :cond_5

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 122
    if-eqz p4, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 120
    :cond_0
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 125
    :cond_1
    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string/jumbo v2, " \"<>^`{}|\\?#"

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez p4, :cond_4

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v5, :cond_4

    .line 129
    :cond_2
    if-nez v0, :cond_3

    .line 130
    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    .line 132
    :cond_3
    invoke-virtual {v0, v1}, Le/f;->a(I)Le/f;

    .line 133
    :goto_2
    invoke-virtual {v0}, Le/f;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {v0}, Le/f;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 135
    invoke-virtual {p0, v5}, Le/f;->b(I)Le/f;

    .line 136
    sget-object v3, Lf/at;->a:[C

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Le/f;->b(I)Le/f;

    .line 137
    sget-object v3, Lf/at;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Le/f;->b(I)Le/f;

    goto :goto_2

    .line 141
    :cond_4
    invoke-virtual {p0, v1}, Le/f;->a(I)Le/f;

    goto :goto_1

    .line 144
    :cond_5
    return-void
.end method


# virtual methods
.method a()Ld/ax;
    .locals 5

    .prologue
    .line 191
    iget-object v0, p0, Lf/at;->e:Ld/aj;

    .line 192
    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0}, Ld/aj;->c()Ld/ai;

    move-result-object v0

    .line 204
    :cond_0
    iget-object v1, p0, Lf/at;->k:Ld/az;

    .line 205
    if-nez v1, :cond_1

    .line 207
    iget-object v2, p0, Lf/at;->j:Ld/ae;

    if-eqz v2, :cond_4

    .line 208
    iget-object v1, p0, Lf/at;->j:Ld/ae;

    invoke-virtual {v1}, Ld/ae;->a()Ld/ad;

    move-result-object v1

    .line 217
    :cond_1
    :goto_0
    iget-object v3, p0, Lf/at;->g:Ld/an;

    .line 218
    if-eqz v3, :cond_2

    .line 219
    if-eqz v1, :cond_6

    .line 220
    new-instance v2, Lf/au;

    invoke-direct {v2, v1, v3}, Lf/au;-><init>(Ld/az;Ld/an;)V

    move-object v1, v2

    .line 226
    :cond_2
    :goto_1
    iget-object v2, p0, Lf/at;->f:Ld/ay;

    .line 227
    invoke-virtual {v2, v0}, Ld/ay;->a(Ld/ai;)Ld/ay;

    move-result-object v0

    iget-object v2, p0, Lf/at;->b:Ljava/lang/String;

    .line 228
    invoke-virtual {v0, v2, v1}, Ld/ay;->a(Ljava/lang/String;Ld/az;)Ld/ay;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 226
    return-object v0

    .line 197
    :cond_3
    iget-object v0, p0, Lf/at;->c:Ld/ai;

    iget-object v1, p0, Lf/at;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/ai;->c(Ljava/lang/String;)Ld/ai;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/at;->c:Ld/ai;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/at;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_4
    iget-object v2, p0, Lf/at;->i:Ld/ap;

    if-eqz v2, :cond_5

    .line 210
    iget-object v1, p0, Lf/at;->i:Ld/ap;

    invoke-virtual {v1}, Ld/ap;->a()Ld/ao;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_5
    iget-boolean v2, p0, Lf/at;->h:Z

    if-eqz v2, :cond_1

    .line 213
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {v1, v2}, Ld/az;->create(Ld/an;[B)Ld/az;

    move-result-object v1

    goto :goto_0

    .line 222
    :cond_6
    iget-object v2, p0, Lf/at;->f:Ld/ay;

    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v3}, Ld/an;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ld/ay;->b(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    goto :goto_1
.end method

.method a(Ld/ag;Ld/az;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lf/at;->i:Ld/ap;

    invoke-virtual {v0, p1, p2}, Ld/ap;->a(Ld/ag;Ld/az;)Ld/ap;

    .line 178
    return-void
.end method

.method a(Ld/aq;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lf/at;->i:Ld/ap;

    invoke-virtual {v0, p1}, Ld/ap;->a(Ld/aq;)Ld/ap;

    .line 183
    return-void
.end method

.method a(Ld/az;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lf/at;->k:Ld/az;

    .line 187
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/at;->d:Ljava/lang/String;

    .line 75
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p2}, Ld/an;->a(Ljava/lang/String;)Ld/an;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object v0, p0, Lf/at;->g:Ld/an;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lf/at;->f:Ld/ay;

    invoke-virtual {v0, p1, p2}, Ld/ay;->b(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lf/at;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lf/at;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lf/at;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/at;->d:Ljava/lang/String;

    .line 95
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 147
    iget-object v0, p0, Lf/at;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lf/at;->c:Ld/ai;

    iget-object v1, p0, Lf/at;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/ai;->d(Ljava/lang/String;)Ld/aj;

    move-result-object v0

    iput-object v0, p0, Lf/at;->e:Ld/aj;

    .line 150
    iget-object v0, p0, Lf/at;->e:Ld/aj;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/at;->c:Ld/ai;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/at;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lf/at;->d:Ljava/lang/String;

    .line 157
    :cond_1
    if-eqz p3, :cond_2

    .line 159
    iget-object v0, p0, Lf/at;->e:Ld/aj;

    invoke-virtual {v0, p1, p2}, Ld/aj;->b(Ljava/lang/String;Ljava/lang/String;)Ld/aj;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lf/at;->e:Ld/aj;

    invoke-virtual {v0, p1, p2}, Ld/aj;->a(Ljava/lang/String;Ljava/lang/String;)Ld/aj;

    goto :goto_0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 168
    if-eqz p3, :cond_0

    .line 169
    iget-object v0, p0, Lf/at;->j:Ld/ae;

    invoke-virtual {v0, p1, p2}, Ld/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lf/at;->j:Ld/ae;

    invoke-virtual {v0, p1, p2}, Ld/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ae;

    goto :goto_0
.end method
