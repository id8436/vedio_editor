.class public final enum Lcom/d/a/a/l;
.super Ljava/lang/Enum;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/d/a/a/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/d/a/a/l;

.field public static final enum b:Lcom/d/a/a/l;

.field public static final enum c:Lcom/d/a/a/l;

.field public static final enum d:Lcom/d/a/a/l;

.field public static final enum e:Lcom/d/a/a/l;

.field public static final enum f:Lcom/d/a/a/l;

.field public static final enum g:Lcom/d/a/a/l;

.field public static final enum h:Lcom/d/a/a/l;

.field public static final enum i:Lcom/d/a/a/l;

.field public static final enum j:Lcom/d/a/a/l;

.field public static final enum k:Lcom/d/a/a/l;

.field private static final synthetic n:[Lcom/d/a/a/l;


# instance fields
.field private final l:Z

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->a:Lcom/d/a/a/l;

    .line 75
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->b:Lcom/d/a/a/l;

    .line 89
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "ALLOW_YAML_COMMENTS"

    invoke-direct {v0, v1, v5, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->c:Lcom/d/a/a/l;

    .line 100
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v6, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->d:Lcom/d/a/a/l;

    .line 113
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v7, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->e:Lcom/d/a/a/l;

    .line 126
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->f:Lcom/d/a/a/l;

    .line 137
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->g:Lcom/d/a/a/l;

    .line 149
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->h:Lcom/d/a/a/l;

    .line 169
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "ALLOW_NON_NUMERIC_NUMBERS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    .line 187
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "STRICT_DUPLICATE_DETECTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->j:Lcom/d/a/a/l;

    .line 211
    new-instance v0, Lcom/d/a/a/l;

    const-string/jumbo v1, "IGNORE_UNDEFINED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/l;->k:Lcom/d/a/a/l;

    .line 43
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/d/a/a/l;

    sget-object v1, Lcom/d/a/a/l;->a:Lcom/d/a/a/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/d/a/a/l;->b:Lcom/d/a/a/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/d/a/a/l;->c:Lcom/d/a/a/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/d/a/a/l;->d:Lcom/d/a/a/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/d/a/a/l;->e:Lcom/d/a/a/l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/d/a/a/l;->f:Lcom/d/a/a/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/d/a/a/l;->g:Lcom/d/a/a/l;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/d/a/a/l;->h:Lcom/d/a/a/l;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/d/a/a/l;->i:Lcom/d/a/a/l;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/d/a/a/l;->j:Lcom/d/a/a/l;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/d/a/a/l;->k:Lcom/d/a/a/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/d/a/a/l;->n:[Lcom/d/a/a/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/d/a/a/l;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/l;->m:I

    .line 238
    iput-boolean p3, p0, Lcom/d/a/a/l;->l:Z

    .line 239
    return-void
.end method

.method public static a()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-static {}, Lcom/d/a/a/l;->values()[Lcom/d/a/a/l;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 229
    invoke-virtual {v4}, Lcom/d/a/a/l;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    invoke-virtual {v4}, Lcom/d/a/a/l;->c()I

    move-result v4

    or-int/2addr v0, v4

    .line 228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/d/a/a/l;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/d/a/a/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/l;

    return-object v0
.end method

.method public static values()[Lcom/d/a/a/l;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/d/a/a/l;->n:[Lcom/d/a/a/l;

    invoke-virtual {v0}, [Lcom/d/a/a/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/d/a/a/l;

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/d/a/a/l;->m:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/d/a/a/l;->l:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/d/a/a/l;->m:I

    return v0
.end method
