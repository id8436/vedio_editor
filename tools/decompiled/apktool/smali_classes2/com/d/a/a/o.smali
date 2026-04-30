.class public final enum Lcom/d/a/a/o;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/d/a/a/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/d/a/a/o;

.field public static final enum b:Lcom/d/a/a/o;

.field public static final enum c:Lcom/d/a/a/o;

.field public static final enum d:Lcom/d/a/a/o;

.field public static final enum e:Lcom/d/a/a/o;

.field public static final enum f:Lcom/d/a/a/o;

.field public static final enum g:Lcom/d/a/a/o;

.field public static final enum h:Lcom/d/a/a/o;

.field public static final enum i:Lcom/d/a/a/o;

.field public static final enum j:Lcom/d/a/a/o;

.field public static final enum k:Lcom/d/a/a/o;

.field public static final enum l:Lcom/d/a/a/o;

.field public static final enum m:Lcom/d/a/a/o;

.field private static final synthetic w:[Lcom/d/a/a/o;


# instance fields
.field final n:Ljava/lang/String;

.field final o:[C

.field final p:[B

.field final q:I

.field final r:Z

.field final s:Z

.field final t:Z

.field final u:Z

.field final v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->a:Lcom/d/a/a/o;

    .line 37
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "START_OBJECT"

    const-string/jumbo v2, "{"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    .line 43
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "END_OBJECT"

    const-string/jumbo v2, "}"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    .line 49
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "START_ARRAY"

    const-string/jumbo v2, "["

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    .line 55
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "END_ARRAY"

    const-string/jumbo v2, "]"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->e:Lcom/d/a/a/o;

    .line 61
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "FIELD_NAME"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    .line 73
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "VALUE_EMBEDDED_OBJECT"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->g:Lcom/d/a/a/o;

    .line 80
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "VALUE_STRING"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    .line 88
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "VALUE_NUMBER_INT"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->i:Lcom/d/a/a/o;

    .line 96
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "VALUE_NUMBER_FLOAT"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->j:Lcom/d/a/a/o;

    .line 102
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "VALUE_TRUE"

    const/16 v2, 0xa

    const-string/jumbo v3, "true"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->k:Lcom/d/a/a/o;

    .line 108
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "VALUE_FALSE"

    const/16 v2, 0xb

    const-string/jumbo v3, "false"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->l:Lcom/d/a/a/o;

    .line 114
    new-instance v0, Lcom/d/a/a/o;

    const-string/jumbo v1, "VALUE_NULL"

    const/16 v2, 0xc

    const-string/jumbo v3, "null"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/d/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    .line 12
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/d/a/a/o;

    const/4 v1, 0x0

    sget-object v2, Lcom/d/a/a/o;->a:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    sget-object v1, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    aput-object v1, v0, v7

    sget-object v1, Lcom/d/a/a/o;->e:Lcom/d/a/a/o;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/d/a/a/o;->g:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/d/a/a/o;->i:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/d/a/a/o;->j:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/d/a/a/o;->k:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/d/a/a/o;->l:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/d/a/a/o;->w:[Lcom/d/a/a/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    if-nez p3, :cond_5

    .line 140
    iput-object v0, p0, Lcom/d/a/a/o;->n:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/d/a/a/o;->o:[C

    .line 142
    iput-object v0, p0, Lcom/d/a/a/o;->p:[B

    .line 153
    :cond_0
    iput p4, p0, Lcom/d/a/a/o;->q:I

    .line 155
    const/16 v0, 0xa

    if-eq p4, v0, :cond_1

    const/16 v0, 0x9

    if-ne p4, v0, :cond_6

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/d/a/a/o;->u:Z

    .line 156
    const/4 v0, 0x7

    if-eq p4, v0, :cond_2

    const/16 v0, 0x8

    if-ne p4, v0, :cond_7

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/d/a/a/o;->t:Z

    .line 158
    if-eq p4, v2, :cond_3

    const/4 v0, 0x3

    if-ne p4, v0, :cond_8

    :cond_3
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/d/a/a/o;->r:Z

    .line 159
    const/4 v0, 0x2

    if-eq p4, v0, :cond_4

    const/4 v0, 0x4

    if-ne p4, v0, :cond_9

    :cond_4
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/d/a/a/o;->s:Z

    .line 161
    iget-boolean v0, p0, Lcom/d/a/a/o;->r:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/d/a/a/o;->s:Z

    if-nez v0, :cond_a

    const/4 v0, 0x5

    if-eq p4, v0, :cond_a

    const/4 v0, -0x1

    if-eq p4, v0, :cond_a

    :goto_4
    iput-boolean v2, p0, Lcom/d/a/a/o;->v:Z

    .line 164
    return-void

    .line 144
    :cond_5
    iput-object p3, p0, Lcom/d/a/a/o;->n:Ljava/lang/String;

    .line 145
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/o;->o:[C

    .line 147
    iget-object v0, p0, Lcom/d/a/a/o;->o:[C

    array-length v3, v0

    .line 148
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/d/a/a/o;->p:[B

    move v0, v1

    .line 149
    :goto_5
    if-ge v0, v3, :cond_0

    .line 150
    iget-object v4, p0, Lcom/d/a/a/o;->p:[B

    iget-object v5, p0, Lcom/d/a/a/o;->o:[C

    aget-char v5, v5, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v1

    .line 155
    goto :goto_0

    :cond_7
    move v0, v1

    .line 156
    goto :goto_1

    :cond_8
    move v0, v1

    .line 158
    goto :goto_2

    :cond_9
    move v0, v1

    .line 159
    goto :goto_3

    :cond_a
    move v2, v1

    .line 161
    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/d/a/a/o;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/d/a/a/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/o;

    return-object v0
.end method

.method public static values()[Lcom/d/a/a/o;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/d/a/a/o;->w:[Lcom/d/a/a/o;

    invoke-virtual {v0}, [Lcom/d/a/a/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/d/a/a/o;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/d/a/a/o;->q:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/d/a/a/o;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[C
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/d/a/a/o;->o:[C

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/d/a/a/o;->r:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/d/a/a/o;->s:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/d/a/a/o;->v:Z

    return v0
.end method
