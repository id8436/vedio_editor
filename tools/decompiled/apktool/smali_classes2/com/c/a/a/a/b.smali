.class public final enum Lcom/c/a/a/a/b;
.super Ljava/lang/Enum;
.source "Operator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/c/a/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/a/a/a/b;

.field public static final enum b:Lcom/c/a/a/a/b;

.field public static final enum c:Lcom/c/a/a/a/b;

.field public static final enum d:Lcom/c/a/a/a/b;

.field public static final enum e:Lcom/c/a/a/a/b;

.field public static final enum f:Lcom/c/a/a/a/b;

.field public static final enum g:Lcom/c/a/a/a/b;

.field public static final enum h:Lcom/c/a/a/a/b;

.field private static final synthetic m:[Lcom/c/a/a/a/b;


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/c/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/c/a/a/a/b;

    const-string/jumbo v1, "NUL"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ","

    sget-object v6, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V

    sput-object v0, Lcom/c/a/a/a/b;->a:Lcom/c/a/a/a/b;

    .line 48
    new-instance v3, Lcom/c/a/a/a/b;

    const-string/jumbo v4, "RESERVED"

    const-string/jumbo v6, "+"

    const-string/jumbo v7, ","

    sget-object v9, Lcom/c/a/a/f;->b:Lcom/c/a/a/f;

    move v5, v10

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V

    sput-object v3, Lcom/c/a/a/a/b;->b:Lcom/c/a/a/a/b;

    .line 49
    new-instance v3, Lcom/c/a/a/a/b;

    const-string/jumbo v4, "NAME_LABEL"

    const-string/jumbo v6, "."

    const-string/jumbo v7, "."

    sget-object v9, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    move v5, v11

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V

    sput-object v3, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/b;

    .line 50
    new-instance v3, Lcom/c/a/a/a/b;

    const-string/jumbo v4, "PATH"

    const-string/jumbo v6, "/"

    const-string/jumbo v7, "/"

    sget-object v9, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    move v5, v12

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V

    sput-object v3, Lcom/c/a/a/a/b;->d:Lcom/c/a/a/a/b;

    .line 51
    new-instance v3, Lcom/c/a/a/a/b;

    const-string/jumbo v4, "MATRIX"

    const-string/jumbo v6, ";"

    const-string/jumbo v7, ";"

    sget-object v9, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    move v5, v13

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V

    sput-object v3, Lcom/c/a/a/a/b;->e:Lcom/c/a/a/a/b;

    .line 52
    new-instance v3, Lcom/c/a/a/a/b;

    const-string/jumbo v4, "QUERY"

    const/4 v5, 0x5

    const-string/jumbo v6, "?"

    const-string/jumbo v7, "&"

    sget-object v9, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V

    sput-object v3, Lcom/c/a/a/a/b;->f:Lcom/c/a/a/a/b;

    .line 53
    new-instance v3, Lcom/c/a/a/a/b;

    const-string/jumbo v4, "CONTINUATION"

    const/4 v5, 0x6

    const-string/jumbo v6, "&"

    const-string/jumbo v7, "&"

    sget-object v9, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V

    sput-object v3, Lcom/c/a/a/a/b;->g:Lcom/c/a/a/a/b;

    .line 54
    new-instance v3, Lcom/c/a/a/a/b;

    const-string/jumbo v4, "FRAGMENT"

    const/4 v5, 0x7

    const-string/jumbo v6, "#"

    const-string/jumbo v7, ","

    sget-object v9, Lcom/c/a/a/f;->b:Lcom/c/a/a/f;

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/c/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V

    sput-object v3, Lcom/c/a/a/a/b;->h:Lcom/c/a/a/a/b;

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/c/a/a/a/b;

    sget-object v1, Lcom/c/a/a/a/b;->a:Lcom/c/a/a/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/a/a/a/b;->b:Lcom/c/a/a/a/b;

    aput-object v1, v0, v10

    sget-object v1, Lcom/c/a/a/a/b;->c:Lcom/c/a/a/a/b;

    aput-object v1, v0, v11

    sget-object v1, Lcom/c/a/a/a/b;->d:Lcom/c/a/a/a/b;

    aput-object v1, v0, v12

    sget-object v1, Lcom/c/a/a/a/b;->e:Lcom/c/a/a/a/b;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/c/a/a/a/b;->f:Lcom/c/a/a/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/c/a/a/a/b;->g:Lcom/c/a/a/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/c/a/a/a/b;->h:Lcom/c/a/a/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/a/a/a/b;->m:[Lcom/c/a/a/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/c/a/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/c/a/a/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    iput-object v0, p0, Lcom/c/a/a/a/b;->l:Lcom/c/a/a/f;

    .line 86
    iput-object p3, p0, Lcom/c/a/a/a/b;->i:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/c/a/a/a/b;->j:Ljava/lang/String;

    .line 88
    iput-boolean p5, p0, Lcom/c/a/a/a/b;->k:Z

    .line 89
    iput-object p6, p0, Lcom/c/a/a/a/b;->l:Lcom/c/a/a/f;

    .line 90
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/c/a/a/a/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcom/c/a/a/a/b;->values()[Lcom/c/a/a/a/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 163
    invoke-virtual {v0}, Lcom/c/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    :goto_1
    return-object v0

    .line 167
    :cond_0
    const-string/jumbo v0, "!"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid operator."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 172
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/a/a/b;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/c/a/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/b;

    return-object v0
.end method

.method public static values()[Lcom/c/a/a/a/b;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/c/a/a/a/b;->m:[Lcom/c/a/a/a/b;

    invoke-virtual {v0}, [Lcom/c/a/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/c/a/a/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/c/a/a/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/c/a/a/f;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/c/a/a/a/b;->l:Lcom/c/a/a/f;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/c/a/a/a/b;->k:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, ","

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/c/a/a/a/b;->k:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/c/a/a/a/b;->i:Ljava/lang/String;

    return-object v0
.end method
