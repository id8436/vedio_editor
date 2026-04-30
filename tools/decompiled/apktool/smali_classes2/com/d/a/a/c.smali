.class public final enum Lcom/d/a/a/c;
.super Ljava/lang/Enum;
.source "JsonEncoding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/d/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/d/a/a/c;

.field public static final enum b:Lcom/d/a/a/c;

.field public static final enum c:Lcom/d/a/a/c;

.field public static final enum d:Lcom/d/a/a/c;

.field public static final enum e:Lcom/d/a/a/c;

.field private static final synthetic i:[Lcom/d/a/a/c;


# instance fields
.field protected final f:Ljava/lang/String;

.field protected final g:Z

.field protected final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/d/a/a/c;

    const-string/jumbo v1, "UTF8"

    const-string/jumbo v3, "UTF-8"

    const/16 v5, 0x8

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v0, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    .line 20
    new-instance v3, Lcom/d/a/a/c;

    const-string/jumbo v4, "UTF16_BE"

    const-string/jumbo v6, "UTF-16BE"

    const/16 v8, 0x10

    move v5, v9

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/d/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v3, Lcom/d/a/a/c;->b:Lcom/d/a/a/c;

    .line 21
    new-instance v3, Lcom/d/a/a/c;

    const-string/jumbo v4, "UTF16_LE"

    const-string/jumbo v6, "UTF-16LE"

    const/16 v8, 0x10

    move v5, v10

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/d/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v3, Lcom/d/a/a/c;->c:Lcom/d/a/a/c;

    .line 22
    new-instance v3, Lcom/d/a/a/c;

    const-string/jumbo v4, "UTF32_BE"

    const-string/jumbo v6, "UTF-32BE"

    const/16 v8, 0x20

    move v5, v11

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/d/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v3, Lcom/d/a/a/c;->d:Lcom/d/a/a/c;

    .line 23
    new-instance v3, Lcom/d/a/a/c;

    const-string/jumbo v4, "UTF32_LE"

    const-string/jumbo v6, "UTF-32LE"

    const/16 v8, 0x20

    move v5, v12

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/d/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v3, Lcom/d/a/a/c;->e:Lcom/d/a/a/c;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/d/a/a/c;

    sget-object v1, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/d/a/a/c;->b:Lcom/d/a/a/c;

    aput-object v1, v0, v9

    sget-object v1, Lcom/d/a/a/c;->c:Lcom/d/a/a/c;

    aput-object v1, v0, v10

    sget-object v1, Lcom/d/a/a/c;->d:Lcom/d/a/a/c;

    aput-object v1, v0, v11

    sget-object v1, Lcom/d/a/a/c;->e:Lcom/d/a/a/c;

    aput-object v1, v0, v12

    sput-object v0, Lcom/d/a/a/c;->i:[Lcom/d/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/d/a/a/c;->f:Ljava/lang/String;

    .line 35
    iput-boolean p4, p0, Lcom/d/a/a/c;->g:Z

    .line 36
    iput p5, p0, Lcom/d/a/a/c;->h:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/d/a/a/c;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/d/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/c;

    return-object v0
.end method

.method public static values()[Lcom/d/a/a/c;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/d/a/a/c;->i:[Lcom/d/a/a/c;

    invoke-virtual {v0}, [Lcom/d/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/d/a/a/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/d/a/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/d/a/a/c;->g:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/d/a/a/c;->h:I

    return v0
.end method
