.class public final enum Lcom/d/a/a/h;
.super Ljava/lang/Enum;
.source "JsonGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/d/a/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/d/a/a/h;

.field public static final enum b:Lcom/d/a/a/h;

.field public static final enum c:Lcom/d/a/a/h;

.field public static final enum d:Lcom/d/a/a/h;

.field public static final enum e:Lcom/d/a/a/h;

.field public static final enum f:Lcom/d/a/a/h;

.field public static final enum g:Lcom/d/a/a/h;

.field public static final enum h:Lcom/d/a/a/h;

.field public static final enum i:Lcom/d/a/a/h;

.field public static final enum j:Lcom/d/a/a/h;

.field private static final synthetic m:[Lcom/d/a/a/h;


# instance fields
.field private final k:Z

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v1, v3, v4}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->a:Lcom/d/a/a/h;

    .line 61
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v1, v4, v4}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->b:Lcom/d/a/a/h;

    .line 74
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "FLUSH_PASSED_TO_STREAM"

    invoke-direct {v0, v1, v5, v4}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->c:Lcom/d/a/a/h;

    .line 87
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v1, v6, v4}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->d:Lcom/d/a/a/h;

    .line 101
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v1, v7, v4}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->e:Lcom/d/a/a/h;

    .line 118
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "WRITE_NUMBERS_AS_STRINGS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->f:Lcom/d/a/a/h;

    .line 130
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "WRITE_BIGDECIMAL_AS_PLAIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->g:Lcom/d/a/a/h;

    .line 147
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "ESCAPE_NON_ASCII"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->h:Lcom/d/a/a/h;

    .line 190
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "STRICT_DUPLICATE_DETECTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->i:Lcom/d/a/a/h;

    .line 212
    new-instance v0, Lcom/d/a/a/h;

    const-string/jumbo v1, "IGNORE_UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/d/a/a/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/d/a/a/h;->j:Lcom/d/a/a/h;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/d/a/a/h;

    sget-object v1, Lcom/d/a/a/h;->a:Lcom/d/a/a/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/d/a/a/h;->b:Lcom/d/a/a/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/d/a/a/h;->c:Lcom/d/a/a/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/d/a/a/h;->d:Lcom/d/a/a/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/d/a/a/h;->e:Lcom/d/a/a/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/d/a/a/h;->f:Lcom/d/a/a/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/d/a/a/h;->g:Lcom/d/a/a/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/d/a/a/h;->h:Lcom/d/a/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/d/a/a/h;->i:Lcom/d/a/a/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/d/a/a/h;->j:Lcom/d/a/a/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/d/a/a/h;->m:[Lcom/d/a/a/h;

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
    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput-boolean p3, p0, Lcom/d/a/a/h;->k:Z

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/d/a/a/h;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/d/a/a/h;->l:I

    .line 236
    return-void
.end method

.method public static a()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-static {}, Lcom/d/a/a/h;->values()[Lcom/d/a/a/h;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 226
    invoke-virtual {v4}, Lcom/d/a/a/h;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    invoke-virtual {v4}, Lcom/d/a/a/h;->c()I

    move-result v4

    or-int/2addr v0, v4

    .line 225
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/d/a/a/h;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/d/a/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/h;

    return-object v0
.end method

.method public static values()[Lcom/d/a/a/h;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/d/a/a/h;->m:[Lcom/d/a/a/h;

    invoke-virtual {v0}, [Lcom/d/a/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/d/a/a/h;

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/d/a/a/h;->l:I

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
    .line 238
    iget-boolean v0, p0, Lcom/d/a/a/h;->k:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/d/a/a/h;->l:I

    return v0
.end method
